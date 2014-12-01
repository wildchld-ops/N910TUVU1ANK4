.class public Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;,
        Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;,
        Lcom/android/server/DirEncryptServiceHelper$Notify;,
        Lcom/android/server/DirEncryptServiceHelper$VoldResponse;,
        Lcom/android/server/DirEncryptServiceHelper$VoldCommand;,
        Lcom/android/server/DirEncryptServiceHelper$Command;,
        Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;,
        Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    }
.end annotation


# static fields
.field private static final APPLIED_POLICIES:Ljava/lang/String; = "applied_sdcard_policies"

.field private static final DELAY:I = 0x1f4

.field private static final FIPS_EDK_PATH_SD:Ljava/lang/String; = "edk_p_sd"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final SECURE_MOUNT_PATH:Ljava/lang/String; = "/mnt/secure/staging"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"

.field private static final UNMOUNT_POLICY_INTENT:Ljava/lang/String; = "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

.field private static mNeedToCreateKey:Z

.field private static mSaveProgressNotification:Landroid/app/Notification;


# instance fields
.field demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

.field private mAnimateSync:Ljava/lang/Object;

.field private mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field mContainerEncryption:Z

.field private mContext:Landroid/content/Context;

.field private mDecryptDialog:Landroid/app/AlertDialog;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mDew:Landroid/dirEncryption/DirEncryptionWrapper;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mErrAdditionalSpace:I

.field private mFirstUnlockLockscreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastError:I

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPassword:Z

.field private mProgressTime:J

.field private mRemoteProgressView:Landroid/widget/RemoteViews;

.field private mSelfSDMountRequested:Z

.field private mServiceStatus:I

.field private mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

.field private mSync:Ljava/lang/Object;

.field private mUnnmountRequested:Z

.field private mWasEncryptedCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-direct {v1, p0, v4}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$1;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    iput v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    iput v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iput v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    new-instance v1, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptServiceHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Landroid/app/Notification;
    .locals 1

    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DirEncryptServiceHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    return v0
.end method

.method private clearNotification()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private doChangeEncryptPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dir_crypto"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "changeEcryptfsPassword"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0, p3}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v5, v0}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v5, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    invoke-virtual {v1}, Ljava/lang/String;->clear()V

    return-void
.end method

.method private doCheckEncMeta()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dir_crypto"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "encMetaCheck"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/mnt/secure/staging"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private doEncryption()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v7}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v7, v10, :cond_0

    move v3, v5

    :goto_0
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v7, v12, :cond_1

    move v4, v5

    :goto_1
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_2

    move v1, v5

    :goto_2
    iget-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    if-nez v7, :cond_3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v7, "Assert!!! SD card encryption doesn\'t work in factory mode"

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    const-wide/16 v7, 0xbb8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const-string v7, ""

    invoke-direct {p0, v5, v3, v7}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    if-ne v3, v5, :cond_4

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v7, "free"

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    :goto_5
    const-string v7, "dir_crypto"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "encrypt"

    aput-object v9, v8, v6

    const-string v6, ""

    aput-object v6, v8, v5

    const-string v5, "/mnt/secure/staging"

    aput-object v5, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v12

    const/4 v5, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-direct {p0, v7, v8}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doEncryption Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_4
    invoke-direct {p0, v11}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v7, "free"

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_5
.end method

