.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$HeadsetRingtonePlayer;,
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$NotificationFlashThread;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static mCfmsService:Landroid/os/ICustomFrequencyManager;

.field private static sInstance:Lcom/android/phone/Ringer;

.field private static sInstanceSecond:Lcom/android/phone/Ringer;


# instance fields
.field private final FIRST_RING_DELAY_FOR_SYNC_WITH_SCREEN:I

.field private final FIRST_RING_DELAY_FOR_SYNC_WITH_SCREEN_COVER:I

.field private final INIT_VOLUME:I

.field private final INIT_VOLUME_DELAY:I

.field private final NOTIFY_FLASH:I

.field private final START_RING:I

.field private final VIB_TIME_IN_RING_AFTER_VIB:I

.field private flashHandler:Landroid/os/Handler;

.field isDone:Z

.field public isStarredContact:Z

.field private mActiveSimId:I

.field mAudioManager:Landroid/media/AudioManager;

.field private final mBluetoothManager:Lcom/android/phone/BluetoothManager;

.field private mCallMotion:Lcom/android/phone/CallMotion;

.field private mCallMotionFlash:Lcom/android/phone/CallMotion;

.field private mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

.field mContext:Landroid/content/Context;

.field mCustomRingtoneUri:Landroid/net/Uri;

.field mCustomRingtoneUri2:Landroid/net/Uri;

.field mCustomVibrationUri:Landroid/net/Uri;

.field private mExtraRinger:Lcom/android/phone/ExtraRinger;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

.field private mIsRingEscalating:Z

.field private mIsRingRepeat:Z

.field mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

.field private mOriginRingtoneVolume:I

.field mPowerManager:Landroid/os/IPowerManager;

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field private mRingtoneAfterVib:I

.field private mRingtoneHighlightSec:I

.field private mSyncHandler:Landroid/os/Handler;

.field mVibrator:Landroid/os/SystemVibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/Ringer;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothManager;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/phone/BluetoothManager;

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/phone/Ringer;->INIT_VOLUME_DELAY:I

    iput v2, p0, Lcom/android/phone/Ringer;->INIT_VOLUME:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/phone/Ringer;->NOTIFY_FLASH:I

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->isStarredContact:Z

    iput v1, p0, Lcom/android/phone/Ringer;->mActiveSimId:I

    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iput v1, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    iput-boolean v2, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    iput-boolean v2, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    iput v1, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/phone/Ringer;->VIB_TIME_IN_RING_AFTER_VIB:I

    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->isDone:Z

    iput v1, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    new-instance v0, Lcom/android/phone/Ringer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->flashHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/phone/Ringer;->START_RING:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/phone/Ringer;->FIRST_RING_DELAY_FOR_SYNC_WITH_SCREEN:I

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/phone/Ringer;->FIRST_RING_DELAY_FOR_SYNC_WITH_SCREEN_COVER:I

    new-instance v0, Lcom/android/phone/Ringer$2;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer$2;-><init>(Lcom/android/phone/Ringer;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mSyncHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/Ringer;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/ExtraRinger;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/ExtraRinger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    :cond_0
    return-void
.end method

.method private StringToLongArray(Ljava/lang/String;)[J
    .locals 9
    .param p1    # Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    move-object v2, v4

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StringToLongArray, size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    array-length v5, v3

    if-gtz v5, :cond_2

    const-string v5, "string is null"

    invoke-direct {p0, v5, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    move-object v2, v4

    goto :goto_0

    :cond_2
    array-length v5, v3

    new-array v2, v5, [J

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v2, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    move-object v2, v4

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/Ringer;)V
    .locals 0
    .param p0    # Lcom/android/phone/Ringer;

    invoke-direct {p0}, Lcom/android/phone/Ringer;->checkTorchLight()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/Ringer;)Z
    .locals 1
    .param p0    # Lcom/android/phone/Ringer;

    iget-boolean v0, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/Ringer;)Z
    .locals 1
    .param p0    # Lcom/android/phone/Ringer;

    iget-boolean v0, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/Ringer;)I
    .locals 1
    .param p0    # Lcom/android/phone/Ringer;

    iget v0, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/phone/Ringer;I)I
    .locals 0
    .param p0    # Lcom/android/phone/Ringer;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/Ringer;)Lcom/android/phone/ExtraRinger;
    .locals 1
    .param p0    # Lcom/android/phone/Ringer;

    iget-object v0, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/Ringer;)J
    .locals 2
    .param p0    # Lcom/android/phone/Ringer;

    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/phone/Ringer;J)J
    .locals 0
    .param p0    # Lcom/android/phone/Ringer;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;
    .locals 1
    .param p0    # Lcom/android/phone/Ringer;

    iget-object v0, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;
    .locals 0
    .param p0    # Lcom/android/phone/Ringer;
    .param p1    # Lcom/android/phone/CallTextToSpeech;

    iput-object p1, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/phone/Ringer;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/Ringer;

    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Ringer;Ljava/lang/String;)[J
    .locals 1
    .param p0    # Lcom/android/phone/Ringer;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/Ringer;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Ringer;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/Ringer;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/Ringer;->controlFlashNotification(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/Ringer;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/Ringer;)I
    .locals 1
    .param p0    # Lcom/android/phone/Ringer;

    iget v0, p0, Lcom/android/phone/Ringer;->mActiveSimId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/Ringer;)I
    .locals 1
    .param p0    # Lcom/android/phone/Ringer;

    iget v0, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    return v0
