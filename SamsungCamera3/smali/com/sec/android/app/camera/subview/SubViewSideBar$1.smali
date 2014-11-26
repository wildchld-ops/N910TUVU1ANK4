.class Lcom/sec/android/app/camera/subview/SubViewSideBar$1;
.super Ljava/lang/Object;
.source "SubViewSideBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/subview/SubViewSideBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/subview/SubViewSideBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "SubViewSideBar"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onUserInteraction()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    const-string v0, "SubViewSideBar"

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowThumbnailListMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getBaseMenuButton(I)Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getBaseMenuButton(I)Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v1, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getBaseMenuButton(I)Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShowThumbnailListMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getEasyModeCameraSideBar()Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getEasyModeBaseMenuButton(I)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getEasyModeCameraSideBar()Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v1, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getEasyModeBaseMenuButton(I)Lcom/sec/android/glview/TwGLButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getBaseMenuButton(I)Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v0, v0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getBaseMenuButton(I)Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    iget-object v1, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getBaseMenuButton(I)Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f003f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
