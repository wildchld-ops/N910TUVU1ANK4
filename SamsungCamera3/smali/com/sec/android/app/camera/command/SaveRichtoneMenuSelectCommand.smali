.class public Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "SaveRichtoneMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveRichtoneMenuSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCommandId:I

.field private mSaveRichtone:I

.field private mToggle:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mCommandId:I

    iput-boolean p3, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mToggle:Z

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "SaveRichtoneMenuSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "SaveRichtoneMenuSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "SaveRichtoneMenuSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mToggle:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    const/16 v3, 0x22

    iget-object v4, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mCommandId:I

    iget v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mCommandId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mCommandId:I

    const/16 v3, 0x12c1

    if-lt v2, v3, :cond_4

    const/16 v2, 0x12c0

    iput v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mCommandId:I

    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mCommandId:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mSaveRichtone:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->onSaveRichtoneMenuSelect(I)V

    iget v0, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mZOrder:I

    if-le v0, v5, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_5
    move v0, v1

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mSaveRichtone:I

    goto :goto_1

    :pswitch_1
    iput v0, p0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;->mSaveRichtone:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x12c0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
