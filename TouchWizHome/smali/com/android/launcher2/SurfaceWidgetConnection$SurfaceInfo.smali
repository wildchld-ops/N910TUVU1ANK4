.class final Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SurfaceWidgetConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;
    }
.end annotation


# instance fields
.field private final mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

.field private mOrientation:I

.field private mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

.field private final mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;Lcom/android/launcher2/SurfaceWidgetConnection$Name;Lcom/android/launcher2/SurfaceWidgetView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    iput-object p2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    iput-object p3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;)Lcom/android/launcher2/SurfaceWidgetView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    return-object v0
.end method


# virtual methods
.method public getLatestSurfaceState()Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    return-object v0
.end method

.method isSameOrientation(I)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->releaseSurface()V

    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v0, v1, p2, p3}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;-><init>(Landroid/view/Surface;II)V

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v0, :cond_0

    move-object v7, v9

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v5, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceSizeChanged(Landroid/view/Surface;IIZII)V

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSurfaceTextureAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s surface texture was destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceDestroyed()V

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->releaseSurface()V

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetDisconnect()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "onSurfaceTextureDestroyed() came earlier than onServiceDisconnected() so wait for onServiceDisconnected() to restart widget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "onSurfaceTextureDestroyed() has a problem when destroying widget. Wait for onServiceDisconnected()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 11

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iput p2, v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iput p3, v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetView;->isRotationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v10}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->isSameOrientation(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iput v10, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v0, :cond_1

    move-object v7, v9

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v5, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    const/4 v4, 0x1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceSizeChanged(Landroid/view/Surface;IIZII)V

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSurfaceSizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public releaseSurface()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s surface is being released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s surface texture is being released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_3
    return-void
.end method
