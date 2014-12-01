.class public Landroid/sec/enterprise/ApplicationPolicy;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# static fields
.field public static final NOTIFICATION_MODE_BLOCK_ALL:I = 0x2

.field public static final NOTIFICATION_MODE_BLOCK_TEXT:I = 0x3

.field public static final NOTIFICATION_MODE_BLOCK_TEXT_AND_SOUND:I = 0x4

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ApplicationPolicy"

    sput-object v0, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getApplicationNotificationMode(Z)I
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getApplicationNotificationMode(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getApplicationNotificationMode returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Landroid/sec/enterprise/IEDMProxy;->getApplicationIconFromDb(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v3, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "PXY-getApplicationIconFromDb returning default value"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    sget-object v3, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "PXY-getApplicationNameFromDb returning default value"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getApplicationNotificationMode()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNotificationMode(Z)I

    move-result v0

    return v0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;Z)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->getApplicationStateEnabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isApplicationForceStopDisabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Landroid/sec/enterprise/IEDMProxy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isApplicationForceStopDisabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;IZ)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Landroid/sec/enterprise/IEDMProxy;->isApplicationForceStopDisabled(Ljava/lang/String;IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isApplicationForceStopDisabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isIntentDisabled(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isIntentDisabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isStatusBarNotificationAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
