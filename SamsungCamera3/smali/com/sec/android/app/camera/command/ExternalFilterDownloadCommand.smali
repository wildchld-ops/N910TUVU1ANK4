.class public Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ExternalFilterDownloadCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolutionSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ResolutionSelectCommand"

    const-string v3, "return isStartPreview.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ResolutionSelectCommand"

    const-string v3, "return getIsLaunchGallery.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ResolutionSelectCommand"

    const-string v3, "return isCapturing.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onEffectDownloadMenuCommand()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;->mZOrder:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v1, p0, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideEffectMenu()V

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ResolutionSelectCommand"

    const-string v2, "filter download error"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
