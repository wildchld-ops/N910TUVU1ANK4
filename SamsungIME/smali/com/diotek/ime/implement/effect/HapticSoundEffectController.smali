.class public Lcom/diotek/ime/implement/effect/HapticSoundEffectController;
.super Ljava/lang/Object;
.source "HapticSoundEffectController.java"

# interfaces
.implements Lcom/diotek/ime/framework/effect/SoundEffectController;


# static fields
.field private static final TEST_FUNCTION_PRESS:I = 0x3

.field private static final TEST_FUNCTION_RELEASE:I = 0x4

.field private static final TEST_NUMBER_PRESS:I = 0x5

.field private static final TEST_NUMBER_RELEASE:I = 0x6

.field private static final TEST_QWERTY_PRESS:I = 0x1

.field private static final TEST_QWERTY_RELEASE:I = 0x2

.field private static final TEST_SPACEBAR_PRESS:I = 0x7

.field private static final TEST_SPACEBAR_RELEASE:I = 0x8


# instance fields
.field private final SECTION_FUNCTION:I

.field private final SECTION_NUMBER:I

.field private final SECTION_QWERTY:I

.field private final SECTION_SPACEBAR:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mLastStreamId:I

.field private mSilentMode:Z

.field private mSoundEffectOn:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolArray:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mLastStreamId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->SECTION_QWERTY:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->SECTION_FUNCTION:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->SECTION_NUMBER:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->SECTION_SPACEBAR:I

    iput-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    return-void
.end method

.method private initSounds()V
    .locals 7

    const/4 v5, 0x4

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_0

    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-direct {v2, v5, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    if-nez v2, :cond_1

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f060004

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f060005

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v5, 0x7f060000

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f060001

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f060002

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f060003

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f06000d

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f06000e

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->updateRingerMode()V

    return-void

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key sound load fail!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isFunctionKey(I)Z
    .locals 5
    .param p1    # I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    if-nez v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    move v2, v3

    :goto_0
    :sswitch_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_1

    move v2, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3ee -> :sswitch_0
        -0x3ed -> :sswitch_0
        -0x3ec -> :sswitch_0
        -0x3ea -> :sswitch_0
        -0x3e9 -> :sswitch_0
        -0x3e8 -> :sswitch_0
        -0x1f4 -> :sswitch_0
        -0x19a -> :sswitch_0
        -0x193 -> :sswitch_0
        -0x192 -> :sswitch_0
        -0x191 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x136 -> :sswitch_0
        -0xe5 -> :sswitch_0
        -0xe4 -> :sswitch_0
        -0xe2 -> :sswitch_0
        -0xe1 -> :sswitch_0
        -0xe0 -> :sswitch_0
        -0xd1 -> :sswitch_0
        -0xd0 -> :sswitch_0
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x85 -> :sswitch_0
        -0x84 -> :sswitch_0
        -0x83 -> :sswitch_0
        -0x80 -> :sswitch_0
        -0x7f -> :sswitch_0
        -0x7d -> :sswitch_0
        -0x79 -> :sswitch_0
        -0x78 -> :sswitch_0
        -0x77 -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x3e -> :sswitch_0
        -0x3c -> :sswitch_0
        -0x3b -> :sswitch_0
        -0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0x2f -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3ee -> :sswitch_0
        -0x3ed -> :sswitch_0
        -0x3ec -> :sswitch_0
        -0x3ea -> :sswitch_0
        -0x3e9 -> :sswitch_0
        -0x3e8 -> :sswitch_0
        -0x1f4 -> :sswitch_0
        -0x19a -> :sswitch_0
        -0x193 -> :sswitch_0
        -0x192 -> :sswitch_0
        -0x191 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x136 -> :sswitch_0
        -0xe5 -> :sswitch_0
        -0xe4 -> :sswitch_0
        -0xe2 -> :sswitch_0
        -0xe1 -> :sswitch_0
        -0xe0 -> :sswitch_0
        -0xd1 -> :sswitch_0
        -0xd0 -> :sswitch_0
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x85 -> :sswitch_0
        -0x84 -> :sswitch_0
        -0x83 -> :sswitch_0
        -0x80 -> :sswitch_0
        -0x7f -> :sswitch_0
        -0x7d -> :sswitch_0
        -0x79 -> :sswitch_0
        -0x78 -> :sswitch_0
        -0x77 -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x3e -> :sswitch_0
        -0x3c -> :sswitch_0
        -0x3b -> :sswitch_0
        -0x5 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getKeySection(I)I
    .locals 1
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->isFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3eb -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
    .end sparse-switch
.end method

.method public initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->initSounds()V

    return-void
.end method

.method public isHeadsetConnected()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public playKeySound(I)V
    .locals 8
    .param p1    # I

    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundEffectOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->updateRingerMode()V

    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSilentMode:Z

    if-nez v0, :cond_1

    const/4 v7, 0x5

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f000000

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mLastStreamId:I

    :cond_1
    return-void

    :sswitch_0
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_1
    const/16 v7, 0x8

    goto :goto_0

    :sswitch_2
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public playKeySound(IZ)V
    .locals 9
    .param p1    # I
    .param p2    # Z

    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundEffectOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->updateRingerMode()V

    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSilentMode:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->getKeySection(I)I

    move-result v7

    if-nez p2, :cond_2

    packed-switch v7, :pswitch_data_0

    const/4 v8, 0x1

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f000000

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mLastStreamId:I

    :cond_1
    return-void

    :pswitch_0
    const/4 v8, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v8, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v8, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v8, 0x7

    goto :goto_0

    :cond_2
    packed-switch v7, :pswitch_data_1

    const/4 v8, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v8, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v8, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v8, 0x6

    goto :goto_0

    :pswitch_7
    const/16 v8, 0x8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public setSoundEffectOn(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundEffectOn:Z

    return-void
.end method

.method public updateKeyTonesFromSystemSettings()V
    .locals 0

    return-void
.end method

.method public updateRingerMode()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSilentMode:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
