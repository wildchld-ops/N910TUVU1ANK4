.class public Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "KeyguardLiveWallpaperConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final BIND_SERVICE_RETRY_DELAY:I

.field private final TAG:Ljava/lang/String;

.field private mBindServiceRetryHandler:Landroid/os/Handler;

.field mConnected:Z

.field private final mContext:Landroid/content/Context;

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field private final mIntent:Landroid/content/Intent;

.field mIsConnecting:Z

.field mIsVisible:Z

.field private final mParentView:Landroid/view/View;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field mUnbindService:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;
    .param p3    # Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    const-string v0, "KeyguardLiveWallpaperConnection"

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsConnecting:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mUnbindService:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->BIND_SERVICE_RETRY_DELAY:I

    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection$1;-><init>(Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mParentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 4
    .param p1    # Landroid/service/wallpaper/IWallpaperEngine;

    :try_start_0
    const-string v1, "KeyguardLiveWallpaperConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach Engine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mParentView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->isShowingAndLcdOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public connect()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "KeyguardLiveWallpaperConnection"

    const-string v3, "connect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsConnecting:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsConnecting:Z

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "KeyguardLiveWallpaperConnection"

    const-string v2, "bind service was called"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    const-string v1, "KeyguardLiveWallpaperConnection"

    const-string v2, "disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mUnbindService:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 0
    .param p1    # Landroid/service/wallpaper/IWallpaperEngine;

    return-void
.end method

.method public isServiceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    const/4 v10, 0x0

    const-string v0, "KeyguardLiveWallpaperConnection"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    :try_start_0
    iget-object v9, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-string v0, "KeyguardLiveWallpaperConnection"

    const-string v1, "onServiceConnected completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v10, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsConnecting:Z

    return-void

    :catch_0
    move-exception v7

    const-string v0, "KeyguardLiveWallpaperConnection"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1    # Landroid/content/ComponentName;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "KeyguardLiveWallpaperConnection"

    const-string v2, "onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mUnbindService:Z

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V

    const-string v1, "KeyguardLiveWallpaperConnection"

    const-string v2, "Engine is destroied."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    :cond_1
    iput-boolean v3, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mUnbindService:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setVisibility(Z)V
    .locals 4
    .param p1    # Z

    const-string v1, "KeyguardLiveWallpaperConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method
