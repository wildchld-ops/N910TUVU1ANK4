.class public abstract Landroid/hardware/motion/MotionRecognitionSARAP;
.super Ljava/lang/Object;
.source "MotionRecognitionSARAP.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionSARAP$1;,
        Landroid/hardware/motion/MotionRecognitionSARAP$PowerBckOffReceiver;,
        Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;
    }
.end annotation


# static fields
.field private static final ACTION_POWER_BACKOFF:Ljava/lang/String; = "com.samsung.MotionRecognitionService.action.POWER_BACKOFF"

.field private static final AUTO_POWER_OFF_REQUEST:I = 0x0

.field protected static final FLAT_DOWN:I = 0x1

.field protected static final FLAT_UP:I = 0x0

.field private static final MAX_MAGNITUDE:F = 10.8f

.field private static final MAX_TILT:I = 0x64

.field private static final MIN_MAGNITUDE:F = 8.8f

.field private static final MIN_TILT:I = 0x50

.field protected static final NO_FLAT:I = -0x1

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionSARAP"


# instance fields
.field private cnt:I

.field private mAcquireWakelock:Z

.field private mAlarm:Landroid/app/AlarmManager;

.field private final mAutoPowerOffLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPm:Landroid/os/PowerManager;

.field private mPollingTime:J

.field private mProxlistener:Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;

.field private mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSm:Landroid/hardware/SensorManager;

.field private mStatus:Z

.field private mbProximity:Z

.field private mfilter:Landroid/content/IntentFilter;

.field private moldcondition:I

.field private moldstatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->cnt:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAutoPowerOffLock:Ljava/lang/Object;

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldstatus:I

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldcondition:I

    const-wide/32 v2, 0x186a0

    iput-wide v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mPollingTime:J

    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAcquireWakelock:Z

    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mbProximity:Z

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mContext:Landroid/content/Context;

    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mStatus:Z

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mSm:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAlarm:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.MotionRecognitionService.action.POWER_BACKOFF"

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mPendingIntent:Landroid/app/PendingIntent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mfilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mfilter:Landroid/content/IntentFilter;

    const-string v3, "com.samsung.MotionRecognitionService.action.POWER_BACKOFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/hardware/motion/MotionRecognitionSARAP$PowerBckOffReceiver;

    invoke-direct {v2, p0, v4}, Landroid/hardware/motion/MotionRecognitionSARAP$PowerBckOffReceiver;-><init>(Landroid/hardware/motion/MotionRecognitionSARAP;Landroid/hardware/motion/MotionRecognitionSARAP$1;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mPm:Landroid/os/PowerManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mPm:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "back_off"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v2, Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;-><init>(Landroid/hardware/motion/MotionRecognitionSARAP;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mProxlistener:Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;

    return-void
.end method

.method static synthetic access$002(Landroid/hardware/motion/MotionRecognitionSARAP;Z)Z
    .locals 0
    .param p0    # Landroid/hardware/motion/MotionRecognitionSARAP;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mbProximity:Z

    return p1
.end method

.method static synthetic access$100(Landroid/hardware/motion/MotionRecognitionSARAP;)V
    .locals 0
    .param p0    # Landroid/hardware/motion/MotionRecognitionSARAP;

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionSARAP;->acquire()V

    return-void
.end method

.method private acquire()V
    .locals 4

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAcquireWakelock:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->cnt:I

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mSm:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mSm:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v0, "MotionRecognitionSARAP"

    const-string v2, "acquire"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkFlat(FFF)I
    .locals 7
    .param p1    # F
    .param p2    # F
    .param p3    # F

    const/4 v2, -0x1

    mul-float v3, p1, p1

    mul-float v4, p2, p2

    add-float/2addr v3, v4

    mul-float v4, p3, p3

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    const v3, 0x410ccccd

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_0

    const v3, 0x412ccccd

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    :cond_0
    const-string v3, "MotionRecognitionSARAP"

    const-string v4, "magnitude error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2

    :cond_2
    div-float v3, p3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    const-wide v5, 0x404ca5dc20000000L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    const-string v3, "MotionRecognitionSARAP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tiltAngle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x50

    if-lt v3, v4, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x64

    if-gt v3, v4, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private release()V
    .locals 4

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mSm:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->cnt:I

    iget-wide v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mPollingTime:J

    invoke-direct {p0, v2, v3}, Landroid/hardware/motion/MotionRecognitionSARAP;->updatePollingTime(J)V

    const-string v0, "MotionRecognitionSARAP"

    const-string v2, "release"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAcquireWakelock:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setCondition()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mbProximity:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldstatus:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldcondition:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/hardware/motion/MotionRecognitionSARAP;->onChangeSARCondition(I)V

    :cond_0
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldcondition:I

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mbProximity:Z

    if-nez v0, :cond_3

    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldstatus:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldcondition:I

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/hardware/motion/MotionRecognitionSARAP;->onChangeSARCondition(I)V

    :cond_2
    iput v1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldcondition:I

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldcondition:I

    if-eq v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/hardware/motion/MotionRecognitionSARAP;->onChangeSARCondition(I)V

    :cond_4
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldcondition:I

    goto :goto_0
.end method

.method private updatePollingTime(J)V
    .locals 5
    .param p1    # J

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAlarm:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v0, "MotionRecognitionSARAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update PowerBackOffTime :: set the Time after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected disableSARBackOff()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mStatus:Z

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mStatus:Z

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAcquireWakelock:Z

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionSARAP;->release()V

    :cond_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mSm:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mProxlistener:Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAlarm:Landroid/app/AlarmManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldstatus:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldcondition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mbProximity:Z

    const-string v0, "MotionRecognitionSARAP"

    const-string/jumbo v2, "update PowerBackOffTime :: mAlarm is canceled."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected enableSARBackOff(J)V
    .locals 5
    .param p1    # J

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mStatus:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mStatus:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mStatus:Z

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mSm:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mProxlistener:Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mSm:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-wide p1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mPollingTime:J

    iget-wide v2, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->mPollingTime:J

    invoke-direct {p0, v2, v3}, Landroid/hardware/motion/MotionRecognitionSARAP;->updatePollingTime(J)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
    .param p2    # I

    return-void
.end method

.method public abstract onChangeSARCondition(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1    # Landroid/hardware/SensorEvent;

    const/4 v5, 0x1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v5, :cond_3

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionSARAP;->checkFlat(FFF)I

    move-result v0

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldstatus:I

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v1, "MotionRecognitionSARAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldstatus:I

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionSARAP;->setCondition()V

    :cond_1
    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->moldstatus:I

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->cnt:I

    if-lt v1, v5, :cond_2

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionSARAP;->release()V

    :cond_2
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionSARAP;->cnt:I

    :cond_3
    return-void
.end method
