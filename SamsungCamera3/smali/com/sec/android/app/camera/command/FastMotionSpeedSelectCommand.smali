.class public Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "FastMotionSpeedSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FastMotionSpeedSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mFastMotionSpeed:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mFastMotionSpeed:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mFastMotionSpeed:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mFastMotionSpeed:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1773
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 5

    const/4 v4, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "FastMotionSpeedSelectCommand"

    const-string v4, "return isStartPreview.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "FastMotionSpeedSelectCommand"

    const-string v4, "return getIsLaunchGallery.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->onRecordingModeMenuSelect(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mFastMotionSpeed:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onFastMotionSpeedSelect(I)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v2

    if-lt v2, v4, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method
