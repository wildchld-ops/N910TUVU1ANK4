.class public Lcom/diotek/ime/implement/effect/HapticVibrateController;
.super Ljava/lang/Object;
.source "HapticVibrateController.java"

# interfaces
.implements Lcom/diotek/ime/framework/effect/VibrateController;


# instance fields
.field private final SECTION_FUNCTION:I

.field private final SECTION_NUMBER:I

.field private final SECTION_QWERTY:I

.field private final SECTION_SPACEBAR:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsNoteMode:Z

.field private mIsSystemSettingsVibrateOn:Z

.field private final mKeyVibrateTypeClear:I

.field private final mKeyVibrateTypeGeneral:I

.field private mPatternFunctionSpaceDown:[B

.field private mPatternFunctionSpaceUp:[B

.field private mPatternQwertyNumberlDown:[B

.field private mPatternQwertyNumberlUp:[B

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mVibrateDuration:J

.field private mVibrateOn:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private final mVibratorMagnitude:[I

.field private mVibratorMagnitudeLevel:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrateOn:Z

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrateDuration:J

    iput-boolean v3, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mIsSystemSettingsVibrateOn:Z

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-boolean v3, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mIsNoteMode:Z

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternQwertyNumberlUp:[B

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternQwertyNumberlDown:[B

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternFunctionSpaceUp:[B

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternFunctionSpaceDown:[B

    iput v3, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mKeyVibrateTypeClear:I

    iput v4, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mKeyVibrateTypeGeneral:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibratorMagnitudeLevel:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibratorMagnitude:[I

    iput v4, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->SECTION_QWERTY:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->SECTION_FUNCTION:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->SECTION_NUMBER:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->SECTION_SPACEBAR:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x7d0
        0xfa0
        0x1770
        0x1f40
        0x2710
    .end array-data
.end method

.method private getKeyVibrateType(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
    .end packed-switch
.end method

.method private isFunctionKey(I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

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

.method private isSystemSettingsVibrateOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mIsSystemSettingsVibrateOn:Z

    return v0
.end method

.method private setSystemSettingsVibrateOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mIsSystemSettingsVibrateOn:Z

    return-void
.end method


# virtual methods
.method public getKeySection(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/effect/HapticVibrateController;->isFunctionKey(I)Z

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
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrateDuration:J

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "NOTE_KEYPAD_TYPE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mIsNoteMode:Z

    invoke-virtual {p0}, Lcom/diotek/ime/implement/effect/HapticVibrateController;->initializePattern()V

    return-void
.end method

.method public initializePattern()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternQwertyNumberlUp:[B

    if-nez v0, :cond_0

    sget-object v0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->VIBE_KEY_QWERTY_NUMBER_UP:[B

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternQwertyNumberlUp:[B

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternQwertyNumberlDown:[B

    if-nez v0, :cond_1

    sget-object v0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->VIBE_KEY_QWERTY_NUMBER_DOWN:[B

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternQwertyNumberlDown:[B

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternFunctionSpaceUp:[B

    if-nez v0, :cond_2

    sget-object v0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->VIBE_KEY_FUNCTION_SPACE_UP:[B

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternFunctionSpaceUp:[B

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternFunctionSpaceDown:[B

    if-nez v0, :cond_3

    sget-object v0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->VIBE_KEY_FUNCTION_SPACE_DOWN:[B

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternFunctionSpaceDown:[B

    :cond_3
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    return-void
.end method

.method public setMagnitudeLevel(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibratorMagnitudeLevel:I

    return-void
.end method

.method public setVibrateOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrateOn:Z

    return-void
.end method

.method public updateVibrateFromSystemSettings()V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/effect/HapticVibrateController;->setSystemSettingsVibrateOn(Z)V

    :cond_1
    return-void
.end method

.method public vibrate(IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrateOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/effect/HapticVibrateController;->isFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/HapticVibrateController;->VIBE_KEY_FUNCTION:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/HapticVibrateController;->VIBE_KEY_F_AND_J:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/HapticVibrateController;->VIBE_KEY_GENERAL:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0
.end method

.method public vibrate(IZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrateOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_VIBETONZ"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mPatternQwertyNumberlDown:[B

    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibratorMagnitude:[I

    iget v3, p0, Lcom/diotek/ime/implement/effect/HapticVibrateController;->mVibratorMagnitudeLevel:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    :cond_1
    return-void
.end method
