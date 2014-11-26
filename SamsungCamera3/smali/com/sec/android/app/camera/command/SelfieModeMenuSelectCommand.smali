.class public Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "SelfieModeMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SelfieModeMenuSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCommandId:I

.field private mSelfieMode:I

.field private mToggle:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p2, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mCommandId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mToggle:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IZ)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p2, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mCommandId:I

    iput-boolean p3, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mToggle:Z

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "SelfieModeMenuSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "SelfieModeMenuSelectCommand"

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "SelfieModeMenuSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "SelfieModeMenuSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mZOrder:I

    if-le v0, v4, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mToggle:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    const/16 v2, 0x7a

    iget-object v3, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieMode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mCommandId:I

    iget v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mCommandId:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mCommandId:I

    const/16 v2, 0x157f

    if-gt v0, v2, :cond_5

    const/16 v0, 0x1580

    iput v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mCommandId:I

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mCommandId:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mSelfieMode:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->onSelfieModeMenuSelect(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_1

    :pswitch_0
    iput v1, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mSelfieMode:I

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mSelfieMode:I

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mSelfieMode:I

    goto :goto_2

    :pswitch_3
    iput v4, p0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;->mSelfieMode:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x157d
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
