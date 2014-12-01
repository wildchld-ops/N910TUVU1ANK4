.class public Lcom/android/mms/util/TelephonyPermission;
.super Ljava/lang/Object;
.source "TelephonyPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/TelephonyPermission$DefaultSmsApplicatProviderObserver;
    }
.end annotation


# static fields
.field private static FALSE:I = 0x0

.field public static final KITKAT:I = 0x13

.field private static final MMS_APP_PACKAGE:Ljava/lang/String; = "com.android.mms"

.field private static NOT_SET:I = 0x0

.field private static final SMS_DEFAULT_APPLICATION:Ljava/lang/String; = "sms_default_application"

.field public static final TAG:Ljava/lang/String; = "Mms/TelephonyPermission"

.field private static TRUE:I

.field private static final sChangeWidgetUiUpdate:Ljava/lang/Object;

.field private static sInstance:Lcom/android/mms/util/TelephonyPermission;


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mCallback:Landroid/app/AppOpsManager$OnOpChangedListener;

.field private mContext:Landroid/content/Context;

.field private mDefaultSmsSettingObserver:Lcom/android/mms/util/TelephonyPermission$DefaultSmsApplicatProviderObserver;

.field private mIsDefault:I

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/util/TelephonyPermission;->sChangeWidgetUiUpdate:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/util/TelephonyPermission;->NOT_SET:I

    const/4 v0, 0x1

    sput v0, Lcom/android/mms/util/TelephonyPermission;->TRUE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/mms/util/TelephonyPermission;->FALSE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/TelephonyPermission;->mCallback:Landroid/app/AppOpsManager$OnOpChangedListener;

    new-instance v0, Lcom/android/mms/util/TelephonyPermission$DefaultSmsApplicatProviderObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/util/TelephonyPermission$DefaultSmsApplicatProviderObserver;-><init>(Lcom/android/mms/util/TelephonyPermission;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/util/TelephonyPermission;->mDefaultSmsSettingObserver:Lcom/android/mms/util/TelephonyPermission$DefaultSmsApplicatProviderObserver;

    sget v0, Lcom/android/mms/util/TelephonyPermission;->NOT_SET:I

    iput v0, p0, Lcom/android/mms/util/TelephonyPermission;->mIsDefault:I

    iput-object p1, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/mms/util/TelephonyPermission;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/util/TelephonyPermission;->mDefaultSmsSettingObserver:Lcom/android/mms/util/TelephonyPermission$DefaultSmsApplicatProviderObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/mms/util/TelephonyPermission;->mUid:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/TelephonyPermission;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/util/TelephonyPermission;->notifyDefaultSmsApplication()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;
    .locals 2

    const-class v1, Lcom/android/mms/util/TelephonyPermission;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/TelephonyPermission;->sInstance:Lcom/android/mms/util/TelephonyPermission;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/util/TelephonyPermission;

    invoke-direct {v0, p0}, Lcom/android/mms/util/TelephonyPermission;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/TelephonyPermission;->sInstance:Lcom/android/mms/util/TelephonyPermission;

    :cond_0
    sget-object v0, Lcom/android/mms/util/TelephonyPermission;->sInstance:Lcom/android/mms/util/TelephonyPermission;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDefaultSmsAppInternal()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    const-string v2, "Mms/TelephonyPermission"

    const-string v3, "SDK ver. >= KITKAT. defaultSmsApplication is null return false"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const-string v1, "Mms/TelephonyPermission"

    const-string v3, "SDK ver. < KITKAT. defaultSmsApplication is null return true"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    const-string v3, "com.android.mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "Mms/TelephonyPermission"

    const-string v3, "DefaultSmsApp is com.android.mms"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v2, "Mms/TelephonyPermission"

    const-string v3, "default sms is not samsung\'s, return false"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyDefaultSmsApplication()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v0

    const-string v1, "Mms/TelephonyPermission"

    const-string v2, "########## OP_WRITE_SMS mode changed, get permission forcely #########"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TelephonyPermission;->getPermissionWithoutRef()Z

    sget-object v2, Lcom/android/mms/util/TelephonyPermission;->sChangeWidgetUiUpdate:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDefaultAppChanged(Landroid/content/Context;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->checkBadgeCount(Landroid/content/Context;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowWriteMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->checkBadgeCount(Landroid/content/Context;)V

    :goto_1
    const-string v1, "Mms/TelephonyPermission"

    const-string v2, "samsung msg is not default app. close self"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->killMessage()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    goto :goto_1
.end method


# virtual methods
.method public forceReleasePermission()V
    .locals 5

    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/mms/util/TelephonyPermission;->mCallback:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    invoke-virtual {p0}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xf

    iget v2, p0, Lcom/android/mms/util/TelephonyPermission;->mUid:I

    const-string v3, "com.android.mms"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const-string v0, "Mms/TelephonyPermission"

    const-string v1, "force release write permission"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDefaultSmsApp()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const-string v1, "Mms/TelephonyPermission"

    const-string v2, "SDK ver. >= KITKAT. defaultSmsApplication is null return false"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "Mms/TelephonyPermission"

    const-string v2, "SDK ver. < KITKAT. defaultSmsApplication is null return true"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public getPermissionWithoutRef()Z
    .locals 7

    const/16 v6, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/mms/util/TelephonyPermission;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/util/TelephonyPermission;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    :cond_1
    const-string v1, "Mms/TelephonyPermission"

    const-string v3, "cannot get write permission"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/util/TelephonyPermission;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/mms/util/TelephonyPermission;->mUid:I

    const-string v5, "com.android.mms"

    invoke-virtual {v3, v6, v4, v5}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v2, "Mms/TelephonyPermission"

    const-string v3, "Already have a write permission"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/mms/util/TelephonyPermission;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/mms/util/TelephonyPermission;->mUid:I

    const-string v5, "com.android.mms"

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const-string v2, "Mms/TelephonyPermission"

    const-string v3, "get write permission"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRequestDefaultSmsAppActivity()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public isAllowedDefaultSmsApp()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowWriteMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultSmsApp()Z
    .locals 3

    sget v1, Lcom/android/mms/util/TelephonyPermission;->NOT_SET:I

    iget v2, p0, Lcom/android/mms/util/TelephonyPermission;->mIsDefault:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsAppInternal()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/mms/util/TelephonyPermission;->TRUE:I

    :goto_0
    iput v1, p0, Lcom/android/mms/util/TelephonyPermission;->mIsDefault:I

    :cond_0
    sget v1, Lcom/android/mms/util/TelephonyPermission;->TRUE:I

    iget v2, p0, Lcom/android/mms/util/TelephonyPermission;->mIsDefault:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const-string v1, "Mms/TelephonyPermission"

    const-string v2, "isDefault true"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v0

    :cond_1
    sget v1, Lcom/android/mms/util/TelephonyPermission;->FALSE:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "Mms/TelephonyPermission"

    const-string v2, "isDefault false"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected refreshDefaultSmsApp()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsAppInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/mms/util/TelephonyPermission;->TRUE:I

    :goto_0
    iput v0, p0, Lcom/android/mms/util/TelephonyPermission;->mIsDefault:I

    return-void

    :cond_0
    sget v0, Lcom/android/mms/util/TelephonyPermission;->FALSE:I

    goto :goto_0
.end method

.method public sendChangeDefaultSmsAppIntent(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Mms/TelephonyPermission"

    const-string v1, "Change default SMS app to Messages"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.android.mms"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public startOperationModeMonitor(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Mms/TelephonyPermission"

    const-string v1, "start operation mode monitor"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/TelephonyPermission;->getPermissionWithoutRef()Z

    :cond_0
    return-void
.end method