.end method

.method private checkCallMotion()V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_overturn"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRingHandler: MOTION_OVERTURN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/phone/CallMotion;

    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/phone/CallMotion;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    invoke-virtual {v1}, Lcom/android/phone/CallMotion;->startMotionCatch()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkFlashCallMotion()V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "flash_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRingHandler: FLASH_NOTIFICATION is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/phone/CallMotion;

    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const/16 v3, 0x56

    invoke-direct {v1, v2, v3}, Lcom/android/phone/CallMotion;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    invoke-virtual {v1}, Lcom/android/phone/CallMotion;->startMotionCatch()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkRingingVibration()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAnsweringMessageSetToZero()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "- starting vibrator..."

    invoke-direct {p0, v0, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "- starting vibrator..."

    invoke-direct {p0, v0, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private checkTorchLight()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "torch_light"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableAssistiveLightBeforeStart : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldNotiLight()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/phone/Ringer;->setIsDone(Z)V

    new-instance v2, Lcom/android/phone/Ringer$NotificationFlashThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/Ringer$NotificationFlashThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v2, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    const-string v2, "- starting notification flash...."

    invoke-direct {p0, v2, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private checkingRecoding()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckVoiceRecorder()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Ringer"

    const-string v5, "CheckVoiceRecorder() = true"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "vt_audio_processing_on_ap"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hasCSVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v2, v6, :cond_1

    if-nez v2, :cond_1

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-lez v4, :cond_7

    :cond_1
    iget-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v4, :cond_7

    new-instance v4, Lcom/android/phone/Ringer$VibratorThread;

    invoke-direct {v4, p0, v7}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    const-string v4, "- starting vibrator...for voice recording"

    invoke-direct {p0, v4, v6}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v4, :cond_2

    const-string v4, "Play Headset ringtone for voice recording.."

    invoke-direct {p0, v4, v6}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    new-instance v4, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-direct {v4, p0, v7}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    iget-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckVideoRecorder()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Ringer"

    const-string v5, "CheckVideoRecorder() = true"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "feature_skt_tphone"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    :cond_6
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->notVibrateDuringVideoRecording(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    const-string v4, "skipping ring because volume is zero for voice recording"

    invoke-direct {p0, v4, v6}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private controlFlashNotification(Z)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlFlashNotification - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    :try_start_0
    sget-object v0, Lcom/android/phone/Ringer;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_0

    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    sput-object v0, Lcom/android/phone/Ringer;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    sget-object v0, Lcom/android/phone/Ringer;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/phone/Ringer;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_light"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlFlashNotification assitiveOn - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/phone/Ringer;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getActualRingtonePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string v0, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move-object v1, v3

    goto :goto_2

    :cond_5
    move-object v1, p1

    goto :goto_1
.end method

.method static init(Landroid/content/Context;Lcom/android/phone/BluetoothManager;)Lcom/android/phone/Ringer;
    .locals 4

    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothManager;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    :goto_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static initSecond(Landroid/content/Context;Lcom/android/phone/BluetoothManager;)Lcom/android/phone/Ringer;
    .locals 4

    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstanceSecond:Lcom/android/phone/Ringer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothManager;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstanceSecond:Lcom/android/phone/Ringer;

    :goto_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstanceSecond:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSecond() called multiple times!  sInstanceSecond = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstanceSecond:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isRingtonePlaying()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    move v0, v3

    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isZeroVolume()Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v2, v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v2, v5, :cond_4

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    const-string v2, "skipping ring because volume is zero"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v2, :cond_3

    const-string v2, "Play Headset ringtone.."

    invoke-direct {p0, v2, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    new-instance v2, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    iget-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "Ringer"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "Ringer"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeLooper()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    new-instance v0, Lcom/android/phone/Ringer$3;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$3;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private setLedNotification()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_incoming_notification"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "setAttentionLight!"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->showBluetoothIndication()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x1

    const/16 v3, 0xff

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x1

    const v3, 0xffffff

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method isHeadsetRingtonePlaying()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->isRinging()Z

    move-result v0

    :cond_0
    return v0
.end method

.method isNotiFlashing()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isRinging()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isHeadsetRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isNotiFlashing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isValidRingtoneURI(Landroid/net/Uri;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isValidRingtoneURI true"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    :cond_0
    :goto_2
    const-string v1, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / uri.getScheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-nez v0, :cond_1

    const-string v1, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidRingtoneURI : Invalid URI - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :catch_0
    move-exception v1

    const-string v1, "isValidRingtoneURI exception"

    invoke-direct {p0, v1, v6}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_1

    :cond_4
    move v0, v7

    goto :goto_3
.end method

.method isVibrating()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ring()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "ring()..."

    invoke-direct {p0, v0, v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/Ringer;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/Ringer;->mSyncHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/Ringer;->mSyncHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method ringAfterDelay()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ringAfterDelay()..."

    invoke-direct {p0, v3, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    monitor-enter p0

    :try_start_0
    const-string v3, "voip_interworking"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "feature_skt_tphone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/android/phone/TPhoneUtils;->isRelaxMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "Ringer"

    const-string v3, "TPhone RelaxMode: Don\'t Start the ringtone and/or vibrator."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/Ringer;->setLedNotification()V

    invoke-direct {p0}, Lcom/android/phone/Ringer;->checkCallMotion()V

    invoke-direct {p0}, Lcom/android/phone/Ringer;->checkFlashCallMotion()V

    invoke-direct {p0}, Lcom/android/phone/Ringer;->checkingRecoding()Z

    move-result v3

    if-eqz v3, :cond_3

    monitor-exit p0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/Ringer;->checkRingingVibration()V

    iget-object v3, p0, Lcom/android/phone/Ringer;->flashHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/Ringer;->flashHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/phone/Ringer;->flashHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/Ringer;->flashHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isZeroVolume()Z

    move-result v3

    if-eqz v3, :cond_5

    monitor-exit p0

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    const-string v3, "check_ringtone_repeat"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "/system/media/audio/ringtones/Beep_once.ogg"

    iget-object v4, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/android/phone/Ringer;->getActualRingtonePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Ringtone does not repeat"

    invoke-static {v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    iget v3, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    if-lez v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const-wide/16 v5, 0x1770

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isReadOutNotificatonOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/phone/Ringer;->isStarredContact:Z

    if-nez v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_8
    :goto_2
    const-string v2, "block_play_tts_on_incoming"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    :cond_9
    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/Ringer;->isStarredContact:Z

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAnsweringMessageSetToZero()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_0

    :cond_b
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_c
    move v1, v2

    goto :goto_2

    :cond_d
    const-string v2, "extended_restrict_international_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isIntIncomingCallVoiceNoti()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_e
    const-string v2, "ring_mute_during_barge_in"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isVoiceControlOnForIncomingCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_f
    iget-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delaying ring by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v6, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method setActivePhone(I)V
    .locals 2
    .param p1    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ringer: phone id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/phone/Ringer;->mActiveSimId:I

    return-void
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 6
    .param p1    # Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomRingtoneUri : default uri, recommendation_time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time_2"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomRingtoneUri : default uri, recommendation_time_2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "highlight_offset"

    const-string v2, "highlight_offset"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomRingtoneUri : custom uri, offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iput v5, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    const-string v2, "setCustomRingtoneUri : custom uri, offset = 0"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;I)V
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri2:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public setCustomVibrationUri(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mCustomVibrationUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomVibrationUri:Landroid/net/Uri;

    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$VibratorThread;->stopThread()V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    new-instance v0, Lcom/android/phone/Ringer$VibratorThread;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    const-string v0, "- re-starting vibrator..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public setIsDone(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/Ringer;->isDone:Z

    return-void
.end method

.method shouldNotiLight()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flash_notification"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method shouldVibrate()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iget-object v6, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v3

    iget-object v6, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ringtone_after_vibration"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldVibrate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget v6, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    if-lez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v1, 0x0

    const-string v6, "enhanced_driving_mode"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Driving mode on, Don\'t make vibration in Vibration when ringing"

    invoke-static {v6}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_0

    move v4, v5

    goto :goto_0

    :cond_3
    if-eq v2, v4, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public stopNotiFlash()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isNotiFlashing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-stopNotiFlash: cleaning up notiflash thread..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/Ringer;->controlFlashNotification(Z)V

    iget-object v0, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$NotificationFlashThread;->stopThread()V

    iput-object v2, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    invoke-virtual {v0}, Lcom/android/phone/CallMotion;->stopMotionCatch()V

    iput-object v2, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    :cond_1
    return-void
.end method

.method stopRing()V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    const-string v4, "stopRing()..."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/phone/Ringer;->mSyncHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/Ringer;->mSyncHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/Ringer;->mSyncHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "- stopRing: cleaning up headsetRingtone thread..."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    :cond_2
    iget-object v4, p0, Lcom/android/phone/Ringer;->mSyncHandler:Landroid/os/Handler;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/Ringer;->mSyncHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/Ringer;->mSyncHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v4, :cond_c

    const-string v4, "extra_ringer"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    invoke-virtual {v4}, Lcom/android/phone/ExtraRinger;->stopExtraRinger()V

    :cond_4
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRing() setStreamVolume - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v4, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRing() getStreamVolume - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    :cond_5
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "- stopRing: cleaning up vibrator thread..."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v4}, Lcom/android/phone/Ringer$VibratorThread;->stopThread()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    :cond_7
    iget-object v4, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isNotiFlashing()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/phone/Ringer;->isDone:Z

    if-nez v4, :cond_9

    const-string v4, "-stopRing: cleaning up notiflash thread..."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "torch_light"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_d

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableAssistiveLight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/phone/Ringer;->controlFlashNotification(Z)V

    iget-object v3, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    invoke-virtual {v3}, Lcom/android/phone/Ringer$NotificationFlashThread;->stopThread()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    :cond_8
    if-eqz v1, :cond_e

    const-wide/16 v3, 0x5dc

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/phone/Ringer;->controlFlashNotification(Z)V

    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/phone/Ringer;->isDone:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    invoke-virtual {v3}, Lcom/android/phone/CallMotion;->stopMotionCatch()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    :cond_a
    iget-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    invoke-virtual {v3}, Lcom/android/phone/CallMotion;->stopMotionCatch()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    :cond_b
    monitor-exit p0

    return-void

    :cond_c
    const-string v4, "- stopRing: null mRingHandler!"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    if-ne v4, v1, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_d
    move v1, v3

    goto :goto_2

    :cond_e
    const/4 v3, 0x0

    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/phone/Ringer;->controlFlashNotification(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method updateHeadsetRingtoneState()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/Ringer;->mActiveSimId:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "- updateHeadsetRingtoneState: cleaning up headsetRingtone thread..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    :cond_5
    iput-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    goto :goto_0
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1    # Lcom/android/internal/telephony/Phone;

    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    return-void
.end method
