.class public Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ExternalShootingModeDownloadCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalShootingModeDownloadCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-void
.end method

.method private startShootingModeDownload()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.sec.android.app.samsungapps"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.sec.android.app.samsungapps"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "samsungapps://CategoryList/0000004068"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x4000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public execute()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ExternalShootingModeDownloadCommand"

    const-string v3, "return isStartPreview.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ExternalShootingModeDownloadCommand"

    const-string v3, "return getIsLaunchGallery.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ExternalShootingModeDownloadCommand"

    const-string v3, "return isCapturing.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c0219

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->startShootingModeDownload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mZOrder:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ExternalShootingModeDownloadCommand"

    const-string v2, "download error"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
