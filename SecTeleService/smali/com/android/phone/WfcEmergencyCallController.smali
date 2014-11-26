.class public Lcom/android/phone/WfcEmergencyCallController;
.super Ljava/lang/Object;
.source "WfcEmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/WfcEmergencyCallController$6;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private isRILNotificationOnly:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCSCallFailedBecauseOfTimeout:Z

.field private mCSCallSucceeded:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEcmpObserver:Landroid/database/ContentObserver;

.field private mEmergencyCallPreference:I

.field private mEmergencyNumber:Ljava/lang/String;

.field private mFallbackWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private final mIsECSupported:Z

.field private mIsInService:Z

.field private final mIsVOPSSupported:Z

.field private final mPM:Landroid/os/PowerManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRAT:I

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mTemporaryDisableIms:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/phone/WfcEmergencyCallController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    iput-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mIsInService:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mRAT:I

    iput-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    const-string v0, "911"

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mTemporaryDisableIms:Z

    iput-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->isRILNotificationOnly:Z

    new-instance v0, Lcom/android/phone/WfcEmergencyCallController$1;

    invoke-direct {v0, p0}, Lcom/android/phone/WfcEmergencyCallController$1;-><init>(Lcom/android/phone/WfcEmergencyCallController;)V

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/WfcEmergencyCallController$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/phone/WfcEmergencyCallController$2;-><init>(Lcom/android/phone/WfcEmergencyCallController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mEcmpObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/WfcEmergencyCallController$3;

    invoke-direct {v0, p0}, Lcom/android/phone/WfcEmergencyCallController$3;-><init>(Lcom/android/phone/WfcEmergencyCallController;)V

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/WfcEmergencyCallController$4;

    invoke-direct {v0, p0}, Lcom/android/phone/WfcEmergencyCallController$4;-><init>(Lcom/android/phone/WfcEmergencyCallController;)V

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getEmergencyCallModePreference(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;

    move-result-object v0

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;->CS_PREFERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;

    if-ne v0, v3, :cond_1

    iput v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    :goto_0
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ECMP state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/WfcEmergencyCallController;->mEcmpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isEmergency(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v3, "Restoring registration state"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setEmergency(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v0, v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPM:Landroid/os/PowerManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "IntentDelayedImsRegistration"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/WfcEmergencyCallController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v0, "ril.ims.ltevoicesupport"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mIsVOPSSupported:Z

    const-string v0, "ril.ims.ecsupport"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mIsECSupported:Z

    return-void

    :cond_1
    iput v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/phone/WfcEmergencyCallController;)I
    .locals 1
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;

    iget v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mRAT:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/WfcEmergencyCallController;I)I
    .locals 0
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/WfcEmergencyCallController;->mRAT:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/WfcEmergencyCallController;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/WfcEmergencyCallController;->mIsInService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/WfcEmergencyCallController;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/WfcEmergencyCallController;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/WfcEmergencyCallController;)I
    .locals 1
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;

    iget v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/WfcEmergencyCallController;I)I
    .locals 0
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->handleDelayedRegistration()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/WfcEmergencyCallController;Landroid/os/Message;)V
    .locals 0
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;
    .param p1    # Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/android/phone/WfcEmergencyCallController;->handleCallDisconnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->handlePhoneStateChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->handleCSTimeoutForEmergency()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0
    .param p0    # Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->reportCallFailedWithLocalCauseToRil()V

    return-void
.end method

