.class public Lcom/android/settings/fingerprint/FingerprintQualityChecker;
.super Ljava/lang/Object;
.source "FingerprintQualityChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLockQuality(Landroid/content/Context;)I
    .locals 5

    const/4 v4, -0x1

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "lockscreen.password_type"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v3, "minimum_quality"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v0, Llibcore/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Llibcore/util/MutableBoolean;-><init>(Z)V

    invoke-static {v2, v0, p0}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQuality(ILlibcore/util/MutableBoolean;Landroid/content/Context;)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQuality(ILlibcore/util/MutableBoolean;Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method private static upgradeQuality(ILlibcore/util/MutableBoolean;Landroid/content/Context;)I
    .locals 2

    const v1, 0x8000

    invoke-static {p0, p2}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQualityForDPM(ILandroid/content/Context;)I

    move-result p0

    invoke-static {p0, p2}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQualityForKeyStore(ILandroid/content/Context;)I

    move-result p0

    invoke-static {p0, p2}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQualityForEncryption(ILandroid/content/Context;)I

    move-result v0

    if-le v0, p0, :cond_0

    if-eqz p1, :cond_2

    if-gt p0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p1, Llibcore/util/MutableBoolean;->value:Z

    :cond_0
    move p0, v0

    :goto_1
    return p0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ne p0, v1, :cond_0

    goto :goto_1
.end method

.method private static upgradeQualityForDPM(ILandroid/content/Context;)I
    .locals 3

    const-string v2, "device_policy"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-ge p0, v1, :cond_0

    move p0, v1

    :cond_0
    return p0
.end method

.method private static upgradeQualityForEncryption(ILandroid/content/Context;)I
    .locals 5

    const/high16 v4, 0x20000

    const-string v2, "device_policy"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ge p0, v4, :cond_2

    const/high16 p0, 0x50000

    :cond_2
    if-ge p0, v4, :cond_0

    const/high16 p0, 0x20000

    goto :goto_0
.end method

.method private static upgradeQualityForKeyStore(ILandroid/content/Context;)I
    .locals 4

    const-string v3, "device_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/high16 v3, 0x20000

    if-ge p0, v3, :cond_0

    const/high16 p0, 0x20000

    :cond_0
    return p0
.end method
