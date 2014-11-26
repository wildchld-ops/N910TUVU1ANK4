.class public Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleAdapter;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycleAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lcom/sec/android/app/camera/MonitoredActivity;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/MonitoredActivity;

    return-void
.end method

.method public onActivityDestroyed(Lcom/sec/android/app/camera/MonitoredActivity;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/MonitoredActivity;

    return-void
.end method

.method public onActivityStarted(Lcom/sec/android/app/camera/MonitoredActivity;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/MonitoredActivity;

    return-void
.end method

.method public onActivityStopped(Lcom/sec/android/app/camera/MonitoredActivity;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/MonitoredActivity;

    return-void
.end method
