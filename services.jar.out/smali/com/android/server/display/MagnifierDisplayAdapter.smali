.class final Lcom/android/server/display/MagnifierDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "MagnifierDisplayAdapter.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;
.implements Lcom/android/server/display/MagnifierSurfaceControl$Listener;


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "MagnifierDisplayAdapter"


# instance fields
.field private mDevice:Lcom/android/server/display/MagnifierDevice;

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private mEnabled:Z

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mScale:F

.field private mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

.field private mTempSpec:Landroid/view/MagnificationSpec;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .locals 6
    .param p1    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/os/Handler;
    .param p4    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5    # Landroid/os/Handler;

    const-string v5, "MagnifierDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    new-instance v0, Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {v0, p2}, Lcom/android/server/display/MagnifierDisplayPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iput-object p5, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1    # Ljava/io/PrintWriter;

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1    # Ljava/io/PrintWriter;

    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enable(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    if-ne v0, p1, :cond_0

    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag is same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/display/MagnifierSurfaceControl;-><init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->create()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->dismiss()V

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    goto :goto_0
.end method

.method public onChangeSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1    # Landroid/view/Surface;

    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierDevice;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MagnifierDisplayAdapter"

    const-string v1, "onChangeSurface: device is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateSurface(Landroid/view/Surface;F)V
    .locals 7
    .param p1    # Landroid/view/Surface;
    .param p2    # F

    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateSurface:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OverlayMagnifier"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    new-instance v0, Lcom/android/server/display/MagnifierDevice;

    const-string v4, "OverlayMagnifier"

    iget-object v5, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/MagnifierDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Landroid/view/Surface;Ljava/lang/String;Lcom/android/server/display/MagnifierDisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerLocked()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    return-void
.end method

.method public setMagnificationSettings(IIF)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # F

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->updateSettings(IIF)V

    iput p3, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    return-void
.end method

.method public updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1    # Landroid/view/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v2, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    iput v2, v0, Landroid/view/MagnificationSpec;->scale:F

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
