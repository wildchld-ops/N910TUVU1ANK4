.class public Landroid/hardware/motion/MotionRecognitionSAR;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# static fields
.field private static final SAR_DEVICE_FLAT:I = 0x8

.field private static final SAR_DEVICE_FLAT_AP:I = 0x40

.field private static final SAR_DEVICE_GRIP:I = 0x1

.field private static final SAR_DEVICE_PORTRAIT:I = 0x80

.field private static final SAR_DEVICE_PROX:I = 0x2

.field private static final SAR_DEVICE_TURNOVER:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field private static final TRANSMIT_POWER_DEFAULT:I = 0x0

.field private static final TRANSMIT_POWER_FOR_PROXIMITY:I = 0x2

.field private static final TRANSMIT_POWER_WIFI_HOTSPOT:I = 0x1


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrPowerState_flat:Z

.field private mGripEnabled:Z

.field private mIsFlat:Z

.field mLockGripMotion:Ljava/lang/Object;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPostGripVal:S

.field private mPostProxVal:S

.field private mPostProxVal_Flat:Z

.field private mProxEnabled:Z

.field private mProxEnabled_flat:Z

.field private mSContextEnabled_flat:Z

.field private mSContextEnabled_portait:Z

.field private mSContextEnabled_turnover:Z

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSarAPBackoff:Landroid/hardware/motion/MotionRecognitionSARAP;

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private final mySContexFlatMotionListener:Landroid/hardware/scontext/SContextListener;

.field private final mySContexPortraitMotionListener:Landroid/hardware/scontext/SContextListener;

.field private final mySContexTurnOverMotionListener:Landroid/hardware/scontext/SContextListener;

.field private final sensorGripListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final sensorProxListener:Landroid/hardware/SensorEventListener;

