.class public Lcom/android/phone/CallMotion;
.super Ljava/lang/Object;
.source "CallMotion.java"


# static fields
.field private static mCfmsService:Landroid/os/ICustomFrequencyManager;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionType:I

.field private mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

.field private mRinger:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/phone/CallMotion;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/phone/CallMotion$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallMotion$1;-><init>(Lcom/android/phone/CallMotion;)V

    iput-object v0, p0, Lcom/android/phone/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput-object p1, p0, Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/phone/CallMotion;->mMotionType:I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallMotion;)I
    .locals 1
    .param p0    # Lcom/android/phone/CallMotion;

    iget v0, p0, Lcom/android/phone/CallMotion;->mMotionType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0    # Lcom/android/phone/CallMotion;

    iget-object v0, p0, Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallMotion;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/CallMotion;

    iget-object v0, p0, Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;
    .locals 1
    .param p0    # Lcom/android/phone/CallMotion;

    iget-object v0, p0, Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallMotion;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/CallMotion;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/CallMotion;->controlFlashNotification(Z)V

    return-void
.end method

.method private controlFlashNotification(Z)V
    .locals 7
    .param p1    # Z

    const/4 v6, 0x1

    const-string v3, "CallMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "controlFlashNotification - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :try_start_0
    sget-object v3, Lcom/android/phone/CallMotion;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_0

    const-string v3, "CustomFrequencyManagerService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v3

    sput-object v3, Lcom/android/phone/CallMotion;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    sget-object v3, Lcom/android/phone/CallMotion;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "torch_light"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v3, "CallMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "controlFlashNotification assitiveOn - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v0, :cond_1

    sget-object v3, Lcom/android/phone/CallMotion;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v4, "CLOCK_SET_TORCH_LIGHT"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v3, "CallMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method


# virtual methods
.method startMotionCatch()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "CallMotion"

    const-string v1, "startMotionCatch"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    :cond_0
    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "CallMotion"

    const-string v1, "fail to register"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method stopMotionCatch()V
    .locals 3

    const-string v0, "CallMotion"

    const-string v1, "stopMotionCatch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method
