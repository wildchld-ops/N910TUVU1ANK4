.class Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$9;
.super Ljava/lang/Object;
.source "TwGLSliderMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$9;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$9;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$9;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$9;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$9;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$9;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$9;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$9;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getZoomText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
