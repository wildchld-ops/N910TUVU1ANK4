.class public Lcom/samsung/android/smartclip/SpenGestureManager;
.super Ljava/lang/Object;
.source "SpenGestureManager.java"


# static fields
.field public static final GLOBAL_AIR_BUTTON_ALL_ENABLE:I = -0x1

.field public static final GLOBAL_AIR_BUTTON_FLASHANNOTATE:I = 0x2

.field public static final GLOBAL_AIR_BUTTON_GALAXYFINDER:I = 0x3

.field public static final GLOBAL_AIR_BUTTON_MULTIWINDOW:I = 0x4

.field public static final GLOBAL_AIR_BUTTON_QUICKMEMO:I = 0x0

.field public static final GLOBAL_AIR_BUTTON_RAKEIN:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/samsung/android/smartclip/ISpenGestureService;


# instance fields
.field private mSpenGestureBackground:Landroid/graphics/drawable/Drawable;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    const-string v0, "SpenGestureManager"

    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/smartclip/ISpenGestureService;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "spengestureservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    sget-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-nez v0, :cond_0

    const-string v0, "SpenGestureManager"

    const-string/jumbo v1, "warning: no SpenGestureManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activateExclusiveCroppingMode()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureService;->activateExclusiveCroppingMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAirButtonHitTest(III)I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getAirButtonHitTest(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureService;->getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isExclusiveModeActivated()Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureService;->isExclusiveModeActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isServiceAvailable()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "spengestureservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "isServiceAvailable : Service not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAirButtonHitTestResult(II)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/smartclip/ISpenGestureService;->setAirButtonHitTestResult(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setDisableGlobalAirBottonAppindex(I)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->setDisableGlobalAirBottonAppindex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setFocusWindow(I)V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFocusWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->setFocusWindow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
