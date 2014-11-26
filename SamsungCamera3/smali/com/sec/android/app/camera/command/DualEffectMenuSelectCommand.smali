.class public Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "DualEffectMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualEffectMenuSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mEffect:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0x28

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x29

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x31

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x2a

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2b

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x2c

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x2d

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x2e

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x2f

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x33

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x34

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x41a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DualEffectMenuSelectCommand"

    const-string v4, "return isStartPreview.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "DualEffectMenuSelectCommand"

    const-string v4, "return getIsLaunchGallery.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "DualEffectMenuSelectCommand"

    const-string v4, "return isCapturing.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    const/16 v4, 0x33

    if-ne v3, v4, :cond_4

    const-string v3, "DualEffectMenuSelectCommand"

    const-string v4, "return front dual tracking."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c013f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    iget v3, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    if-eq v0, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onDualEffectMenuSelect(I)V

    const/4 v2, 0x1

    goto :goto_0
.end method
