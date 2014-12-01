.class public Lcom/diotek/ime/framework/repository/KeyboardStatus;
.super Ljava/lang/Object;
.source "KeyboardStatus.java"


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;


# instance fields
.field private accuteState:Z

.field private holdDelay:I

.field private isBackNormalKeyFirstTap:Z

.field private isFirstLanguageChangeTap:Z

.field private isHardwareQwertyKeyInput:Z

.field private isMMKeyFirstTap:Z

.field private letterMode:Z

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private phoneticSpellLayout:Z

.field private setupWizardRunning:Z

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v3, 0x0

    const/16 v5, 0x1f4

    const/16 v4, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->letterMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->accuteState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->phoneticSpellLayout:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setupWizardRunning:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isHardwareQwertyKeyInput:Z

    iput v4, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    iput-object v3, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sp:Landroid/content/SharedPreferences;

    iput-object v3, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-boolean v2, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isMMKeyFirstTap:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isFirstLanguageChangeTap:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isBackNormalKeyFirstTap:Z

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sp:Landroid/content/SharedPreferences;

    const-string v2, "SETTINGS_DEFAULT_HOLD_DELAY"

    const-string v3, "settings_hold_delay_medium"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings_hold_delay_short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc8

    iput v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "settings_hold_delay_medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v4, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    goto :goto_0

    :cond_2
    const-string v1, "settings_hold_delay_long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v5, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    goto :goto_0

    :cond_3
    const-string v1, "settings_hold_delay_custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sp:Landroid/content/SharedPreferences;

    const-string v2, "settings_hold_delay_custom"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    goto :goto_0
.end method

.method public static getHoldDelay()I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    return v0
.end method

.method public static isAccuteState()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->accuteState:Z

    return v0
.end method

.method public static isFirstKeyboardChangeTap()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isBackNormalKeyFirstTap:Z

    return v0
.end method

.method public static isFirstLanguageChangeTap()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isFirstLanguageChangeTap:Z

    return v0
.end method

.method public static isHardwareQwertyKeyInput()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isHardwareQwertyKeyInput:Z

    return v0
.end method

.method public static isLetterMode()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->letterMode:Z

    return v0
.end method

.method public static isMMKeyFirstTap()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isMMKeyFirstTap:Z

    return v0
.end method

.method public static isPhoneticSpellLayout()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->phoneticSpellLayout:Z

    return v0
.end method

.method public static isSetupWizardRunning()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setupWizardRunning:Z

    return v0
.end method

.method public static setAccuteState(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->accuteState:Z

    return-void
.end method

.method public static setFirstKeyboardChangeTap(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isBackNormalKeyFirstTap:Z

    return-void
.end method

.method public static setFirstLanguageChangeTap(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isFirstLanguageChangeTap:Z

    return-void
.end method

.method public static setHardwareQwertyKeyInput(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isHardwareQwertyKeyInput:Z

    return-void
.end method

.method public static setHoldDelay(I)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    return-void
.end method

.method public static setIfSetupWizardRunning(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setupWizardRunning:Z

    return-void
.end method

.method public static setLetterMode(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->letterMode:Z

    return-void
.end method

.method public static setMMKeyFirstTap(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isMMKeyFirstTap:Z

    return-void
.end method

.method public static setPhoneticSpellLayout(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->phoneticSpellLayout:Z

    return-void
.end method
