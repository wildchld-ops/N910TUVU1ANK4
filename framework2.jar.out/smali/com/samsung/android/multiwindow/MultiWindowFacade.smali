.class public final Lcom/samsung/android/multiwindow/MultiWindowFacade;
.super Ljava/lang/Object;
.source "MultiWindowFacade.java"


# static fields
.field public static final ARRANGE_SPLITED:I = 0x1

.field public static final ARRANGE_SPLITED3L:I = 0x2

.field public static final ARRANGE_SPLITED3R:I = 0x4

.field public static final ARRANGE_SPLITED4:I = 0x8

.field public static final ARRANGE_UNKNOWN:I = 0x0

.field public static final MULTIWINDOW_ABSOLUTE_TOPACTIVITY:I = 0x2

.field public static final MULTIWINDOW_EXCLUDED_CASCADE_TYPE:I = 0x1

.field public static final SPLIT_MAX_WEIGHT:F = 0.8f

.field public static final SPLIT_MIN_WEIGHT:F = 0.2f


# instance fields
.field private mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;


# direct methods
.method public constructor <init>(Lcom/samsung/android/multiwindow/IMultiWindowFacade;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    return-void
.end method


# virtual methods
.method public addTab(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->addTab(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public appMinimizingStarted(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->appMinimizingStarted(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeTaskToFull(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->changeTaskToFull(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public exchangeTopTaskToZone(II)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->exchangeTopTaskToZone(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArrangeState()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getArrangeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getAvailableMultiInstanceCnt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExpectedOrientation()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getExpectedOrientation()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFocusedStackLayer()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFocusedStackLayer()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFocusedZone()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFocusedZone()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getGlobalSystemUiVisibility()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecentTaskSize(II)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getRecentTaskSize(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRunningScaleWindows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getRunningScaleWindows()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSplitMaxWeight()F
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getSplitMaxWeight()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/high16 v1, 0x3f800000

    goto :goto_0
.end method

.method public getSplitMinWeight()F
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getSplitMinWeight()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackBoxPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackBoxPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackId(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTabs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getTabs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getZoneBounds(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnableMakePenWindow()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->isEnableMakePenWindow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public needToExposureTitleBarMenu()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->needToExposureTitleBarMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAllTasks(Landroid/os/IBinder;I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->removeAllTasks(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeTab(I)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->removeTab(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestSplitPreview(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->requestSplitPreview(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setAppVisibility(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setFocusAppByZone(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setFocusAppByZone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setFocusedStack(IZ)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setFocusedStack(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setMultiWindowTrayOpenState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreviewFullAppZone(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setPreviewFullAppZone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setStackBoundByStackId(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
