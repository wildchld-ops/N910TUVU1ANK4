.class public Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;
.super Ljava/lang/Object;
.source "DefaultSoundEffectController.java"

# interfaces
.implements Lcom/diotek/ime/framework/effect/SoundEffectController;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mLastStreamId:I

.field private mSilentMode:Z

.field private mSoundEffectOn:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolArray:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mLastStreamId:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method private initSounds()V
    .locals 7

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_0

    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    if-nez v2, :cond_1

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f06000c

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f06000a

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f06000b

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->updateRingerMode()V

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


# virtual methods
.method public initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->initSounds()V

    return-void
.end method

.method public isHeadsetConnected()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

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

    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundEffectOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->updateRingerMode()V

    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSilentMode:Z

    if-nez v0, :cond_1

    const/4 v7, 0x5

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f000000

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mLastStreamId:I

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
    .locals 0
    .param p1    # I
    .param p2    # Z

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public setSoundEffectOn(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundEffectOn:Z

    return-void
.end method

.method public updateKeyTonesFromSystemSettings()V
    .locals 0

    return-void
.end method

.method public updateRingerMode()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSilentMode:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
