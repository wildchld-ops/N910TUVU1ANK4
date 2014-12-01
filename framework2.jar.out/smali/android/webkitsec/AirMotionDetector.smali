.class public Landroid/webkitsec/AirMotionDetector;
.super Ljava/lang/Object;
.source "AirMotionDetector.java"

# interfaces
.implements Lcom/samsung/android/service/gesture/GestureListener;
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/AirMotionDetector$AirMotionSettings;,
        Landroid/webkitsec/AirMotionDetector$AirMotionListener;,
        Landroid/webkitsec/AirMotionDetector$IAirMotionListener;
    }
.end annotation


# static fields
.field public static final AIR_MOTION_AIRPIN:I = 0x1

.field public static final AIR_MOTION_AIRSCROLL:I = 0x0

.field public static final AIR_MOTION_NONE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AirMotionDetector"


# instance fields
.field private final AIR_MOTION_PROVIDER:Ljava/lang/String;

.field private mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

.field private mAirMotionSettings:Landroid/webkitsec/AirMotionDetector$AirMotionSettings;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mMotionType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ir_provider"

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector;->AIR_MOTION_PROVIDER:Ljava/lang/String;

    iput-object v2, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    iput-boolean v1, p0, Landroid/webkitsec/AirMotionDetector;->mConnected:Z

    iput-object v2, p0, Landroid/webkitsec/AirMotionDetector;->mContext:Landroid/content/Context;

    iput v1, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    iput-object p1, p0, Landroid/webkitsec/AirMotionDetector;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;

    iget-object v1, p0, Landroid/webkitsec/AirMotionDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;-><init>(Landroid/webkitsec/AirMotionDetector;Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionSettings:Landroid/webkitsec/AirMotionDetector$AirMotionSettings;

    return-void
.end method


# virtual methods
.method public destoryAirMotionDetector()V
    .locals 2

    const-string v0, "AirMotionDetector"

    const-string v1, "Destory AirMotionDetector."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/AirMotionDetector;->setAirMotionLintener(Landroid/webkitsec/AirMotionDetector$AirMotionListener;I)V

    goto :goto_0
.end method

.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "AirMotionDetector"

    const-string v1, " GESTURE_EVENT_SWEEP_LEFT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    invoke-virtual {v0}, Landroid/webkitsec/AirMotionDetector$AirMotionListener;->onLeft()V

    goto :goto_0

    :pswitch_2
    const-string v0, "AirMotionDetector"

    const-string v1, " GESTURE_EVENT_SWEEP_RIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    invoke-virtual {v0}, Landroid/webkitsec/AirMotionDetector$AirMotionListener;->onRight()V

    goto :goto_0

    :pswitch_3
    const-string v0, "AirMotionDetector"

    const-string v1, " GESTURE_EVENT_SWEEP_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    invoke-virtual {v0}, Landroid/webkitsec/AirMotionDetector$AirMotionListener;->onUp()V

    goto :goto_0

    :pswitch_4
    const-string v0, "AirMotionDetector"

    const-string v1, " GESTURE_EVENT_SWEEP_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    invoke-virtual {v0}, Landroid/webkitsec/AirMotionDetector$AirMotionListener;->onDown()V

    goto :goto_0

    :pswitch_5
    const-string v0, "AirMotionDetector"

    const-string v1, " GESTURE_EVENT_HOVER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onServiceConnected()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AirMotionDetector"

    const-string v1, " Service is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Landroid/webkitsec/AirMotionDetector;->mConnected:Z

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_scroll"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_clip"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    const-string v0, "AirMotionDetector"

    const-string v1, " Service is disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/AirMotionDetector;->mConnected:Z

    return-void
.end method

.method public setAirMotionLintener(Landroid/webkitsec/AirMotionDetector$AirMotionListener;I)V
    .locals 3

    const-string v0, "AirMotionDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setAirMotionLintener. listner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",motionType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    iget-boolean v0, p0, Landroid/webkitsec/AirMotionDetector;->mConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionSettings:Landroid/webkitsec/AirMotionDetector$AirMotionSettings;

    invoke-virtual {v0}, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->checkAirMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v1, p0, Landroid/webkitsec/AirMotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    :cond_2
    iput-object p1, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    iput p2, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    iget-boolean v0, p0, Landroid/webkitsec/AirMotionDetector;->mConnected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_scroll"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_clip"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/webkitsec/AirMotionDetector;->destoryAirMotionDetector()V

    goto :goto_0
.end method
