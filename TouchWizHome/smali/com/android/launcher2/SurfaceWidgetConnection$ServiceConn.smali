.class final Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SurfaceWidgetConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceConn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;
    }
.end annotation


# instance fields
.field private final mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

.field private mIsBound:Z

.field private final mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

.field private mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

.field private final mSurfaceInfo:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

.field private final mWidgetViewComm:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

.field private mbResumeLater:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher2/SurfaceWidgetConnection$Name;Lcom/android/launcher2/SurfaceWidgetView;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/SurfaceWidgetConnection$Name;
    .param p2    # Lcom/android/launcher2/SurfaceWidgetView;
    .param p3    # Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    iput-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mbResumeLater:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iput-object p3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    new-instance v0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-direct {v0, v1, p2, p0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$Name;Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;)V

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    new-instance v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;Lcom/android/launcher2/SurfaceWidgetConnection$Name;Lcom/android/launcher2/SurfaceWidgetView;)V

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;)Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;
    .locals 1
    .param p0    # Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

    return-object v0
.end method


# virtual methods
.method public arePositionUpdatesOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->arePositionUpdatesOn()Z

    move-result v0

    return v0
.end method

.method public bind(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    if-eqz v0, :cond_1

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been bound to its service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to bind to its service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy(Z)V
    .locals 3
    .param p1    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is being destroyed by launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onDestroy(IZ)V

    :cond_1
    return-void
.end method

.method public onKeyboardCompleted(ILjava/lang/String;)V
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being sent onEditViewTextChanged by launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onKeyboardCompleted(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onLauncherTiltChanged(FFF)V
    .locals 3
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getting tilt changed from launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onLauncherTiltChanged(IFFF)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is being paused by launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onPause(I)V

    :cond_1
    return-void
.end method

.method public onPositionOffsetChanged(FFF)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onPositionOffsetChanged(IFFF)V

    :cond_0
    return-void
.end method

.method public onResume()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is being resumed by launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onResume(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 13
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connected to its service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Lcom/samsung/surfacewidget/ISurfaceWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    const v2, 0x39f50

    invoke-interface {v1, v2}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->checkVersion(I)V

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-interface {v1, v2, v3}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->setProviderInfo(ILcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-interface {v1, v2, v3}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->setCallback(ILcom/samsung/surfacewidget/IRemoteServiceCallback;)V

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->getLatestSurfaceState()Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    move-result-object v12

    if-eqz v12, :cond_3

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'s surface is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v12, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "valid"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, v12, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    if-lez v1, :cond_3

    iget v1, v12, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    if-lez v1, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;
    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->access$200(Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;)Lcom/android/launcher2/SurfaceWidgetView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v1, v11, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v1, :cond_2

    move-object v0, v11

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object v9, v0

    iget v7, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v8, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    iget-object v3, v12, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    iget v4, v12, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    iget v5, v12, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onSurfaceSizeChanged(ILandroid/view/Surface;IIZII)V

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mbResumeLater:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->registerGyro()V

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onResume()Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mbResumeLater:Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v1, "invalid"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v1, v10}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been disconnected from its service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->onSurfaceWidgetDisconnect()V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onSurfaceDestroyed(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceSizeChanged(Landroid/view/Surface;IIZII)V
    .locals 8
    .param p1    # Landroid/view/Surface;
    .param p2    # I
    .param p3    # I
    .param p4    # Z
    .param p5    # I
    .param p6    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onSurfaceSizeChanged(ILandroid/view/Surface;IIZII)V

    :cond_0
    return-void
.end method

.method public onSurfaceWidgetDisconnect()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->onSurfaceWidgetDisconnect()V

    return-void
.end method

.method public onSurfaceWidgetError(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onVerticalTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onVerticalTouch(ILandroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .param p1    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onVisibilityChanged(IZ)V

    :cond_0
    return-void
.end method

.method public registerGyro()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->registerGyro()V

    return-void
.end method

.method public resumeLater(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mbResumeLater:Z

    return-void
.end method

.method public setFocus(Z)V
    .locals 3
    .param p1    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being set focused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->setFocus(IZ)V

    :cond_1
    return-void
.end method

.method public setUpdateTime(I)V
    .locals 3
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being sent updateTime by launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->setUpdateTime(II)V

    :cond_1
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been unbound from its service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget-object v2, v2, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'s service has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "been stopped"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v1, "not been stopped"

    goto :goto_0
.end method

.method public unregisterGyro()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->unregisterGyro()V

    return-void
.end method

.method public updateContentDescription()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requesting fresh content description"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onContentDescriptionRequest(I)V

    :cond_1
    return-void
.end method
