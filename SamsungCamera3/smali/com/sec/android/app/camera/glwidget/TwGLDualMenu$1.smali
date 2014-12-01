.class Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;
.super Landroid/os/Handler;
.source "TwGLDualMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const-wide/16 v3, 0xc8

    const/4 v2, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    :cond_1
    const-string v0, "TwGLDualMenu"

    const-string v1, "Hide Boundry"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setGrowable(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->showBoundryRect()V

    goto :goto_0

    :pswitch_2
    const-string v0, "TwGLDualMenu"

    const-string v1, "Dual Shot Progress Timer"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/glview/TwGLProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
