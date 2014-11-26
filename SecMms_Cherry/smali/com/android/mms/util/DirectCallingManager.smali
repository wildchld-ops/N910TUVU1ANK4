.class public Lcom/android/mms/util/DirectCallingManager;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DirectCallingManager$TTSListener;,
        Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;,
        Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;,
        Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;
    }
.end annotation


# static fields
.field private static final ACCELLEROMETER_OVER_THRESHOLD:F = 60.0f

.field private static final ACCELLEROMETER_UNDER_THRESHOLD:F = 20.0f

.field private static final AIR_MOTION_CHANGE:Ljava/lang/String; = "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

.field private static CALL_CONNECT_TONE:Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static final MOVING_THRESHOLD_TIME:I = 0x12c

.field public static final NORMAL:I = 0x0

.field private static final PROXIMITY_CLOSE_DISTANCE:I = 0x40

.field public static final PROXIMITY_DISABLE:I = 0x0

.field public static final PROXIMITY_ENABLE:I = 0x1

.field private static final PROXIMITY_FALSE:F = 5.0f

.field public static final PROXIMITY_FORCE_STOP:I = 0x2

.field private static final PROXIMITY_TRUE:F = 0.0f

.field private static final ROCOGNITION_ERROR_KEY:Ljava/lang/String; = "recognition_error"

.field private static final SPEECH_RECOGNITION_PARTIAL:I = 0x30

.field private static final SPEECH_RECORGNITION_COMPLETE:I = 0x20

.field private static final SPEECH_ROCORGNITION_ERROR:I = 0x50

.field private static final SPEECH_YES:Ljava/lang/String; = "yes"

.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static final START_RPOXIMITY_SENSOR:I = 0x60

.field private static final STOP_PROXIMITY_SENSOR:I = 0x70

.field private static final TAG:Ljava/lang/String; = "Mms/DirectCallingManager"

.field private static final TEXT_TO_SPEECH_COMPLETE:I = 0x10

.field public static final TUTORIAL:I = 0x1

.field private static bErrorSpeech:Z = false

.field private static final checkCallConnectTone:Z = false

.field public static mCheckTwiceEvent:Z = false

.field private static mIsStartedProximitySensor:Z = false

.field private static final usingMotionRecognition:Z = true

.field private static final usingTTS:Z

.field private static final usingVoiceRecognizer:Z


# instance fields
.field private IsTTSInitiated:Z

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field mAcceleration:[F

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAccelerormeterListener:Landroid/hardware/SensorEventListener;

.field private mActiveMode:I

.field private mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

.field private mFinishTutorial:Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;

.field mGravity:[F

.field private mHandler:Landroid/os/Handler;

.field public mIsProximityCloseDistance:Z

.field private mIsSpeechRecorgnizing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastTime:J

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mPaused:Z

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRegisteredAccelerometer:Z

.field private mRegisteredMotionRecognition:Z

.field private mRegisteredProximity:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTextToSpeechListener:Lcom/android/mms/util/DirectCallingManager$TTSListener;

.field private mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

.field private mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "call_conn_tone"

    sput-object v0, Lcom/android/mms/util/DirectCallingManager;->CALL_CONNECT_TONE:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%s"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/DirectCallingManager;->SRC_TAGS:[Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V
    .locals 2
    .param p1    # I
    .param p2    # Lcom/android/mms/ui/DirectCallActivityInterface;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->IsTTSInitiated:Z

    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    new-instance v0, Lcom/android/mms/util/DirectCallingManager$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$1;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    iput-object p2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    return-void
.end method

.method private SpeakCallQuestion()V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/DirectCallingManager;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->tryToCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/util/DirectCallingManager;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/util/DirectCallingManager;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/util/DirectCallingManager;)Z
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->isCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/util/DirectCallingManager;)Landroid/hardware/motion/MRListener;
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/util/DirectCallingManager;)Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/util/DirectCallingManager;)J
    .locals 2
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget-wide v0, p0, Lcom/android/mms/util/DirectCallingManager;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/mms/util/DirectCallingManager;J)J
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/util/DirectCallingManager;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->x:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # F

    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->x:F

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->y:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # F

    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->y:F

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->z:F

    return v0
.end method