.method private createRilRequestForLocalHangBeforeTimeout()[B
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0xb

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-object v4

    :catch_0
    move-exception v2

    iget-object v5, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v6, "IOException!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    iget-object v5, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private delayIMSRegistration()V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "IntentDelayedImsRegistration"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v2, v7, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mTemporaryDisableIms:Z

    if-eqz v2, :cond_0

    iput-boolean v7, p0, Lcom/android/phone/WfcEmergencyCallController;->mTemporaryDisableIms:Z

    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v3, "delayed IMS registration: wait for + TEMPORARY_DELAY_IMS_REGISTRATION + (msecs)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v3, "delayed IMS registration: wait for 180000(msecs)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x2bf20

    add-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private disableImsTemporarily()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setEmergency(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    iput-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mTemporaryDisableIms:Z

    return-void
.end method

.method private disableWFCWhenCSCallIsSuccessful()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "disabling wifi call..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setEmergency(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private handleCSDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 3
    .param p1    # Lcom/android/internal/telephony/Connection$DisconnectCause;

    iget-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->isRILNotificationOnly:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "cause of disconnect is LOCAL: report it to RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/WfcEmergencyCallController;->reportCallFailedWithLocalCauseToRilInNewThread()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/WfcEmergencyCallController;->shouldCallBeRetriedOverIms(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "Trigger CS->IMS fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->placeEmergencyCallOverIMS()V

    :goto_1
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->unregisterForDisconnectAndCallStateChange()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "delay IMS registration, since call was placed successfully over GSM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->delayIMSRegistration()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CS call failed before EVENT_CS_TIMEOUT_FOR_EMERGENCY occured with reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleCSTimeoutForEmergency()V
    .locals 5

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->isInService()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCSTimeoutForEmergency(): is in service - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v3, "hangup gsm emergency call..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->stopFallbackTimer()V

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangup call failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleCallDisconnect(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cause of disconnect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/WfcEmergencyCallController;->handleCSDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-boolean v6, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    return-void

    :catchall_0
    move-exception v3

    iput-boolean v6, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    throw v3
.end method

.method private handleCornerCaseForWifiOnlyProfile(Lcom/android/internal/telephony/Call$State;)V
    .locals 5
    .param p1    # Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getProfile(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERING:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->NEVER_USE_CELLULAR_NETWORK:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    if-ne v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v4, "disabling wifi call temporarily..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->disableImsTemporarily()V

    :cond_0
    return-void
.end method

.method private handleDelayedRegistration()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setEmergency(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "Delaying the registration further since call is not IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->delayIMSRegistration()V

    goto :goto_0
.end method

.method private handlePhoneStateChanged()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->isRILNotificationOnly:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_STATE_CHANGED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/phone/WfcEmergencyCallController;->handleCornerCaseForWifiOnlyProfile(Lcom/android/internal/telephony/Call$State;)V

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v2, "Call was placed successfully over GSM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->disableWFCWhenCSCallIsSuccessful()V

    goto :goto_0
.end method

.method private isInService()Z
    .locals 2

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private placeEmergencyCallOverIMS()V
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->unregisterForDisconnectAndCallStateChange()V

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v2, "placeEmergencyCallOverIMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "gsmcall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private registerForDisconnectAndCallStateChange()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "registerForDisconnectAndCallStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private reportCallFailedWithLocalCauseToRil()V
    .locals 8

    iget-object v5, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v6, "reportCallFailedWithLocalCauseToRil"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0xc8

    new-array v2, v5, [B

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->createRilRequestForLocalHangBeforeTimeout()[B

    move-result-object v1

    invoke-interface {v4, v1, v2}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendOemRilRequestRaw: return value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v5, "sendWfcSwitchStateAndCurrentProfileToRil failed:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldCallBeRetriedOverIms(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z
    .locals 4
    .param p1    # Lcom/android/internal/telephony/Connection$DisconnectCause;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cause of disconnect is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Retry the call over IMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v2, "shouldCallBeRetriedOverIms(): Call became ACTIVE then disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v2, "cause of disconnect is LOCAL and timeout did not occured: report it to RIL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/WfcEmergencyCallController;->reportCallFailedWithLocalCauseToRilInNewThread()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!GSM call disconnected before timeout occured:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Investigate!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startFallbackTimer()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "Emergency will timeout after 5000"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mFallbackWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mFallbackWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopFallbackTimer()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mFallbackWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mFallbackWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private unregisterForDisconnectAndCallStateChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "unregisterForDisconnectAndCallStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public reportCallFailedWithLocalCauseToRilInNewThread()V
    .locals 1

    new-instance v0, Lcom/android/phone/WfcEmergencyCallController$5;

    invoke-direct {v0, p0}, Lcom/android/phone/WfcEmergencyCallController$5;-><init>(Lcom/android/phone/WfcEmergencyCallController;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected startTimerForCS(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getProfile(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->isInService()Z

    move-result v0

    iput-boolean v6, p0, Lcom/android/phone/WfcEmergencyCallController;->isRILNotificationOnly:Z

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTimerForCS(): ECMP="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", in service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isRegistered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->unregisterForDisconnectAndCallStateChange()V

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v4, "not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/WfcEmergencyCallController;->isRILNotificationOnly:Z

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->registerForDisconnectAndCallStateChange()V

    iget-boolean v3, p0, Lcom/android/phone/WfcEmergencyCallController;->isRILNotificationOnly:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v4, "Do not start the timer"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->startFallbackTimer()V

    goto :goto_0
.end method
