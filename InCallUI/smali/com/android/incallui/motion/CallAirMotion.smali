.class public Lcom/android/incallui/motion/CallAirMotion;
.super Ljava/lang/Object;
.source "CallAirMotion.java"

# interfaces
.implements Lcom/samsung/android/service/gesture/GestureListener;
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# instance fields
.field private final EVENT_INTERVAL_SWEEP:I

.field private final EVENT_INTERVAL_WAVE:I

.field private mCallAirMotionListener:Lcom/android/incallui/motion/CallAirMotionListener;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mEventTime:[J

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mConnected:Z

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    const/16 v1, 0x9c4

    iput v1, p0, Lcom/android/incallui/motion/CallAirMotion;->EVENT_INTERVAL_WAVE:I

    const/16 v1, 0x320

    iput v1, p0, Lcom/android/incallui/motion/CallAirMotion;->EVENT_INTERVAL_SWEEP:I

    iput-object p1, p0, Lcom/android/incallui/motion/CallAirMotion;->mContext:Landroid/content/Context;

    :try_start_0
    new-instance v1, Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v2, p0, Lcom/android/incallui/motion/CallAirMotion;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "CallAirMotion"

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallAirMotion Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private handleEvent(J)V
    .locals 7
    .param p1    # J

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    iget-object v2, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    aget-wide v2, v2, v5

    aput-wide v2, v1, v4

    iget-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    iget-object v2, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    aget-wide v2, v2, v6

    aput-wide v2, v1, v5

    iget-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    aput-wide p1, v1, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEventTime[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    aget-wide v2, v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEventTime[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    aget-wide v2, v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEventTime[2] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    aget-wide v2, v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP1:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iget-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    aget-wide v1, v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    aget-wide v1, v1, v6

    iget-object v3, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    aget-wide v3, v3, v5

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x320

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP2:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventType  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mCallAirMotionListener:Lcom/android/incallui/motion/CallAirMotionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mCallAirMotionListener:Lcom/android/incallui/motion/CallAirMotionListener;

    invoke-interface {v1, v0}, Lcom/android/incallui/motion/CallAirMotionListener;->onReceiveSweep(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_0
    const-string v1, "SPE"

    const-string v2, "com.android.phone.CallAirMotion: ACTION_GESTURE OUT"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP1:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "CallAirMotion"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 2
    .param p1    # Lcom/samsung/android/service/gesture/GestureEvent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    const-string v0, "SPE"

    const-string v1, "com.android.phone.CallAirMotion: ACTION_GESTURE"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/motion/CallAirMotion;->handleEvent(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "onServiceConnected"

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mConnected:Z

    invoke-virtual {p0}, Lcom/android/incallui/motion/CallAirMotion;->startMotionCatch()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    const-string v0, "onServiceDisconnected"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/motion/CallAirMotion;->mConnected:Z

    return-void
.end method

.method public resetTime()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/android/incallui/motion/CallAirMotion;->mEventTime:[J

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    return-void
.end method

.method public setCallAirMotionListener(Lcom/android/incallui/motion/CallAirMotionListener;)V
    .locals 0
    .param p1    # Lcom/android/incallui/motion/CallAirMotionListener;

    iput-object p1, p0, Lcom/android/incallui/motion/CallAirMotion;->mCallAirMotionListener:Lcom/android/incallui/motion/CallAirMotionListener;

    return-void
.end method

.method public startMotionCatch()V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "startMotionCatch"

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mConnected:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v2, "ir_provider"

    const-string v3, "air_motion_call_accept"

    invoke-virtual {v1, p0, v2, v3}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "startMotionCatch- registerListener in IR_PROVIDER"

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/motion/CallAirMotion;->resetTime()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMotionCatch Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopMotionCatch()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "stopMotionCatch"

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mConnected:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v2, "ir_provider"

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "stopMotionCatch- unregisterListener in IR_PROVIDER"

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMotionCatch Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindFromService()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/motion/CallAirMotion;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/gesture/GestureManager;->unbindFromService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindFromService Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/motion/CallAirMotion;->log(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
