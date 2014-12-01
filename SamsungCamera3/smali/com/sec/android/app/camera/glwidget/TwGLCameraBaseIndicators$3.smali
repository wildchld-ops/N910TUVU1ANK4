.class Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$3;
.super Ljava/lang/Object;
.source "TwGLCameraBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTouchToCapture()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchAFStarted(Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
