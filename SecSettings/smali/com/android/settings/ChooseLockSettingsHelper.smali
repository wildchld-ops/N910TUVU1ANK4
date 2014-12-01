.class public final Lcom/android/settings/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method private confirmFingerprintPassword(I)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x37

    if-ne p1, v1, :cond_0

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintConfirmPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private confirmPassword(II)Z
    .locals 3

    const/4 v1, 0x0

    const/high16 v2, 0x90000

    if-eq p1, v2, :cond_0

    const v2, 0x9100

    if-ne p1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    :goto_0
    return v1

    :cond_2
    const v2, 0x9000

    if-ne p1, v2, :cond_4

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private confirmPattern(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v1, 0x0

    const/high16 v2, 0x90000

    if-eq p1, v2, :cond_0

    const v2, 0x9100

    if-ne p1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method


# virtual methods
.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPattern(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmFingerprintPassword(I)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPattern(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPassword(II)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v1, p1}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPassword(II)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9000 -> :sswitch_3
        0x9100 -> :sswitch_2
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_3
        0x60000 -> :sswitch_3
        0x61000 -> :sswitch_1
        0x70000 -> :sswitch_3
        0x90000 -> :sswitch_2
    .end sparse-switch
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