.method private doMountEcryptfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V
    .locals 5

    invoke-virtual {p0, p3}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dir_crypto"

    const/16 v1, 0x8

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v4, "mount"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object p2, v3, v1

    const/4 v1, 0x3

    new-instance v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v4, v0}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, v1

    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x6

    if-eqz p4, :cond_0

    const-string v1, "1"

    :goto_0
    aput-object v1, v3, v4

    const/4 v1, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    return-void

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method private doMountPointMounted(Ljava/lang/String;)V
    .locals 4

    const-string v0, "dir_crypto"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "isPathMounted"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private doUnMountEcryptfs(Ljava/lang/String;II)V
    .locals 4

    const-string v0, "dir_crypto"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "unmount"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private doUnMountEcryptfs(Ljava/lang/String;IIZ)V
    .locals 5

    const/4 v4, 0x1

    if-nez p4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DirEncryptServiceHelper;->doUnMountEcryptfs(Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "dir_crypto"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "unmount"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doWorkForPassword(Ljava/lang/String;)V
    .locals 14

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, ""

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    const-string v10, "dir_crypto"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "password"

    aput-object v13, v11, v12

    invoke-direct {p0, v10, v11}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    return-void

    :cond_1
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    if-nez v10, :cond_b

    new-instance v3, Ljava/io/File;

    const-string v10, "/efs/"

    const-string v11, "edk_p_sd"

    invoke-direct {v3, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v10, "/data/system/"

    const-string v11, "edk_p_sd"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "security.mdpp"

    const-string v11, "None"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v6

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v5, 0x1

    :goto_1
    const-string v10, "Ready"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "Enforcing"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "Enabled"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    const/4 v8, 0x1

    :cond_3
    if-nez v6, :cond_4

    if-eqz v5, :cond_a

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    if-eqz v8, :cond_a

    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v10}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getNeedToCreateKey()Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "dir_crypto"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "ssMigration"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v13, v2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v13, v11, v12

    invoke-direct {p0, v10, v11}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v10}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "mounted"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    :goto_2
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setNeedToCreateKey(Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_9
    const-string v10, "dir_crypto"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "password"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v13, v2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v13, v11, v12

    invoke-direct {p0, v10, v11}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    const-string v10, "dir_crypto"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "password"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v13, v2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v13, v11, v12

    invoke-direct {p0, v10, v11}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    const-string v10, "dir_crypto"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "password"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, ""

    aput-object v13, v11, v12

    const/4 v12, 0x2

    new-instance v13, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v13, v2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v13, v11, v12

    invoke-direct {p0, v10, v11}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    goto/16 :goto_0
.end method

.method private doWorkForUSBState(Ljava/lang/String;)V
    .locals 12

    const/4 v9, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "vold.decrypt"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v6, "Do not work if encryption lock page"

    invoke-static {v6}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v7, "unmounted"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v7}, Landroid/dirEncryption/DirEncryptionWrapper;->getUserDiff()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    iget-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    if-ne v7, v3, :cond_3

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    :cond_3
    const-string v7, "clearNotification"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v7, v6}, Landroid/dirEncryption/DirEncryptionWrapper;->setUserDiff(Z)V

    :try_start_0
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v6}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-string v7, "checking"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "clearNotification"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v4

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_1
    iget-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v7, :cond_6

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_5
    move v3, v6

    goto :goto_1

    :cond_6
    if-nez v4, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    iget-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    if-eqz v6, :cond_0

    :cond_8
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_9
    const-string v6, "encPrefs Not found"

    invoke-static {v6}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v7, "MoveMount"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v7

    if-ne v7, v10, :cond_d

    iget-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v7, :cond_b

    const-string v7, "looks like encryption policies were received while SD card decryption was on going!!"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const-string/jumbo v7, "success"

    invoke-direct {p0, v10, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v6, "Mount"

    invoke-direct {p0, v11, v6}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v7, "Since encrypt is ON: final mount command"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const-string v7, "dir_crypto"

    new-array v8, v9, [Ljava/lang/Object;

    const-string v9, "mount"

    aput-object v9, v8, v6

    iget-object v9, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v9}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, ""

    aput-object v9, v8, v10

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardMediaExclusionInternal()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_c

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v11

    invoke-direct {p0, v7, v8}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move v3, v6

    goto :goto_2

    :cond_d
    const-string v7, "Since encrypt is OFF: no final mount command"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v7, "Mount"

    invoke-direct {p0, v11, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v7}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "success"

    invoke-direct {p0, v10, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    :cond_e
    const-string v7, "mounted"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "Update SD card encryption status"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v7

    if-ne v7, v11, :cond_f

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v7}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v7, :cond_f

    const-string/jumbo v7, "success"

    invoke-direct {p0, v10, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    :cond_f
    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v6, "free"

    invoke-direct {p0, v11, v6}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v7, "removed"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    const-string v7, "SD card removed"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const-string v7, "clearNotification"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v7, "free"

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    :try_start_1
    const-string v6, "SD card removed, removing the hidden drive if any"

    invoke-static {v6}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v6}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountHiddenVolume()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v7, "unmounted"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    const-string v7, "SD card unmounted"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v7, :cond_12

    const-string v7, "clearNotification"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    :cond_12
    iget-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    if-ne v7, v3, :cond_0

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-direct {p0, v7, v6, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v7, "bad_removal"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    const-string v7, "SD card bad removed"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v7, :cond_0

    const-string v7, "clearNotification"

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    const-string v7, "free"

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getFullStorageCardEncryptionInternal()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    return v0
.end method

.method private getRemoteProgressView(Ljava/lang/String;II)Landroid/widget/RemoteViews;
    .locals 5

    const v4, 0x10203d7

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x10900bb

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x1080346

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10408f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x10203d8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x10203d9

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x10802d2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10408fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EncPrefs found"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "EncPrefs not found"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSecurityIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "adminStart"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getStorageCardEncryptionInternal()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    return v0
.end method

.method private getStorageCardMediaExclusionInternal()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return v0
.end method

.method private isAdminApplied()Z
    .locals 6

    const/4 v5, 0x2

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v5, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v3, 0x4

    iput v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    :cond_0
    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v5, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v2

    if-ne v2, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;)V
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyEncryptionStatusChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v6}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, p1, p2}, Landroid/os/storage/IDirEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "Listener dead"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_1
    move-exception v1

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method private varargs sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DirEncryptService"

    const-string v2, "Failed to send command"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return-void
