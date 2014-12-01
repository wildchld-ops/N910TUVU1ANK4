.class final Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;
.super Lcom/samsung/surfacewidget/IRemoteServiceCallback$Stub;
.source "SurfaceWidgetConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WidgetViewCommunicator"
.end annotation


# instance fields
.field private mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

.field private final mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

.field private mPositionUpdatesOn:Z

.field private final mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

.field private final mWidgetViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/SurfaceWidgetView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/SurfaceWidgetConnection$Name;Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/surfacewidget/IRemoteServiceCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mPositionUpdatesOn:Z

    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;)Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;)Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    return-object p1
.end method

.method private static logWidgetViewUnavailable(Ljava/lang/String;)V
    .locals 3

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": widget view is no longer available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptedFocus(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'s service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v0, "accepted"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " focus"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v0, "did not accept"

    goto :goto_0
.end method

.method public acceptedSurfaceSize(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptedSurfaceSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetView;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->setRotationState(Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_1

    new-instance v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$10;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$10;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/android/launcher2/SurfaceWidgetView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public declared-synchronized arePositionUpdatesOn()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mPositionUpdatesOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkVersion(I)V
    .locals 2

    const v0, 0x39f50

    if-eq p1, v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    const-string v1, "Wrong SurfaceWidgetService.jar version does not match the one this Launcher was compiled with!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSurfaceWidgetDisconnect()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v0, :cond_0

    const-string v1, "onSurfaceWidgetError"

    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->logWidgetViewUnavailable(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$9;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$9;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/android/launcher2/SurfaceWidgetView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSurfaceWidgetError(Ljava/lang/Exception;)V
    .locals 4

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encountered an error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v0, :cond_0

    const-string v1, "onSurfaceWidgetError"

    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->logWidgetViewUnavailable(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$8;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/android/launcher2/SurfaceWidgetView;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public registerGyro()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    invoke-static {v0}, Lcom/sec/dtl/launcher/GyroForShadow;->registerListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)V

    :cond_0
    return-void
.end method

.method public releaseFocus()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s service requesting releaseFocus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v0, :cond_1

    const-string v1, "releaseFocus"

    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->logWidgetViewUnavailable(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$5;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$5;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/android/launcher2/SurfaceWidgetView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestDestroy(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s service requesting destroy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v0, :cond_1

    const-string v1, "requestDestroy"

    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->logWidgetViewUnavailable(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$6;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/android/launcher2/SurfaceWidgetView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestKeyboard(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s service requesting keyboard for textview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v0, :cond_1

    const-string v1, "requestKeyboard"

    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->logWidgetViewUnavailable(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/android/launcher2/SurfaceWidgetView;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestPositionUpdates(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'s service requesting to turn position updates "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v0, "on"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mPositionUpdatesOn:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const-string v0, "off"

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestSizeChange(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s service requesting new size w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v0, :cond_1

    const-string v1, "requestSizeChange"

    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->logWidgetViewUnavailable(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$1;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/android/launcher2/SurfaceWidgetView;II)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestTalkbackSay(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s service requesting Talkback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v0, :cond_1

    const-string v1, "requestTalkbackSay"

    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->logWidgetViewUnavailable(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$4;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$4;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestTilt(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'s service is requesting to turn tilt "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string v1, "on"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v0, :cond_2

    const-string v1, "requestTilt"

    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->logWidgetViewUnavailable(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string v1, "off"

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;ZLcom/android/launcher2/SurfaceWidgetView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public setOpaqueness(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s service setting complete opaqueness to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v0, :cond_1

    const-string v1, "acceptedFocus"

    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->logWidgetViewUnavailable(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$7;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$7;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startActivity(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v2, "SurfaceWidgetConnection"

    const-string v3, "null Class cannot be launched"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterGyro()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    invoke-static {v0}, Lcom/sec/dtl/launcher/GyroForShadow;->unregisterListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)V

    :cond_0
    return-void
.end method

.method public updateContentDescription(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$11;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/android/launcher2/SurfaceWidgetView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