.field private final sensorProxListener_Flat:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mLockGripMotion:Ljava/lang/Object;

    iput-short v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPostGripVal:S

    iput-short v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPostProxVal:S

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPostProxVal_Flat:Z

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mCurrPowerState_flat:Z

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mIsFlat:Z

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSAR$2;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionSAR$2;-><init>(Landroid/hardware/motion/MotionRecognitionSAR;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorGripListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSAR$3;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionSAR$3;-><init>(Landroid/hardware/motion/MotionRecognitionSAR;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorProxListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSAR$4;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionSAR$4;-><init>(Landroid/hardware/motion/MotionRecognitionSAR;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorProxListener_Flat:Landroid/hardware/SensorEventListener;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSAR$5;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionSAR$5;-><init>(Landroid/hardware/motion/MotionRecognitionSAR;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mySContexFlatMotionListener:Landroid/hardware/scontext/SContextListener;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSAR$6;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionSAR$6;-><init>(Landroid/hardware/motion/MotionRecognitionSAR;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mySContexTurnOverMotionListener:Landroid/hardware/scontext/SContextListener;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSAR$7;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionSAR$7;-><init>(Landroid/hardware/motion/MotionRecognitionSAR;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mySContexPortraitMotionListener:Landroid/hardware/scontext/SContextListener;

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorManager:Landroid/hardware/SensorManager;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mTelManager:Landroid/telephony/TelephonyManager;

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mGripEnabled:Z

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mProxEnabled:Z

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mProxEnabled_flat:Z

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_flat:Z

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_turnover:Z

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_portait:Z

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mCurrPowerState_flat:Z

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSAR$1;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/hardware/motion/MotionRecognitionSAR$1;-><init>(Landroid/hardware/motion/MotionRecognitionSAR;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSarAPBackoff:Landroid/hardware/motion/MotionRecognitionSARAP;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionSAR;)Lcom/android/internal/telephony/ITelephony;
    .locals 1

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/motion/MotionRecognitionSAR;)S
    .locals 1

    iget-short v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPostGripVal:S

    return v0
.end method

.method static synthetic access$1000(Landroid/hardware/motion/MotionRecognitionSAR;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionSAR;->setPowerState_Portait(Z)V

    return-void
.end method

.method static synthetic access$102(Landroid/hardware/motion/MotionRecognitionSAR;S)S
    .locals 0

    iput-short p1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPostGripVal:S

    return p1
.end method

.method static synthetic access$200(Landroid/hardware/motion/MotionRecognitionSAR;)S
    .locals 1

    iget-short v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPostProxVal:S

    return v0
.end method

.method static synthetic access$202(Landroid/hardware/motion/MotionRecognitionSAR;S)S
    .locals 0

    iput-short p1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPostProxVal:S

    return p1
.end method

.method static synthetic access$300(Landroid/hardware/motion/MotionRecognitionSAR;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionSAR;->setProximity_flat(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/motion/MotionRecognitionSAR;)Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionSAR;->setPowerState_flat()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/motion/MotionRecognitionSAR;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionSAR;->setFlat(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/hardware/motion/MotionRecognitionSAR;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mProxEnabled_flat:Z

    return v0
.end method

.method static synthetic access$602(Landroid/hardware/motion/MotionRecognitionSAR;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mProxEnabled_flat:Z

    return p1
.end method

.method static synthetic access$700(Landroid/hardware/motion/MotionRecognitionSAR;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorProxListener_Flat:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/motion/MotionRecognitionSAR;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/motion/MotionRecognitionSAR;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionSAR;->setPowerState_TurnOver(Z)V

    return-void
.end method

.method private isSpeakerOn()Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFlat(Z)V
    .locals 3

    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mIsFlat:Z

    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlat : flat motion event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mIsFlat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setPowerState_Portait(Z)V
    .locals 4

    const-string v1, "ril.backoffstate"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current backoffstate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    and-int/lit16 v0, v0, -0x81

    const-string v1, "MotionRecognitionService"

    const-string v2, "Portait, POWER_DEFAULT "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionSAR;->isCoverEquipment()Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit16 v0, v0, 0x80

    const-string v1, "MotionRecognitionService"

    const-string v2, "Portait, POWER_BACKOFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setPowerState_TurnOver(Z)V
    .locals 4

    const-string v1, "ril.backoffstate"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backoffstate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    and-int/lit8 v0, v0, -0x11

    const-string v1, "MotionRecognitionService"

    const-string v2, "POWER_DEFAULT "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionSAR;->isCoverEquipment()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionSAR;->isSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MotionRecognitionService"

    const-string v2, "skip : speaker on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    or-int/lit8 v0, v0, 0x10

    const-string v1, "MotionRecognitionService"

    const-string v2, "POWER_BACKOFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setPowerState_flat()Z
    .locals 6

    const/4 v2, 0x0

    const-string v3, "ril.backoffstate"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backoffstate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPostProxVal_Flat:Z

    iget-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mIsFlat:Z

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " prox : flat  =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPostProxVal_Flat:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mIsFlat:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " last status =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mCurrPowerState_flat:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mCurrPowerState_flat:Z

    if-eq v3, v2, :cond_3

    if-nez v2, :cond_2

    and-int/lit8 v0, v0, -0x9

    const-string v3, "MotionRecognitionService"

    const-string v4, "POWER_DEFAULT "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mCurrPowerState_flat:Z

    :cond_1
    return v2

    :catch_0
    move-exception v1

    const-string v3, "MotionRecognitionService"

    const-string v4, "RemoteException 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionSAR;->isCoverEquipment()Z

    move-result v3

    if-nez v3, :cond_1

    or-int/lit8 v0, v0, 0x8

    const-string v3, "MotionRecognitionService"

    const-string v4, "POWER_BACKOFF"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "MotionRecognitionService"

    const-string v4, "RemoteException 2"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v3, "MotionRecognitionService"

    const-string v4, "PowerState is not changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProximity_flat(Z)V
    .locals 3

    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPostProxVal_Flat:Z

    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProximity_flat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPostProxVal_Flat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public disableFlatMotion()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_flat:Z

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mySContexFlatMotionListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_flat:Z

    :cond_0
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mProxEnabled_flat:Z

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorProxListener_Flat:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mProxEnabled_flat:Z

    :cond_1
    invoke-direct {p0, v3}, Landroid/hardware/motion/MotionRecognitionSAR;->setProximity_flat(Z)V

    invoke-direct {p0, v3}, Landroid/hardware/motion/MotionRecognitionSAR;->setFlat(Z)V

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionSAR;->setPowerState_flat()Z

    :goto_0
    return-void

    :cond_2
    const-string v0, "MotionRecognitionService"

    const-string v1, "mPhoneService is null  "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected disableFlatMotionAP()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSarAPBackoff:Landroid/hardware/motion/MotionRecognitionSARAP;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionSARAP;->disableSARBackOff()V

    :try_start_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disableGripSensor()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mGripEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorGripListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mGripEnabled:Z

    :try_start_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disablePortraitMotion()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_portait:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mySContexPortraitMotionListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_portait:Z

    :cond_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Landroid/hardware/motion/MotionRecognitionSAR;->setPowerState_Portait(Z)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "MotionRecognitionService"

    const-string v1, "mPhoneService is null  "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableProxSensor()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mProxEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorProxListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mProxEnabled:Z

    :try_start_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disableTurnOverMotion()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_turnover:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mySContexTurnOverMotionListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_turnover:Z

    :cond_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Landroid/hardware/motion/MotionRecognitionSAR;->setPowerState_TurnOver(Z)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "MotionRecognitionService"

    const-string v1, "mPhoneService is null  "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableFlatMotion()V
    .locals 4

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_0

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_1

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mWindowManager:Landroid/view/IWindowManager;

    :cond_1
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    const-string v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_2
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_flat:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mySContexFlatMotionListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_flat:Z

    :cond_3
    return-void
.end method

.method protected enableFlatMotionAP()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mWindowManager:Landroid/view/IWindowManager;

    :cond_1
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSarAPBackoff:Landroid/hardware/motion/MotionRecognitionSARAP;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionSARAP;->enableSARBackOff(J)V

    return-void
.end method

.method public enableGripSensor()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mGripEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorGripListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10018

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mGripEnabled:Z

    :cond_1
    return-void
.end method

.method public enablePortraitMotion()V
    .locals 4

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_0

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_1

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mWindowManager:Landroid/view/IWindowManager;

    :cond_1
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    const-string v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_2
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_portait:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mySContexPortraitMotionListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_portait:Z

    :cond_3
    return-void
.end method

.method public enableProxSensor()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mProxEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorProxListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSAR;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mProxEnabled:Z

    :cond_1
    return-void
.end method

.method public enableTurnOverMotion()V
    .locals 4

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_0

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_1

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mWindowManager:Landroid/view/IWindowManager;

    :cond_1
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    const-string v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_2
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_turnover:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mySContexTurnOverMotionListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mSContextEnabled_turnover:Z

    :cond_3
    return-void
.end method

.method public isCoverEquipment()Z
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x32

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionSAR;->mLockGripMotion:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v6, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    :goto_0
    if-nez v3, :cond_1

    :try_start_1
    const-string v6, "MotionRecognitionService"

    const-string v8, "Output file is null!"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " cover status =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x32

    if-ne v0, v6, :cond_2

    const/4 v5, 0x0

    :goto_2
    return v5

    :catch_0
    move-exception v1

    :try_start_3
    const-string v6, "MotionRecognitionService"

    const-string v8, "File not found!"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    :goto_3
    :try_start_6
    const-string v6, "MotionRecognitionService"

    const-string v8, "File read fail!!"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    :cond_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_2
.end method
