.class Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;
.super Landroid/os/Handler;
.source "TwGLVirtualTourMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1    # Landroid/os/Message;

    const/16 v6, 0x30

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    const-string v2, "TwGLVirtualTourMenu"

    const-string v3, "Calibration started"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setEditableSideBarDraggable(Z)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v6, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLContext;->playHaptic(I)V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0266

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0134

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->resetStabilizer()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "TwGLVirtualTourMenu"

    const-string v3, "Calibration done"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->checkStorageLow()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMemoryStatus()I

    move-result v2

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->mediaStorageDialog()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setProgress(I)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->handleShutterReleaseEvent()V

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0265

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1202(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->updateCapturingStatus(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    const-string v3, "/.3DTour"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "3DTour_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPs32Direction:[I

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->onImageCaptured(Ljava/lang/String;[I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1408(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setRemainCounter()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v3

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1602(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)I

    goto/16 :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0134

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setEditableSideBarDraggable(Z)V

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v6, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->playHaptic(I)V

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->resetStabilizer()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    rem-int/lit8 v2, v2, 0xe

    const/16 v3, 0xa

    if-gt v2, v3, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    rem-int/lit8 v2, v2, 0xe

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    const/16 v3, 0xc

    # += operator for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1912(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v3

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setProgress(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1808(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    goto/16 :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->checkStorageLow()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMemoryStatus()I

    move-result v2

    if-ne v2, v5, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->mediaStorageDialog()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    move-result-object v2

    const/16 v3, 0x168

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setProgress(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->handleShutterReleaseEvent()V

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1202(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->updateCapturingStatus(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    const-string v3, "/.3DTour"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "3DTour_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPs32Direction:[I

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->onImageCaptured(Ljava/lang/String;[I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1408(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setRemainCounter()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lt v2, v8, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c025d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lez v2, :cond_e

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    const v3, 0x7f0c0264

    invoke-static {v2, v3, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto :goto_1

    :sswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c025f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0261

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0265

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLContext;->playHaptic(I)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;ZI)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0134

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->resetStabilizer()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lez v2, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    const v3, 0x7f0c0262

    invoke-static {v2, v3, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto :goto_2

    :sswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c025c

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :sswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c025e

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :sswitch_11
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0260

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :sswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0260

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :sswitch_13
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c025e

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(IZ)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :sswitch_14
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V
    invoke-static {v2, v5, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;ZI)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V
    invoke-static {v2, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;ZI)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    :sswitch_17
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    :sswitch_18
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    const v3, 0x7f0c0262

    invoke-static {v2, v3, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_19
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->isActive()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->restart()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$3000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->resetContinuousFileSequence()V

    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->on3DTourComplete()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->showThumbnailButton()V

    goto/16 :goto_0

    :sswitch_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lez v2, :cond_12

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    const v3, 0x7f0c0267

    invoke-static {v2, v3, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto :goto_3

    :sswitch_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c0263

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto/16 :goto_0

    :sswitch_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->cancelAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0c025d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1d
    const/16 v2, 0xcc

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->removeMessages(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$3200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_WARNING:I

    invoke-virtual {v2, v3, v7}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    const/16 v2, 0xcc

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_1e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I

    move-result v2

    if-lez v2, :cond_13

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_0
        0x12 -> :sswitch_d
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_e
        0x18 -> :sswitch_0
        0x19 -> :sswitch_f
        0x1a -> :sswitch_10
        0x1b -> :sswitch_11
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x1e -> :sswitch_12
        0x1f -> :sswitch_13
        0x20 -> :sswitch_14
        0x21 -> :sswitch_14
        0x23 -> :sswitch_1a
        0x24 -> :sswitch_15
        0x25 -> :sswitch_0
        0x26 -> :sswitch_1c
        0x27 -> :sswitch_1e
        0xc8 -> :sswitch_16
        0xc9 -> :sswitch_17
        0xca -> :sswitch_18
        0xcb -> :sswitch_1b
        0xcc -> :sswitch_1d
        0x3e8 -> :sswitch_19
    .end sparse-switch
.end method
