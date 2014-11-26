.class Lcom/sec/android/app/camera/Camera$75;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onPanoramaProgressStitching(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;

.field final synthetic val$finalPanoramaView:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

.field final synthetic val$finalProgressingPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$75;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$75;->val$finalProgressingPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    iput-object p3, p0, Lcom/sec/android/app/camera/Camera$75;->val$finalPanoramaView:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$75;->val$finalProgressingPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$75;->val$finalPanoramaView:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showCaptureLayout()V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$75;->val$finalPanoramaView:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setPostCaptureProgress(I)V

    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$75;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
