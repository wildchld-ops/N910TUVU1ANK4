.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;
.super Ljava/lang/Object;
.source "TwGLPanorama360Menu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

.field final synthetic val$this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;->val$this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderPreview(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mStatus:[I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$5200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[I

    move-result-object v2

    iget v3, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mAttachStatus:I

    aput v3, v2, v5

    iget v2, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "mActivityContext is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->save_path:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mPreviewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveImagePathList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->save_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v2, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$5600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto :goto_0
.end method