.method static synthetic access$2102(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # F

    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->z:F

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->lastX:F

    return v0
.end method

.method static synthetic access$2202(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # F

    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->lastX:F

    return p1
.end method

.method static synthetic access$2300(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->lastY:F

    return v0
.end method

.method static synthetic access$2302(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # F

    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->lastY:F

    return p1
.end method

.method static synthetic access$2400(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->lastZ:F

    return v0
.end method

.method static synthetic access$2402(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # F

    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->lastZ:F

    return p1
.end method

.method static synthetic access$2500(Lcom/android/mms/util/DirectCallingManager;)Z
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerAccelerometer()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterAccelerometer()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/mms/util/DirectCallingManager;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/util/DirectCallingManager;->IsTTSInitiated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/util/DirectCallingManager;I)V
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->updateProximitySensorMode(I)V

    return-void
.end method

.method static synthetic access$3000()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    return v0
.end method

.method static synthetic access$3002(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/util/DirectCallingManager;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerMotionRecognition()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/util/DirectCallingManager;Landroid/content/Context;)V
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;)Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;
    .locals 0
    .param p0    # Lcom/android/mms/util/DirectCallingManager;
    .param p1    # Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/util/DirectCallingManager;)Z
    .locals 1
    .param p0    # Lcom/android/mms/util/DirectCallingManager;

    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    return v0
.end method

.method private getWakeLockProximity(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    :cond_0
    return-void
.end method

.method private isCall()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSensorReadyForDirectCall(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportMotionPickUpToCallOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeVibrate()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method private proximitySensorModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readyForCall(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->tryToCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void
.end method

.method private registerAccelerometer()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "registerAccelerometer"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/mms/util/DirectCallingManager$5;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$5;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private registerMotionRecognition()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "registerMotionRecognition"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/mms/util/DirectCallingManager$3;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$3;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/DirectCallingManager$4;

    invoke-direct {v1, p0}, Lcom/android/mms/util/DirectCallingManager$4;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mRegisteredMotionRecognition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerProximitySensor()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "registerProximitySensor"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/mms/util/DirectCallingManager$6;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$6;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    iput-boolean v3, p0, Lcom/android/mms/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setIsSpeechRecorgnizing(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsSpeechRecorgnizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/mms/util/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    return-void
.end method

.method private setMotionSensor(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportMotionPickUpToCallOut()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    goto :goto_0
.end method

.method private setTextToSpeech(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    return-void
.end method

.method private setVoiceRecognizer(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/util/DirectCallingManager$2;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$2;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    :cond_0
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method private setVolumeForTTS()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    return-void
.end method

.method private speakText(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "streamType"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p1, v6, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v1

    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "utteranceId"

    const-string v3, "DirectCalling ended"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4, v6, v0}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v1

    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playSilence     ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v1, :cond_0

    sput-boolean v5, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v5, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    :cond_0
    return-void
.end method

.method private startSpeechRecognize()V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "Mms/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSpeechRecognize... recongnition Available : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "calling_package"

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE"

    const-string v2, "en-US"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "start Listening... "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "stop listtening... "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopSpeechRecognition()V
    .locals 0

    return-void
.end method

.method private stopTTS()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "stopTTS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeechListener:Lcom/android/mms/util/DirectCallingManager$TTSListener;

    if-eqz v1, :cond_1

    iput-object v3, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeechListener:Lcom/android/mms/util/DirectCallingManager$TTSListener;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "TTS is shutdown"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryToCall(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    const/4 v0, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->makeVibrate()V

    :cond_0
    iget v1, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    if-eqz v1, :cond_1

    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "tryToCall - makeCall"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "DICL"

    invoke-static {v1, v2}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    invoke-interface {v1}, Lcom/android/mms/ui/DirectCallActivityInterface;->hideSipForDirectCall()V

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    invoke-interface {v2}, Lcom/android/mms/ui/DirectCallActivityInterface;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    return-void
.end method

.method private unregisterAccelerometer()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "unregisterAccelerometer"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private unregisterMotionRecognition()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "unregisterMotionRecognition"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private unregisterProximity()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "unregisterProximity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v2, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    iput-boolean v2, p0, Lcom/android/mms/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private updateProximitySensorMode(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProximitySensorMode(), proximitySensorModeEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->proximitySensorModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerProximitySensor()V

    goto :goto_0

    :pswitch_1
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    :pswitch_2
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private wakeLockProximity()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "updateProximitySensorMode: lock already held."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private wakeUnlockProximity()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "updateProximitySensorMode: lock already released."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected AnalizeRecorgnitionPartialResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "Mms/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionPartialResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected AnalizeRecorgnitionResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "Mms/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPickupToCallOut(Landroid/content/Context;)Z
    .locals 6
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportMotionPickUpToCallOut()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget v4, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    if-eq v4, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "master_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v2, :cond_3

    if-ne v0, v2, :cond_3

    :goto_1
    const-string v3, "Mms/DirectCallingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPickupToCallOut() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method protected onResultErrorCode(I)V
    .locals 6
    .param p1    # I

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResultErrorCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/util/DirectCallingManager;->speakText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    invoke-direct {p0, v5}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void

    :pswitch_0
    const v2, 0x7f0c0229

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v2, 0x7f0c022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0c022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v2, 0x7f0c022c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v2, 0x7f0c022d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const v2, 0x7f0c022e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const v2, 0x7f0c022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const v2, 0x7f0c0230

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const v2, 0x7f0c0231

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public pause(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->getPickupToCallOut(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->stopTTS()V

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->stopSpeechRecognition()V

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterMotionRecognition()V

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->getPickupToCallOut(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    if-nez v2, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;-><init>(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$1;)V

    iput-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    invoke-interface {v2}, Lcom/android/mms/ui/DirectCallActivityInterface;->isAvailableDirectCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->pause(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v2, "Mms/DirectCallingManager"

    const-string v3, "resume"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setContext(Landroid/content/Context;)V

    sput-boolean v4, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v4, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v2, :cond_4

    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_4
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    if-nez v2, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;-><init>(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$1;)V

    iput-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->setRegistered(Z)V

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerMotionRecognition()V

    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setActiveMode(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    return-void
.end method

.method public setFinishTutorialListener(Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;)V
    .locals 0
    .param p1    # Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;

    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager;->mFinishTutorial:Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;

    return-void
.end method

.method public setPickupToCallOut(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pick_up_to_call_out"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPickupToCallOut() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
