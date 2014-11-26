.class public Lcom/android/launcher2/SurfaceWidgetConnection;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;,
        Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;,
        Lcom/android/launcher2/SurfaceWidgetConnection$Name;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LAUNCHER_SURFACE_WIDGET_SERVICE_VERSION:I = 0x39f50

.field private static final TAG:Ljava/lang/String; = "SurfaceWidgetConnection"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

.field public final mServiceInstance:I

.field private final mSurfaceInfo:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;Lcom/android/launcher2/SurfaceWidgetView;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;
    .param p4    # Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;
    .param p5    # Lcom/android/launcher2/SurfaceWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    iput p2, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceInstance:I

    iput-object p4, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mSurfaceInfo:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z

    return v0
.end method

.method public static bindToService(Lcom/android/launcher2/SurfaceWidgetView;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)Lcom/android/launcher2/SurfaceWidgetConnection;
    .locals 8
    .param p0    # Lcom/android/launcher2/SurfaceWidgetView;
    .param p1    # Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v6, Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v6, v0, p2}, Lcom/android/launcher2/SurfaceWidgetConnection$Name;-><init>(Landroid/content/ComponentName;I)V

    new-instance v3, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-direct {v3, v6, p0, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;-><init>(Lcom/android/launcher2/SurfaceWidgetConnection$Name;Lcom/android/launcher2/SurfaceWidgetView;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "instance"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->bind(Landroid/content/Context;Landroid/content/Intent;)V

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;
    invoke-static {v3}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->access$000(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;)Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SurfaceWidgetView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    if-eqz v7, :cond_0

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;
    invoke-static {v3}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->access$000(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;)Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v7, v2, v4}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    new-instance v0, Lcom/android/launcher2/SurfaceWidgetConnection;

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;
    invoke-static {v3}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->access$000(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;)Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

    move-result-object v4

    move v2, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/SurfaceWidgetConnection;-><init>(Landroid/content/Context;ILcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;Lcom/android/launcher2/SurfaceWidgetView;)V

    return-object v0
.end method


# virtual methods
.method public onDestroy(Z)Z
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->unregisterGyro()V

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onDestroy(Z)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mSurfaceInfo:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->releaseSurface()V

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->unbind(Landroid/content/Context;)V

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "onDestroy() has a problem when destroying widget. Ignore and keep going"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onLauncherTiltChanged(FFF)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onLauncherTiltChanged(FFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPause()Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->unregisterGyro()V

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPositionOffsetChanged(FFF)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->arePositionUpdatesOn()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onPositionOffsetChanged(FFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onResume()Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->registerGyro()V

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onResume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onVerticalTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onVerticalTouch(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 3
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->registerGyro()V

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onVisibilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->unregisterGyro()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "onVisibilityChanged() came earlier than onServiceDisconnected() so wait for onServiceDisconnected() to restart widget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public resumeLater(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->resumeLater(Z)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 2
    .param p1    # Z

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->setFocus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setUpdateTime(I)V
    .locals 2
    .param p1    # I

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->setUpdateTime(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateContentDescription()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->updateContentDescription()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
