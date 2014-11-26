.class public Lcom/android/keyguard/sec/AirGestureMonitor;
.super Ljava/lang/Object;
.source "AirGestureMonitor.java"

# interfaces
.implements Lcom/samsung/android/service/gesture/GestureListener;
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mIsAirGestureEnable:Z

.field private mServiceConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mIsAirGestureEnable:Z

    new-instance v0, Lcom/samsung/android/service/gesture/GestureManager;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    return-void
.end method

.method private handleAirMove(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;->handleAirMove(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;->handleAirMove(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 3
    .param p1    # Lcom/samsung/android/service/gesture/GestureEvent;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "AirGestureMonitor"

    const-string v1, "GESTURE_EVENT_SWEEP_LEFT"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/AirGestureMonitor;->handleAirMove(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AirGestureMonitor"

    const-string v1, "GESTURE_EVENT_SWEEP_RIGHT"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/AirGestureMonitor;->handleAirMove(Z)V

    :cond_1
    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mServiceConnected:Z

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;)V
    .locals 4
    .param p1    # Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mIsAirGestureEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_item_move"

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public removeCallback()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mIsAirGestureEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unbindFromService()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AirGestureMonitor;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/gesture/GestureManager;->unbindFromService()V

    :cond_0
    return-void
.end method
