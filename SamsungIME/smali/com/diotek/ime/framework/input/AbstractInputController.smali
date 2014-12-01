.class public abstract Lcom/diotek/ime/framework/input/AbstractInputController;
.super Ljava/lang/Object;
.source "AbstractInputController.java"

# interfaces
.implements Lcom/diotek/ime/framework/input/InputController;


# instance fields
.field private final QWERTY_NUMBER_WITH_SYMBOL_EXTRALABEL_MAP:[I

.field private availableLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private installableLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccentCharKey:I

.field private mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

.field private mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

.field protected mBidiFormatter:Landroid/text/BidiFormatter;

.field protected mChineseCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentHWInputModule:Lcom/diotek/ime/framework/input/InputModule;

.field protected mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

.field protected mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field protected mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

.field protected mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

.field private mIsAccentCombinationMode:Z

.field private mIsAcuteAccentPressed:Z

.field private mIsAcuteAccentSplit:Z

.field private mIsAcuteAccentState:Z

.field private mIsHwKeyboardCtrlRightPressed:Z

.field protected mIsKorMode:Z

.field protected mIsSwiftKeyMode:Z

.field protected mIsTabletMode:Z

.field private mLastKeyTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field protected mPreviousTextLength:I

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field private mShortCutKeyManager:Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;

.field private mTapCount:I

.field protected mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBidiFormatter:Landroid/text/BidiFormatter;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentHWInputModule:Lcom/diotek/ime/framework/input/InputModule;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPreviousTextLength:I

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    const/16 v0, -0xff

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAccentCombinationMode:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentState:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentSplit:Z

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShortCutKeyManager:Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->QWERTY_NUMBER_WITH_SYMBOL_EXTRALABEL_MAP:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastTapTime:J

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBidiFormatter:Landroid/text/BidiFormatter;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->newInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getVibrateController()Lcom/diotek/ime/framework/effect/VibrateController;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setVibrateController(Lcom/diotek/ime/framework/effect/VibrateController;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getSoundEffectController()Lcom/diotek/ime/framework/effect/SoundEffectController;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setSoundEffectController(Lcom/diotek/ime/framework/effect/SoundEffectController;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    new-instance v0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;-><init>(Lcom/diotek/ime/framework/common/InputManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-static {}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;->getInstance()Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShortCutKeyManager:Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;

    return-void

    :array_0
    .array-data 4
        0x29
        0x2d
        0x40
        0x23
        0x2f
        0x25
        0x5e
        0x26
        0x2a
        0x28
    .end array-data
.end method

.method private filteringLanguageID(I)I
    .locals 1

    move v0, p1

    sparse-switch p1, :sswitch_data_0

    move v0, p1

    :goto_0
    return v0

    :sswitch_0
    const/high16 v0, 0x656e0000

    goto :goto_0

    :sswitch_1
    const/high16 v0, 0x66720000

    goto :goto_0

    :sswitch_2
    const/high16 v0, 0x65730000

    goto :goto_0

    :sswitch_3
    const/high16 v0, 0x70740000

    goto :goto_0

    :sswitch_4
    const/high16 v0, 0x68650000

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x656e0000 -> :sswitch_0
        0x656e4742 -> :sswitch_0
        0x656e5553 -> :sswitch_0
        0x65730000 -> :sswitch_2
        0x65734553 -> :sswitch_2
        0x65735553 -> :sswitch_2
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x69640000 -> :sswitch_0
        0x69770000 -> :sswitch_4
        0x6d730000 -> :sswitch_0
        0x70740000 -> :sswitch_3
        0x70744252 -> :sswitch_3
        0x70745054 -> :sswitch_3
    .end sparse-switch
.end method

.method private isNoUpperCaseCharacter(II)Z
    .locals 6

    const/16 v5, 0xe8

    const/16 v4, 0xe0

    const/16 v3, 0xe9

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :sswitch_0
    const-string v2, "CH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_0

    goto :goto_0

    :cond_2
    const/16 v2, 0xb5

    if-ne p2, v2, :cond_0

    goto :goto_0

    :sswitch_1
    if-eq p2, v3, :cond_1

    const/16 v2, 0xe7

    if-ne p2, v2, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v2, "CH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq p2, v5, :cond_1

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_0

    goto :goto_0

    :cond_3
    const/16 v2, 0x3bc

    if-ne p2, v2, :cond_0

    goto :goto_0

    :sswitch_3
    if-ne p2, v3, :cond_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64650000 -> :sswitch_2
        0x66720000 -> :sswitch_0
        0x66724341 -> :sswitch_0
        0x66724652 -> :sswitch_0
        0x69740000 -> :sswitch_1
        0x74720000 -> :sswitch_3
    .end sparse-switch
.end method

.method private onHwPhonepadKeyInputProcess(I)Z
    .locals 9

    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x7

    if-lt p1, v5, :cond_4

    const/16 v5, 0x10

    if-gt p1, v5, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v5, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getPhonepadCharacters(I)[I

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v5, v2

    if-lez v5, :cond_6

    iget-wide v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastTapTime:J

    const-wide/16 v7, 0x5dc

    add-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-gez v5, :cond_2

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    if-ne p1, v5, :cond_2

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    add-int/lit8 v5, v5, 0x1

    array-length v6, v2

    rem-int/2addr v5, v6

    iput v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    :goto_0
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastTapTime:J

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    array-length v6, v2

    if-lt v5, v6, :cond_0

    iput v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_3

    array-length v5, v2

    if-le v5, v3, :cond_1

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v4}, Lcom/diotek/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v4, v2, v4

    invoke-interface {v5, v4, v2}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    :goto_1
    return v3

    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->resetMultitapHwPhonepad()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/diotek/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    aget v5, v2, v5

    invoke-interface {v4, v5, v2}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_1

    :cond_4
    const/16 v5, 0x12

    if-ne p1, v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v5, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getPhonepadCharacters(I)[I

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v5, v2

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v4}, Lcom/diotek/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    aget v4, v2, v4

    invoke-virtual {p0, v4, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->resetMultitapHwPhonepad()V

    goto :goto_1

    :cond_5
    const/16 v5, 0x17

    if-ne p1, v5, :cond_6

    new-array v5, v3, [I

    aput v6, v5, v4

    invoke-virtual {p0, v6, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_1
.end method

.method private onHwPhonepadNumberInputProcess(I)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-lt p1, v3, :cond_2

    const/16 v3, 0x10

    if-gt p1, v3, :cond_2

    add-int/lit8 v3, p1, -0x7

    add-int/lit8 p1, v3, 0x30

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_0
    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onHwPhonepadSymbolInputProcess(I)Z
    .locals 10

    const/16 v9, 0x12

    const/16 v8, 0x10

    const/4 v4, 0x0

    const/4 v7, 0x7

    const/4 v3, 0x1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    add-int/lit8 v1, p1, -0x8

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SYMBOLS_PAGE"

    invoke-interface {v5, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_8

    if-lt p1, v7, :cond_0

    if-le p1, v8, :cond_1

    :cond_0
    if-ne p1, v9, :cond_2

    :cond_1
    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    const-string v5, ","

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const/16 v5, 0x15

    if-ne p1, v5, :cond_9

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->prevSymbolsPage()V

    :goto_1
    return v3

    :cond_3
    if-ne v1, v7, :cond_4

    const-string v5, ";"

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const/16 v5, 0x9

    if-ne v1, v5, :cond_5

    const/16 v5, 0x11

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyUpHwPhonepad(I)Z

    goto :goto_0

    :cond_5
    if-ne p1, v7, :cond_6

    sget-object v5, Lcom/diotek/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v5, v5, v2

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    if-ne p1, v9, :cond_7

    sget-object v5, Lcom/diotek/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v5, v5, v2

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    sget-object v5, Lcom/diotek/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v5, v5, v2

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    const/16 v5, 0x8

    if-lt p1, v5, :cond_2

    if-gt p1, v8, :cond_2

    sget-object v4, Lcom/diotek/ime/framework/common/Constant;->SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    const/16 v5, 0x16

    if-ne p1, v5, :cond_a

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->nextSymbolsPage()V

    goto :goto_1

    :cond_a
    move v3, v4

    goto :goto_1
.end method

.method private onKeyDownContinue(ILandroid/view/KeyEvent;I)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v0, -0xff

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_3

    move v1, v4

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v2, v4

    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    invoke-virtual {v5, p1, v6, v2}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    new-array v5, v4, [I

    aput v0, v5, v3

    invoke-virtual {p0, v0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_2
    return v4

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0, p2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onHwKeyboardKeyInputProcess(SLandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_2
.end method

.method private onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v4, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    :pswitch_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x7

    if-lt p1, v4, :cond_3

    const/16 v4, 0x10

    if-le p1, v4, :cond_1

    :cond_3
    packed-switch p1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_1
    move v2, v3

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v1

    const/16 v4, -0xa2

    if-eq v1, v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v4, v2}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private onKeyUpHwPhonepad(I)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v2

    const/16 v5, 0x11

    if-ne p1, v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isNumberOnlyEditor()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getSoftFuncKbdIndex()I

    move-result v0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isNumberSymbolOnlyEditor()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->processFunctionKey(I)V

    :cond_1
    :goto_1
    move v5, v6

    :goto_2
    return v5

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v0, v5

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->showSoftFuncKbd()V

    goto :goto_1

    :cond_5
    const/16 v5, 0x12

    if-ne p1, v5, :cond_7

    const/16 v5, -0xa2

    if-ne v3, v5, :cond_6

    if-nez v2, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v5, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getPhonepadCharacters(I)[I

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v5, v1

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    aget v5, v1, v7

    invoke-virtual {p0, v5, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->resetMultitapHwPhonepad()V

    move v5, v6

    goto :goto_2

    :cond_7
    packed-switch v3, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onHwPhonepadKeyInputProcess(I)Z

    move-result v5

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onHwPhonepadNumberInputProcess(I)Z

    move-result v5

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onHwPhonepadSymbolInputProcess(I)Z

    move-result v5

    goto :goto_2

    :pswitch_data_0
    .packed-switch -0xa2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetMultitapHwPhonepad()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTapCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastTapTime:J

    return-void
.end method


# virtual methods
.method public VOHWRInitByCursorMove(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->VOHWRInitByCursorMove(I)V

    return-void
.end method

.method public VOHWRSetChangeMode(II)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->VOHWRSetChangeMode(II)V

    return-void
.end method

.method public VOHWRSetInsertMode(II)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->VOHWRSetInsertMode(II)V

    return-void
.end method

.method public backupFullText()V
    .locals 3

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    goto :goto_0
.end method

.method public buildSuggestions()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->buildSuggestions()V

    return-void
.end method

.method public cancelPreviewTrace()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->cancelPreviewTrace()V

    :cond_0
    return-void
.end method

.method protected changeInputLanguageTo(I)V
    .locals 0

    return-void
.end method

.method public clearAction()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->clearAction()V

    :cond_0
    return-void
.end method

.method public clearBackupFullText()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    return-void
.end method

.method public closeInputModule()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->closing()V

    return-void
.end method

.method public commitAndResetForHwr()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->inputDisplayedRecognitionString()V

    :cond_0
    return-void
.end method

.method protected final createInputEngineArray(I)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->createInputEngineArray(I)Z

    move-result v0

    return v0
.end method

.method protected final createInputModuleArray(I)Z
    .locals 2

    if-gtz p1, :cond_1

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "Module array creating fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-array v0, p1, [Lcom/diotek/ime/framework/input/InputModule;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteAllTextInEditor()V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    const v1, 0x102001f

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public finishAndInitByCursorMove()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->finishAndInitByCursorMove()V

    return-void
.end method

.method public finishComposing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_0
    return-void
.end method

.method public getAcuteAccentPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    return v0
.end method

.method public getAcuteAccentSplitState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentSplit:Z

    return v0
.end method

.method public getAudioAndHapticVibratorFeedback()Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    return-object v0
.end method

.method public getChineseSpellText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getChineseWordCandidate(Ljava/util/ArrayList;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getChineseWordCandidate(Ljava/util/ArrayList;I)I

    move-result v0

    return v0
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getContextAwareUniqueID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getCurrentInputEngineIndex(III)I
.end method

.method protected abstract getCurrentInputModuleIndex(III)I
.end method

.method protected abstract getDWPEngineIndex()I
.end method

.method public getDeleteCount()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getDeleteCount()I

    move-result v0

    return v0
.end method

.method protected abstract getHWInputEngineIndex(I)I
.end method

.method protected abstract getHWInputModuleIndex(I)I
.end method

.method public getIndexOfInputBuffer()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getIndexOfInputBuffer()I

    move-result v0

    return v0
.end method

.method public getKeyPositionByTap(II)I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getKeyPositionByTap(II)I

    move-result v0

    return v0
.end method

.method public getKeyPositions([Landroid/graphics/Rect;)I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getKeyPositions([Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public getPosNextText()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getPosNextText()I

    move-result v0

    return v0
.end method

.method public getPreviousTextLength()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPreviousTextLength:I

    return v0
.end method

.method public abstract getSoundEffectController()Lcom/diotek/ime/framework/effect/SoundEffectController;
.end method

.method public getStateCandidate()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getStateCandidate()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionActiveIndex()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v0

    return v0
.end method

.method public abstract getVibrateController()Lcom/diotek/ime/framework/effect/VibrateController;
.end method

.method protected abstract getVietValidVowelsString()Ljava/lang/String;
.end method

.method public getWordToAddMyWordList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getWordToAddMyWordList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXt9Version()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9Version()I

    move-result v0

    return v0
.end method

.method protected handleIndianLangToggle()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    return-void
.end method

.method protected handleIndianVowelRowState()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianVowelRowState()V

    return-void
.end method

.method protected handleShiftLong()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v2, -0xff

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public hasCurrentSequence()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->hasCurrentSequence()Z

    move-result v0

    return v0
.end method

.method public hasKeyATInCurrentSequence()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->hasKeyATInCurrentSequence()Z

    move-result v0

    return v0
.end method

.method public hasWWWdotInCurrentSequence()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->hasWWWdotInCurrentSequence()Z

    move-result v0

    return v0
.end method

.method public initAndClearComposingText()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/input/InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public initCandidates(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->initCandidates(Ljava/util/ArrayList;)V

    return-void
.end method

.method public initComposingText()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->initComposingBuffer()V

    :cond_0
    return-void
.end method

.method public initDeleteCount()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->initDeleteCount()V

    return-void
.end method

.method public initHwrPanel(Landroid/widget/FrameLayout;I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->initHwrPanel(Landroid/widget/FrameLayout;I)V

    return-void
.end method

.method protected abstract initInputEngine()V
.end method

.method public initInputEngineAndComposing(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/input/InputModule;->initInputEngineAndComposing(IIII)V

    return-void
.end method

.method protected abstract initInputModule()V
.end method

.method public final initialize()V
    .locals 1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->initInputModule()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->initInputEngine()V

    invoke-static {}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getInstance()Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->getInstance()Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public isAcuteAccentState()Z
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentState:Z

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public isAvailableLanguage(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->filteringLanguageID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method protected abstract isFunctionKey(I)Z
.end method

.method public isHWRAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isIgnoreKey(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x103 -> :sswitch_0
        -0x101 -> :sswitch_0
        -0x100 -> :sswitch_0
        -0xff -> :sswitch_0
        -0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public isInstallableLanguage(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->filteringLanguageID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public isLastActionIsTraceOrPick()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->isLastActionIsTraceOrPick()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiTapRnunnig()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->isMultiTapRnunnig()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProdictionWord()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->isPredictionWord()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectedLanguage(Lcom/diotek/ime/framework/common/Language;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "0x%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->isSwiftPhonepadInput()Z

    move-result v0

    return v0
.end method

.method public isUsingDWPEngine()Z
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentEngineIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getDWPEngineIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVietValidVowels(I)Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getVietValidVowelsString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public learnSequence()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v0, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v1, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->learnSequence(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    :cond_1
    return-void
.end method

.method public learnTempSuggestion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->learnTempSuggestion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onChangeHwkeyboardLanguage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->setInputLanguage(Lcom/diotek/ime/framework/common/Language;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->setInputLanguage(Lcom/diotek/ime/framework/common/Language;)V

    return-void
.end method

.method public onChangeInputLanuage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onChangeHwkeyboardLanguage(Lcom/diotek/ime/framework/common/Language;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->clearTypoList()V

    return-void
.end method

.method public onHwKeyboardKeyInputProcess(SLandroid/view/KeyEvent;)Z
    .locals 9

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    const/16 v6, -0xff

    if-eq p1, v6, :cond_b

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v6}, Lcom/diotek/ime/framework/input/InputModule;->inputDisplayedRecognitionString()V

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x6b6f0000

    if-eq v4, v6, :cond_0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onLongPressHwKey(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    invoke-virtual {v6, p1}, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->isAccentCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    const/high16 v6, 0x69730000

    if-ne v4, v6, :cond_1

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    const/16 v7, 0x301

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAccentCombinationMode:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    if-eq v6, p1, :cond_4

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    invoke-virtual {v6, v7, p1}, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->getCombinedCharacter(II)I

    move-result v6

    int-to-short v1, v6

    const/16 v6, -0xff

    if-eq v1, v6, :cond_3

    if-eqz v3, :cond_3

    const/high16 v6, 0x69730000

    if-eq v4, v6, :cond_2

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    const/16 v7, 0x301

    if-eq v6, v7, :cond_2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_2
    move p1, v1

    :cond_3
    const/16 v6, -0xff

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    :cond_4
    if-eqz v3, :cond_7

    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v7, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPreviousTextLength:I

    :cond_5
    const/high16 v6, 0x6b6f0000

    if-ne v4, v6, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentHWInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p1, v7, v8

    invoke-interface {v6, p1, v7}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKeyForHwKeyboard(I[I)V

    :goto_2
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    :cond_6
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentHWInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p1, v7, v8

    invoke-interface {v6, p1, v7}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    goto :goto_2

    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0, v4, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->isNoUpperCaseCharacter(II)Z

    move-result v6

    if-nez v6, :cond_a

    int-to-char v6, p1

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    int-to-char v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_b
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->isEmptyKey()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->onHwrPanelLongPressed(ILjava/lang/String;)V

    return-void
.end method

.method public onHwrTouchCancel(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/input/InputModule;->onHwrTouchCancel(IIJ)Z

    move-result v0

    return v0
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/input/InputModule;->onHwrTouchDown(IIJ)Z

    move-result v0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/input/InputModule;->onHwrTouchMove(IIJ)Z

    move-result v0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/input/InputModule;->onHwrTouchUp(IIJ)Z

    move-result v0

    return v0
.end method

.method public onKey(I[I)V
    .locals 13

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->isAcuteAccentState()Z

    move-result v2

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_TRACE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isEnableTrace()Z

    move-result v3

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v9}, Lcom/diotek/ime/framework/input/InputModule;->cancelUpdateSequenceAndSuggestionDelayForRecapture()V

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->isFunctionKey(I)Z

    move-result v9

    if-eqz v9, :cond_b

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v9

    const/4 v10, 0x2

    if-gt v9, v10, :cond_b

    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v9}, Lcom/diotek/ime/framework/input/InputModule;->release()V

    :cond_2
    const/16 v9, -0x3c

    if-eq p1, v9, :cond_8

    const/16 v9, -0x1f4

    if-eq p1, v9, :cond_8

    const/16 v9, -0x190

    if-eq p1, v9, :cond_8

    const/16 v9, -0x19a

    if-eq p1, v9, :cond_8

    const/16 v9, -0x3e

    if-eq p1, v9, :cond_8

    const/16 v9, -0x66

    if-eq p1, v9, :cond_8

    const/16 v9, -0x142

    if-eq p1, v9, :cond_8

    const/16 v9, -0x143

    if-eq p1, v9, :cond_8

    const/16 v9, -0x141

    if-eq p1, v9, :cond_8

    const/16 v9, -0x7a

    if-eq p1, v9, :cond_8

    const/16 v9, -0x7c

    if-eq p1, v9, :cond_8

    const/16 v9, -0x7f

    if-eq p1, v9, :cond_8

    const/16 v9, -0x137

    if-eq p1, v9, :cond_8

    const/16 v9, -0x3e8

    if-eq p1, v9, :cond_8

    const/16 v9, -0x3e9

    if-eq p1, v9, :cond_8

    const/16 v9, -0x3ea

    if-eq p1, v9, :cond_8

    const/16 v9, -0x3ee

    if-eq p1, v9, :cond_8

    const/16 v9, -0x3ed

    if-eq p1, v9, :cond_8

    const/16 v9, -0x105

    if-eq p1, v9, :cond_8

    const/16 v9, -0x106

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x20

    if-eq p1, v9, :cond_8

    const/16 v9, -0x89

    if-eq p1, v9, :cond_8

    const/16 v9, -0x75

    if-ne p1, v9, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v9

    const/16 v10, -0x89

    if-eq v9, v10, :cond_8

    :cond_3
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v9}, Lcom/diotek/ime/framework/input/InputModule;->endMultitapTimer()V

    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->processFunctionKey(I)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->isAcuteAccentState()Z

    move-result v9

    if-eq v2, v9, :cond_1d

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->isAcuteAccentState()Z

    move-result v10

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->updateAcuteAccentState(Z)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_9

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_9
    const/16 v9, -0x66

    if-eq p1, v9, :cond_4

    const/16 v9, -0x142

    if-eq p1, v9, :cond_4

    const/16 v9, -0x143

    if-eq p1, v9, :cond_4

    const/16 v9, -0x141

    if-eq p1, v9, :cond_4

    const/16 v9, -0x89

    if-eq p1, v9, :cond_4

    const/16 v9, -0x75

    if-ne p1, v9, :cond_a

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v9

    const/16 v10, -0x89

    if-eq v9, v10, :cond_4

    :cond_a
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v9}, Lcom/diotek/ime/framework/input/InputModule;->endMultitapTimer()V

    goto :goto_1

    :cond_b
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->isIgnoreKey(I)Z

    move-result v9

    if-eqz v9, :cond_11

    const/16 v9, -0x101

    if-ne p1, v9, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, -0x5

    if-ne p1, v9, :cond_c

    iget-wide v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    const-wide/16 v11, 0x12c

    add-long/2addr v9, v11

    cmp-long v9, v7, v9

    if-lez v9, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->initDeleteCount()V

    :cond_d
    iput-wide v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    iget v9, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v9, :cond_10

    iget v9, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v9, :cond_10

    const-string v9, "com.android.mms"

    iget-object v10, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_e
    const/4 v9, -0x5

    if-ne p1, v9, :cond_f

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v10, 0x43

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_2

    :cond_f
    const/16 v9, 0xa

    if-ne p1, v9, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v10, 0x42

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_2

    :cond_10
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v9, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->backupFullText()V

    goto/16 :goto_2

    :cond_11
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShortCutKeyManager:Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;

    invoke-virtual {v9, p1}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyManager;->getShortCutKey(I)I

    move-result v6

    const/4 v0, 0x0

    const/16 v9, -0xff

    if-eq v6, v9, :cond_12

    move p1, v6

    :cond_12
    const/16 v9, 0x61

    if-lt p1, v9, :cond_13

    const/16 v9, 0x7a

    if-gt p1, v9, :cond_13

    add-int/lit8 v0, p1, -0x44

    :goto_4
    const/16 v9, 0x7000

    invoke-virtual {p0, v0, v9}, Lcom/diotek/ime/framework/input/AbstractInputController;->sendDownUpKeyEvent(II)V

    goto/16 :goto_3

    :cond_13
    const/16 v9, 0x30

    if-lt p1, v9, :cond_14

    const/16 v9, 0x39

    if-gt p1, v9, :cond_14

    add-int/lit8 v0, p1, -0x2a

    goto :goto_4

    :cond_14
    const/16 v9, 0xa

    if-ne p1, v9, :cond_15

    const/16 v0, 0x42

    goto :goto_4

    :cond_15
    move v0, p1

    goto :goto_4

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, -0x5

    if-eq p1, v9, :cond_17

    const/16 v9, -0x3eb

    if-ne p1, v9, :cond_18

    :cond_17
    iget-wide v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    const-wide/16 v11, 0x12c

    add-long/2addr v9, v11

    cmp-long v9, v7, v9

    if-lez v9, :cond_19

    :cond_18
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->initDeleteCount()V

    :cond_19
    iput-wide v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget v9, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v9, :cond_1c

    iget v9, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v9, :cond_1c

    const-string v9, "com.android.mms"

    iget-object v10, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    :cond_1a
    const/4 v9, -0x5

    if-ne p1, v9, :cond_1b

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v10, 0x43

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_2

    :cond_1b
    const/16 v9, 0xa

    if-ne p1, v9, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v10, 0x42

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_2

    :cond_1c
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v9, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->backupFullText()V

    goto/16 :goto_2

    :cond_1d
    if-eqz v2, :cond_6

    const/16 v9, -0x190

    if-eq p1, v9, :cond_6

    const/16 v9, -0x19a

    if-eq p1, v9, :cond_6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getAcuteAccentPressed()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->updateAcuteAccentState(Z)V

    goto/16 :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v13, "INPUT_LANGUAGE"

    const v14, 0x656e4742

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    const/16 v4, -0xff

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-lez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHwUmlautPopupShown()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    const/4 v6, 0x0

    if-eqz v10, :cond_1

    iget v12, v10, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v12, 0xf

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_2
    if-eqz v10, :cond_4

    const-string v12, "com.sec.android.app.popupcalculator"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "com.sec.android.app.videoplayer"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_5
    const/4 v12, 0x3

    if-eq v6, v12, :cond_6

    const/4 v12, 0x2

    if-ne v6, v12, :cond_7

    :cond_6
    const-string v12, "ro.product.name"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ks02"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x0

    goto :goto_0

    :cond_7
    const/16 v12, 0x3c

    move/from16 v0, p1

    if-ne v0, v12, :cond_b

    const-string v12, "BR"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/high16 v12, 0x70740000

    if-eq v11, v12, :cond_8

    const v12, 0x70744252

    if-ne v11, v12, :cond_b

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->setClearRightShiftPressed()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v7, 0x33

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0x2d

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v7, v13, v14}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onHwKeyboardKeyInputProcess(SLandroid/view/KeyEvent;)Z

    move-result v12

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setHardwareQwertyKeyInput(Z)V

    const/16 v12, 0x3c

    move/from16 v0, p1

    if-eq v0, v12, :cond_c

    const/16 v12, 0x3b

    move/from16 v0, p1

    if-eq v0, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    :cond_c
    sparse-switch p1, :sswitch_data_0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v12, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setHardwareQwertyKeyInput(Z)V

    :cond_e
    :goto_2
    :sswitch_1
    const/4 v12, 0x0

    goto/16 :goto_0

    :sswitch_2
    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    const/4 v4, -0x5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v4, v13, v14

    invoke-interface {v12, v4, v13}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    :cond_f
    const/4 v12, 0x1

    goto/16 :goto_0

    :sswitch_3
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->toggleLanguage(Z)V

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    goto :goto_2

    :sswitch_4
    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v12, :cond_11

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    :cond_13
    const/4 v12, 0x1

    goto/16 :goto_0

    :sswitch_5
    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/16 v13, 0x20

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x20

    aput v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v12

    if-eqz v12, :cond_18

    const/4 v12, 0x1

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->toggleLanguage(Z)V

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-nez v12, :cond_1a

    if-eqz v10, :cond_1e

    const-string v12, "com.android.browser"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_19

    const-string v12, "com.sec.android.app.sbrowser"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_19

    const-string v12, "mobi.mgeek.TunnyBrowser"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v12

    if-eqz v12, :cond_1e

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v12, :cond_1b

    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    if-eqz v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_1c
    const-string v12, " "

    const/4 v13, 0x1

    invoke-interface {v8, v12, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_1d
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-nez v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    goto/16 :goto_2

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v12

    if-nez v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v12

    if-eqz v12, :cond_20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    :cond_1f
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    goto :goto_3

    :sswitch_8
    const/high16 v12, 0x6c740000

    if-ne v11, v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->toggleAltGrLt()V

    goto/16 :goto_2

    :sswitch_9
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHanjaEnable()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->SearchHanja()V

    goto/16 :goto_2

    :sswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_21

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, 0x5c

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_23

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_24

    :cond_23
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    :cond_24
    const/16 v12, -0x3ed

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3ed

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_25

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, 0x5d

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_27

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    :cond_28
    const/16 v12, -0x3ee

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3ee

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_29

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, 0x7a

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->startSuggestionDelay()V

    const/16 v12, -0x105

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x105

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_2c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-eqz v12, :cond_2c

    const/16 v12, -0x3e9

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3e9

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z

    move-result v12

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_2e

    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, 0x7b

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_2f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->startSuggestionDelay()V

    const/16 v12, -0x106

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x106

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_30

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-eqz v12, :cond_30

    const/16 v12, -0x3ea

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3ea

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z

    move-result v12

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v12

    if-eqz v12, :cond_35

    add-int/lit8 v9, p1, -0x8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaCandidate()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_32

    :cond_31
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    :cond_32
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v5

    if-nez v5, :cond_33

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    :cond_33
    const/4 v12, -0x1

    if-ge v12, v9, :cond_34

    if-ge v9, v5, :cond_34

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_34

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v13, v9, v12}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    :cond_34
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_35
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_f
        0x8 -> :sswitch_f
        0x9 -> :sswitch_f
        0xa -> :sswitch_f
        0xb -> :sswitch_f
        0xc -> :sswitch_f
        0xd -> :sswitch_f
        0xe -> :sswitch_f
        0xf -> :sswitch_f
        0x10 -> :sswitch_f
        0x13 -> :sswitch_b
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x16 -> :sswitch_e
        0x3a -> :sswitch_1
        0x3b -> :sswitch_6
        0x3c -> :sswitch_6
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_2
        0x72 -> :sswitch_9
        0x73 -> :sswitch_7
        0xd4 -> :sswitch_a
        0xe4 -> :sswitch_3
        0xe9 -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyDownBeforeCallingSuperMethod(ILandroid/view/KeyEvent;)V
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->closeKeyboard()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboardWithoutFloatingAndSplit()V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    const/4 v1, 0x0

    iget v7, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v7, 0xf

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    const-string v7, "com.sec.android.app.popupcalculator"

    iget-object v8, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.sec.android.app.videoplayer"

    iget-object v8, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    const/4 v7, 0x0

    :goto_1
    return v7

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x7

    if-lt p1, v7, :cond_4

    const/16 v7, 0x10

    if-gt p1, v7, :cond_4

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    const/4 v7, 0x3

    if-eq v1, v7, :cond_6

    const/4 v7, 0x2

    if-ne v1, v7, :cond_7

    :cond_6
    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ks02"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isLatinSoftFuncKey()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x7

    if-ne p1, v7, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftMomentaryState()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->toggleShiftState()V

    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v8, -0xff

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftHoldOn(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKeyUpHwPhonepad(I)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_a
    const/16 v0, -0xff

    const/16 v7, 0x3c

    if-ne p1, v7, :cond_f

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "BR"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/high16 v7, 0x70740000

    if-eq v6, v7, :cond_b

    const v7, 0x70744252

    if-ne v6, v7, :cond_f

    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v2, 0x33

    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0x2d

    goto :goto_2

    :cond_d
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v2, v8, v9}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v0

    const/16 v7, -0xff

    if-ne v0, v7, :cond_e

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->isEmptyKey()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_f
    sparse-switch p1, :sswitch_data_0

    if-nez v4, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v7

    if-eqz v7, :cond_1d

    :cond_10
    const/4 v5, 0x1

    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v8

    invoke-virtual {v7, p1, v8, v5}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v0

    :cond_11
    :goto_4
    const/16 v7, -0xff

    if-ne v0, v7, :cond_12

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->isEmptyKey()Z

    move-result v7

    if-eqz v7, :cond_1e

    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_1

    :sswitch_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftMomentaryState()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->toggleShiftState()V

    :cond_13
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    :cond_14
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    goto :goto_4

    :sswitch_1
    const/4 v7, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "SCH-I415"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_15
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_17
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    goto/16 :goto_1

    :sswitch_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v7

    if-nez v7, :cond_19

    :cond_18
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_19
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, 0xa

    aput v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    const/4 v7, 0x1

    goto/16 :goto_1

    :sswitch_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    const/4 v7, 0x1

    goto/16 :goto_1

    :sswitch_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    goto/16 :goto_4

    :sswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v7

    if-nez v7, :cond_1a

    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-nez v7, :cond_1a

    if-eqz v4, :cond_1b

    :cond_1a
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_1b
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_1c
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_1e
    const/4 v7, 0x0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_3
        0x43 -> :sswitch_1
        0x72 -> :sswitch_5
        0x73 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPress(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/diotek/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playSoundEffect(I)V

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_VIBETONZ"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(I)V

    :cond_4
    return-void
.end method

.method public onRelease(I)V
    .locals 0

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v1, :cond_1

    const-string v1, "com.android.mms"

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/input/InputModule;->onText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->backupFullText()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWord()Z

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p2, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v1, p1, v0}, Lcom/diotek/ime/framework/input/InputModule;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/common/InputManager;->FrequencyUpdateHanja(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->backupFullText()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v1, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public predictionWord()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->predictionWord()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->predictionWordStartInputViewContinue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public previewTrace(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->previewTrace(IZ)V

    :cond_0
    return-void
.end method

.method protected abstract processFunctionKey(I)V
.end method

.method public recaptureWordXT9()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->processRecaptureXT9()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->release()V

    return-void
.end method

.method public removeTerm(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->removeTerm(I)V

    :cond_0
    return-void
.end method

.method public resetProdictionWord()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->resetPredictionWord()V

    :cond_0
    return-void
.end method

.method public resetTextFieldState()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->resetTextFieldState()V

    :cond_0
    return-void
.end method

.method public setAccentChar(I)V
    .locals 1

    const/16 v0, -0xff

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAccentCombinationMode:Z

    :goto_0
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAccentCombinationMode:Z

    goto :goto_0
.end method

.method public setAcuteAccentPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    return-void
.end method

.method public setAcuteAccentSplitState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentSplit:Z

    return-void
.end method

.method public setAutoSpaceOn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->setAutoSpaceOn(Z)V

    :cond_0
    return-void
.end method

.method public setAvailableHWRLanguage()V
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getAvailableLanguages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInstallableLanguages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getAvailableLanguages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    goto :goto_0
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setChinesePhoneticIndex(I)V

    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setContextAwareUniqueID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFieldSpecificType(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setFieldSpecificType(I)V

    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setHwrPanelRect(IIII)V

    return-void
.end method

.method protected final setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    move-result v0

    return v0
.end method

.method protected final setInputEngineWithoutInit(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setInputEngineWithoutInit(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    move-result v0

    return v0
.end method

.method protected final setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    array-length v0, v0

    if-gt v0, p1, :cond_2

    :cond_0
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungIME"

    const-string v1, "Input module setting fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    aput-object p2, v0, p1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->initialize()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsPrivateImeOptionsCSC(Z)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setIsPrivateImeOptionsCSC(Z)V

    :cond_0
    return-void
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    return-void
.end method

.method public setKeyboardSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setKeyboardSize(II)V

    return-void
.end method

.method public setProdictionWord(Z)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->setPredictionWord(Z)V

    :cond_0
    return-void
.end method

.method public setSideSyncInputModule(I)V
    .locals 4

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    invoke-virtual {p0, v0, v2, p1}, Lcom/diotek/ime/framework/input/AbstractInputController;->getCurrentInputModuleIndex(III)I

    move-result v1

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    array-length v3, v3

    if-le v3, v1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    :cond_0
    return-void
.end method

.method public setSuggestionActiveIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    return-void
.end method

.method public setTraceStatus()V
    .locals 0

    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method

.method protected toggleInputLanguage()V
    .locals 0

    return-void
.end method

.method public updateAcuteAccentState(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    or-int v0, p1, v1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentState:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateAcuteAccentState(Z)V

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsAcuteAccentState:Z

    :cond_0
    return-void
.end method

.method public updateCandidates()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->updateCandidates()V

    return-void
.end method

.method public final updateHwPhonepadInputModule()V
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0x6b6f0000

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    goto :goto_0
.end method

.method public final updateInputModule()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V

    invoke-virtual {p0, v3, v6, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->getCurrentInputModuleIndex(III)I

    move-result v4

    invoke-virtual {p0, v3, v6, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->getCurrentInputEngineIndex(III)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->getHWInputModuleIndex(I)I

    move-result v1

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->getHWInputEngineIndex(I)I

    move-result v0

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    array-length v7, v7

    if-le v7, v4, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v7, v11}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v12, v10}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v12, v10}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v9, -0x1

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_2
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_7

    :cond_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    aget-object v7, v7, v4

    iput-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/diotek/ime/framework/input/InputModule;

    aget-object v7, v7, v1

    iput-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentHWInputModule:Lcom/diotek/ime/framework/input/InputModule;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setHWInputEngineIndex(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setCurrentEngineIndex(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateEngine()I

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setChineseFuzzyPinyin()V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v7}, Lcom/diotek/ime/framework/input/InputModule;->setAddStrokeCallBackOnHWREngine()V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v7}, Lcom/diotek/ime/framework/input/InputModule;->closing()V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v7}, Lcom/diotek/ime/framework/input/InputModule;->initialize()V

    :cond_5
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateHwPhonepadInputModule()V

    :cond_6
    return-void

    :cond_7
    const/high16 v7, 0x74680000

    if-eq v5, v7, :cond_8

    const/high16 v7, 0x6a610000

    if-eq v5, v7, :cond_8

    const/high16 v7, 0x6b6d0000

    if-eq v5, v7, :cond_8

    const v7, 0x7a314d4d

    if-eq v5, v7, :cond_8

    const/high16 v7, 0x6c6f0000

    if-ne v5, v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_9
    const/high16 v7, 0x6b6f0000

    if-ne v5, v7, :cond_c

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_b
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public updatePredictionSettingAndEngine()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->updatePredictionSettingAndEngine()V

    :cond_0
    return-void
.end method

.method public updateShiftState()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateShiftState()V

    return-void
.end method

.method public updateSuggestionForSwiftKey()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->updateSuggestionForSwiftKey()V

    return-void
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->writeDBdataToFileOnFinishInput()V

    return-void
.end method