.end method

.method private showNotification(IILjava/lang/String;)V
    .locals 12

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v5, ""

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v6, 0x5

    if-eq p1, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    :cond_0
    if-eqz v1, :cond_1

    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v1, Landroid/app/Notification;->flags:I

    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v1, Landroid/app/Notification;->flags:I

    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v1, Landroid/app/Notification;->flags:I

    iget v6, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v1, Landroid/app/Notification;->defaults:I

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sget v6, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getSecurityIntent()Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080346

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v1, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    :pswitch_2
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "success"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080346

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    :goto_1
    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x5

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080345

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "success"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802d2

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fe

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x6

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802d1

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    goto/16 :goto_1

    :pswitch_3
    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080346

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    :goto_2
    iput-object v5, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802d2

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    goto :goto_2

    :pswitch_4
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-wide v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    :cond_6
    const/4 v6, 0x1

    if-ne p2, v6, :cond_9

    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    if-nez v6, :cond_7

    new-instance v6, Landroid/app/Notification;

    const v8, 0x1080344

    const-string v9, ""

    iget-wide v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    :cond_7
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x10408f8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const/high16 v10, 0x8000000

    invoke-static {v6, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iput-object v0, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8, v0, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/DirEncryptServiceHelper;->getRemoteProgressView(Ljava/lang/String;II)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget v8, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/app/Notification;->flags:I

    if-nez v4, :cond_b

    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    const/4 v8, 0x0

    iput v8, v6, Landroid/app/Notification;->iconLevel:I

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_4
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_9
    :try_start_1
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    if-nez v6, :cond_a

    new-instance v6, Landroid/app/Notification;

    const v8, 0x10802d0

    const-string v9, ""

    iget-wide v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    :cond_a
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x10408fc

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    const/16 v6, 0x64

    if-ne v6, v4, :cond_8

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :pswitch_5
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    const/4 v6, 0x1

    if-ne p2, v6, :cond_c

    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080345

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_c
    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802d1

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fe

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_6
    const/4 v6, 0x1

    if-ne p2, v6, :cond_d

    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080345

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    const/16 v6, 0xb

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_d
    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802d1

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fe

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_7
    const/4 v6, 0x1

    if-ne p2, v6, :cond_e

    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080345

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_e
    new-instance v1, Landroid/app/Notification;

    const v6, 0x1080345

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408fe

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_8
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408f6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v1, Landroid/app/Notification;

    const v6, 0x108007b

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method private unmountSDCard()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "\\\\"

    const-string v3, "\\\\\\\\"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    goto :goto_0
.end method

.method public doHandleMessage(Landroid/os/Message;)V
    .locals 12

    iget-object v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v11

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceHelper: command received:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Invalid command!!!"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit v11

    return-void

    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForPassword(Ljava/lang/String;)V

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    goto :goto_0

    :pswitch_2
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command.USB_STATE:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doEncryption()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doCheckEncMeta()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z

    goto :goto_0

    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    iget-object v1, v8, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/server/EcryptfsMountParams;->mountPath:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    iget-boolean v4, v8, Lcom/android/server/EcryptfsMountParams;->mountAndEncrypt:Z

    iget v5, v8, Lcom/android/server/EcryptfsMountParams;->excludeMediaTypes:I

    iget v6, v8, Lcom/android/server/EcryptfsMountParams;->containerId:I

    iget v7, v8, Lcom/android/server/EcryptfsMountParams;->state:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/DirEncryptServiceHelper;->doMountEcryptfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V

    goto :goto_0

    :pswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    iget v1, v8, Lcom/android/server/EcryptfsMountParams;->uninstallOrStop:I

    iget v2, v8, Lcom/android/server/EcryptfsMountParams;->containerId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->doUnMountEcryptfs(Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_8
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->newPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/server/EcryptfsMountParams;->newPassword:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/server/EcryptfsMountParams;->mountPath:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/EcryptfsMountParams;->containerId:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->doChangeEncryptPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->doMountPointMounted(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public getAdditionalSpaceRequired()I
    .locals 1

    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return v0
.end method

.method public getLastError()I
    .locals 1

    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    return v0
.end method

.method public getNeedToCreateKey()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 1

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->checkPoliciesApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v21

    const/16 v20, 0x1

    return v20

    :pswitch_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/16 v20, 0x1

    aget-object v16, p3, v20

    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForPassword(Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v20, 0x0

    :try_start_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Z

    goto :goto_1

    :cond_2
    const-string/jumbo v20, "unable to save DEK"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_1

    :cond_3
    const-string v20, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const-string v20, "Unable to update DEK"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    :cond_4
    const-string v20, "DEK successfully updated"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    :cond_5
    const-string v20, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    const-string v20, "Unable to delete DEK"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    :cond_6
    const-string v20, "DEK successfully deleted"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/DirEncryptPrefs;->clearPrefs()V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    :cond_7
    const-string v20, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "notification"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    sget v20, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x5

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v20, 0x3

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v20, 0x4

    aget-object v19, p3, v20

    const-string/jumbo v20, "success"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const-string v20, "RESP_ENCRYPT success"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v5, v0, :cond_8

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    :try_start_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v18, :cond_9

    const/16 v20, 0x2ab

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    :goto_2
    new-instance v9, Landroid/content/Intent;

    const-string v20, "android.intent.action.SDCARD_ENCRYPTION_COMPLETED"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v22, "what"

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const-string v20, "encryption"

    :goto_3
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-nez v18, :cond_b

    const/16 v20, 0x3

    :goto_4
    const-string v22, "done"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto :goto_2

    :cond_a
    const-string v20, "decryption"

    goto :goto_3

    :cond_b
    const/16 v20, 0x2

    goto :goto_4

    :cond_c
    const-string v20, "RESP_ENCRYPT failed"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v5, v0, :cond_e

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    const/16 v20, 0x0

    :try_start_5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    goto/16 :goto_0

    :catch_1
    move-exception v6

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v6

    :try_start_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    :goto_6
    const/16 v20, 0x3

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v20, "dir_crypto"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "unmount"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string v24, "/mnt/secure/staging"

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    const/16 v20, 0x6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_6

    :cond_10
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_ENCRYPT extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    const-string v20, "DirEncryptServiceVoldResponse.PROGRESS inside"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v20, 0x5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_PROGRESS extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x8

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v20, 0x5

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v20, 0x6

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v20, 0x6

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v18, :cond_12

    const/16 v20, 0x3

    :goto_7
    const-string v22, "free"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/16 v20, 0x2

    goto :goto_7

    :cond_13
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_PRESCAN_FULL_ERR extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x8

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v20, 0x5

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v20, 0xb

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v20, 0xb

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v18, :cond_14

    const/16 v20, 0x3

    :goto_8
    const-string v22, "free"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const/16 v20, 0x2

    goto :goto_8

    :cond_15
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_FILE_OPEN_ERR extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_16

    const-string v20, "Unable to ss_migration"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v20, "ss_migration successfully updated"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto/16 :goto_0

    :cond_17
    const-string v20, "RESP_SS_MIGRATION extra data recvd, please fix!!"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const/4 v13, -0x1

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x5

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_19

    const/16 v20, 0x3

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const/4 v13, 0x2

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    move-result v20

    if-eqz v20, :cond_18

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v20, 0x2

    const/16 v22, 0x1

    const-string/jumbo v23, "success"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    const-string v20, "Mount"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const/16 v20, 0x7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v20, 0x2

    const/16 v22, 0x1

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    const-string v20, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    const/16 v20, 0x3

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    if-gtz v5, :cond_0

    :cond_1a
    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v20, 0x7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v18, :cond_1b

    const/4 v13, 0x3

    :goto_9
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v20, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const/4 v13, 0x2

    goto :goto_9

    :cond_1c
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_MOUNT extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const/4 v15, -0x1

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    const/16 v20, 0x3

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1e

    const/16 v20, 0x1

    aget-object v20, p3, v20

    const-string v22, "/mnt/secure/staging"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1d
    :goto_a
    const/4 v15, 0x3

    goto/16 :goto_0

    :catch_3
    move-exception v6

    :try_start_9
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_a

    :cond_1e
    const/16 v20, 0x4

    const/16 v22, 0x0

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_a

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_a

    :catch_4
    move-exception v6

    :try_start_b
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_20
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_UNMOUNT extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    const/4 v14, -0x1

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_24

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_22

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_21
    :goto_b
    const/16 v14, 0xb

    goto/16 :goto_0

    :catch_5
    move-exception v6

    :try_start_d
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_b

    :cond_22
    const/16 v20, 0x8

    const/16 v22, 0x0

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_b

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_b

    :catch_6
    move-exception v6

    :try_start_f
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_24
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_CHANGE_ECRYPTFS_PASSWORD extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_27

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_25

    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    :catch_7
    move-exception v6

    :try_start_11
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    const/16 v20, 0x9

    const/16 v22, 0x0

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    :catch_8
    move-exception v6

    :try_start_13
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_MOUNT_PATH_STATUS extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2d

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v20

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_28

    new-instance v8, Landroid/content/Intent;

    const-string v20, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x10400000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v10, Landroid/content/Intent;

    const-string v20, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "required"

    const-string v22, "decryption"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    const-string/jumbo v20, "security.mdpp"

    const-string v22, "None"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v20, "Enabled"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_29

    const-string v20, "CC mode - Pop up SD card encryption"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string v20, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x10400000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v10, Landroid/content/Intent;

    const-string v20, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "required"

    const-string v22, "encryption"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_29
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v20

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2b

    new-instance v8, Landroid/content/Intent;

    const-string v20, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x10400000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v10, Landroid/content/Intent;

    const-string v20, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "required"

    const-string v22, "encryption"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v20, "security.mdpp"

    const-string v22, "None"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v20, "Enabled"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2c

    const-string v20, "CC mode - Pop up SD card decryption"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string v20, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x10400000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v10, Landroid/content/Intent;

    const-string v20, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "required"

    const-string v22, "decryption"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    const/16 v20, 0x3

    const-string v22, "done"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    :cond_2d
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_ENC_META_CHECK extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const/16 v20, 0x3

    const-string v22, "free"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2a8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_4
        :pswitch_e
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method ready()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    return-void
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IDirEncryptServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Failed to link to listener death"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public registerStorageEventListener()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RegisterStorageEventListner fail"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "RegisterStorageEventListner success"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBootComplted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    return-void
.end method

.method public setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return-void
.end method

.method public unmountSDCardByAdmin()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SD card  : State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / Admin policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / Encrypted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Unmount SD Card By Admin"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
