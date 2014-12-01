.class public Lcom/android/incallui/VoWifiStateTracker;
.super Ljava/lang/Object;
.source "VoWifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;
    }
.end annotation


# static fields
.field public static final WFC_REGISTRATION_URI:Landroid/net/Uri;

.field private static sIntance:Lcom/android/incallui/VoWifiStateTracker;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInActiveVoWiFiCall:Z

.field private mIsStatusUpdate:Z

.field private mIsWfcRegistered:Z

.field private mWfcListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

.field private mWfcObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.oem.smartwifisupport.provider/wfc_events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/VoWifiStateTracker$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/VoWifiStateTracker$1;-><init>(Lcom/android/incallui/VoWifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/incallui/VoWifiStateTracker;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsStatusUpdate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VoWifiStateTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/VoWifiStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/VoWifiStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/VoWifiStateTracker;->updateRegistrationStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/VoWifiStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/VoWifiStateTracker;->getVoWiFiStatus()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/incallui/VoWifiStateTracker;
    .locals 1

    sget-object v0, Lcom/android/incallui/VoWifiStateTracker;->sIntance:Lcom/android/incallui/VoWifiStateTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/VoWifiStateTracker;

    invoke-direct {v0, p0}, Lcom/android/incallui/VoWifiStateTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/VoWifiStateTracker;->sIntance:Lcom/android/incallui/VoWifiStateTracker;

    :cond_0
    sget-object v0, Lcom/android/incallui/VoWifiStateTracker;->sIntance:Lcom/android/incallui/VoWifiStateTracker;

    return-object v0
.end method

.method private getVoWiFiStatus()V
    .locals 8

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "wfc_event"

    aput-object v1, v2, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/android/incallui/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoWiFi event is:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/VoWifiStateTracker;->log(Ljava/lang/String;)V

    const-string v1, "WFC_DEREGISTERED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WFC_BARRED_COUNTRY"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsWfcRegistered:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsInActiveVoWiFiCall:Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mWfcListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mWfcListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    iget-boolean v3, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsWfcRegistered:Z

    invoke-interface {v1, v3}, Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;->onVoWifiStateChanged(Z)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsStatusUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    const-string v1, "WFC_REGISTERED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsWfcRegistered:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsInActiveVoWiFiCall:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    :cond_6
    :try_start_2
    const-string v1, "WFC_VOICE_CALL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsWfcRegistered:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsInActiveVoWiFiCall:Z

    goto :goto_0

    :cond_7
    const-string v1, "WFC_DEDICATED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsWfcRegistered:Z

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsWfcRegistered:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsInActiveVoWiFiCall:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "VoWifiStateTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateRegistrationStatus()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/VoWifiStateTracker$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/VoWifiStateTracker$2;-><init>(Lcom/android/incallui/VoWifiStateTracker;)V

    const-string v2, "CallCard.updateRegistrationStatus"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public isInActiveVoWiFiCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsStatusUpdate:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/VoWifiStateTracker;->getVoWiFiStatus()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsInActiveVoWiFiCall:Z

    return v0
.end method

.method public isVoWiFiRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsStatusUpdate:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/VoWifiStateTracker;->getVoWiFiStatus()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsWfcRegistered:Z

    return v0
.end method

.method public registerForWfcRegistrationStatus()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/incallui/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsStatusUpdate:Z

    invoke-direct {p0}, Lcom/android/incallui/VoWifiStateTracker;->updateRegistrationStatus()V

    const-string v1, "registerForWfcRegistrationStatus() "

    invoke-direct {p0, v1}, Lcom/android/incallui/VoWifiStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public registerForWfcRegistrationStatus(Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/incallui/VoWifiStateTracker;->mWfcListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    iget-object v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/incallui/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsStatusUpdate:Z

    invoke-direct {p0}, Lcom/android/incallui/VoWifiStateTracker;->updateRegistrationStatus()V

    const-string v1, "registerForWfcRegistrationStatus() "

    invoke-direct {p0, v1}, Lcom/android/incallui/VoWifiStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterForWfcRegistrationStatus()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mIsStatusUpdate:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/VoWifiStateTracker;->mWfcListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    const-string v1, "unregisterForWfcRegistrationStatus() "

    invoke-direct {p0, v1}, Lcom/android/incallui/VoWifiStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method
