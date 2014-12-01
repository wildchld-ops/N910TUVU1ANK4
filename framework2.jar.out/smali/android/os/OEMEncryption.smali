.class public Landroid/os/OEMEncryption;
.super Ljava/lang/Object;
.source "OEMEncryption.java"


# static fields
.field private static final ACTION_CANCEL:I = 0x1

.field private static final ACTION_NOTIFY:I = 0x0

.field private static final EXTERNAL_SD_CARD_PATH:Ljava/lang/String; = "/mnt/sdcard/external_sd"

.field public static final NAME:Ljava/lang/String; = "DirEncryptService"

.field private static final SD_ENC_NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OEMEncryption"

.field private static mSelf:Landroid/os/OEMEncryption;


# instance fields
.field private EXTERNAL_SD_STATE:Ljava/lang/String;

.field private dem:Landroid/dirEncryption/DirEncryptionManager;

.field private filter:Landroid/content/IntentFilter;

.field private final handler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSDPolicy:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

.field private m_dem_3lm:Landroid/os/IDeviceManager3LM;

.field private notification:Landroid/app/Notification;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    iput-object v1, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    iput-object v1, p0, Landroid/os/OEMEncryption;->m_dem_3lm:Landroid/os/IDeviceManager3LM;

    iput-object v1, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    const-string v0, ""

    iput-object v0, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    new-instance v0, Landroid/os/OEMEncryption$1;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption$1;-><init>(Landroid/os/OEMEncryption;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    new-instance v0, Landroid/os/OEMEncryption$2;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption$2;-><init>(Landroid/os/OEMEncryption;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->mStorageListener:Landroid/os/storage/StorageEventListener;

    new-instance v0, Landroid/os/OEMEncryption$3;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption$3;-><init>(Landroid/os/OEMEncryption;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->receiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Landroid/os/OEMEncryption;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/os/OEMEncryption;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    const-string v0, "DirEncryptService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    const-string v0, "DeviceManager3LM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    iput-object v0, p0, Landroid/os/OEMEncryption;->m_dem_3lm:Landroid/os/IDeviceManager3LM;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/os/OEMEncryption;->filter:Landroid/content/IntentFilter;

    iget-object v0, p0, Landroid/os/OEMEncryption;->filter:Landroid/content/IntentFilter;

    iget-object v1, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    const-string v1, "android.intent.action.SDCARD_ENCRYPTION_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/OEMEncryption;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.action.3LM_NFC_FRCRESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/OEMEncryption;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Landroid/os/OEMEncryption;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/os/OEMEncryption;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Landroid/os/OEMEncryption;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    const-string/jumbo v0, "removed"

    iput-object v0, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/os/OEMEncryption;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/OEMEncryption;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Landroid/os/OEMEncryption;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/OEMEncryption;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1

    iget-object v0, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/OEMEncryption;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/os/OEMEncryption;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/os/OEMEncryption;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    return v0
.end method

.method static synthetic access$600(Landroid/os/OEMEncryption;)Landroid/os/IDeviceManager3LM;
    .locals 1

    iget-object v0, p0, Landroid/os/OEMEncryption;->m_dem_3lm:Landroid/os/IDeviceManager3LM;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/os/OEMEncryption;
    .locals 2

    const-class v1, Landroid/os/OEMEncryption;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/OEMEncryption;->mSelf:Landroid/os/OEMEncryption;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/OEMEncryption;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/os/OEMEncryption;->mSelf:Landroid/os/OEMEncryption;

    :cond_0
    sget-object v0, Landroid/os/OEMEncryption;->mSelf:Landroid/os/OEMEncryption;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkSdEncrypted()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/os/OEMEncryption;->isCurrentSDCardEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    const-string v0, "OEMEncryption"

    const-string v1, "clear called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    iget-object v0, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getSDPolicy()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    return v0
.end method

.method public isCurrentSDCardEncrypted()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    invoke-virtual {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const-string v2, "OEMEncryption"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encryption state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "OEMEncryption"

    const-string v3, "Remote exception caught in check encryption status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSDEncryptionPolicy(Z)V
    .locals 13

    const v12, 0x1040ba1

    const/4 v11, 0x0

    const-string v6, "OEMEncryption"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSDEncryptionPolicy called with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    if-nez p1, :cond_1

    iget-object v6, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/os/OEMEncryption;->isCurrentSDCardEncrypted()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "OEMEncryption"

    const-string v7, "Not showing notification because current SD card is already encrypted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    const-string/jumbo v6, "unmounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "removed"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "bad_removal"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const-string v6, "OEMEncryption"

    const-string v7, "Not showing notification because there is no SD card"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v6, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-eqz v6, :cond_0

    if-eqz p1, :cond_5

    :try_start_0
    iget-object v6, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x7

    invoke-interface {v6, v7, v8, v9}, Landroid/os/storage/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I

    move-result v4

    const-string v6, "OEMEncryption"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget-object v6, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    const/high16 v7, 0x10000000

    invoke-static {v6, v11, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v6, Landroid/app/Notification;

    const v7, 0x108007b

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v6, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    iget-object v6, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    iget-object v7, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x1040ba2

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v6, "OEMEncryption"

    const-string v7, "Unable to communicate with DirEncryptService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
