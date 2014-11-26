.class final Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceDetectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/CommonEngine;
    .param p2    # Lcom/sec/android/app/camera/CommonEngine$1;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V
    .locals 14
    .param p1    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2    # Lcom/sec/android/seccamera/SecCamera;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z
    invoke-static {}, Lcom/sec/android/app/camera/CommonEngine;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v9

    const/16 v10, 0x38

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/camera/Camera;->onSelfieAlarmFDRectChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v9

    if-nez v9, :cond_0

    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v9

    const/16 v10, 0x37

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->isSelfieContinuousCapturing()Z

    move-result v9

    if-nez v9, :cond_0

    :cond_3
    array-length v9, p1

    if-lez v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->setfaceDetectedState(Z)V

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v9

    const/16 v10, 0x37

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v9

    if-nez v9, :cond_0

    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->isScreenReaderActive()Z

    move-result v9

    if-eqz v9, :cond_d

    array-length v9, p1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-boolean v9, v9, Lcom/sec/android/app/camera/CommonEngine;->isDetected:Z

    if-nez v9, :cond_a

    const-string v9, "FaceDetectionCallback"

    const-string v10, "Setting Area"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->faceAreaManager:Lcom/sec/android/app/camera/FaceAreaManager;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    new-instance v10, Lcom/sec/android/app/camera/FaceAreaManager;

    iget-object v11, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v11, v11, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v10, v11}, Lcom/sec/android/app/camera/FaceAreaManager;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Lcom/sec/android/app/camera/CommonEngine;->faceAreaManager:Lcom/sec/android/app/camera/FaceAreaManager;

    :cond_5
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->faceAreaManager:Lcom/sec/android/app/camera/FaceAreaManager;

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v10, v10, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getOrientation()I

    move-result v10

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v12, v12, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v13, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v13, v13, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sec/android/app/camera/FaceAreaManager;->updateAdviceFaceAreaIndicatorFromOrientation(IIII)V

    const/4 v9, 0x0

    sput-boolean v9, Lcom/sec/android/app/camera/CommonEngine;->isPrevOK:Z

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sec/android/app/camera/CommonEngine;->isDetected:Z

    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->isZoomMenuVisible()Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_e

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_e

    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z
    invoke-static {v9}, Lcom/sec/android/app/camera/CommonEngine;->access$400(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # operator++ for: Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCount:I
    invoke-static {v9}, Lcom/sec/android/app/camera/CommonEngine;->access$1208(Lcom/sec/android/app/camera/CommonEngine;)I

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCount:I
    invoke-static {v9}, Lcom/sec/android/app/camera/CommonEngine;->access$1200(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v9

    rem-int/lit8 v9, v9, 0x3

    if-eqz v9, :cond_8

    array-length v9, p1

    if-nez v9, :cond_0

    :cond_8
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    invoke-interface {v9, p1}, Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;->onFacePositionChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v10, 0x0

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCount:I
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/CommonEngine;->access$1202(Lcom/sec/android/app/camera/CommonEngine;I)I

    goto/16 :goto_0

    :cond_9
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->setfaceDetectedState(Z)V

    goto/16 :goto_1

    :cond_a
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->faceAreaManager:Lcom/sec/android/app/camera/FaceAreaManager;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget-object v10, v10, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10, v6}, Lcom/sec/android/app/camera/FaceAreaManager;->DeNormalize(II)I

    move-result v4

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->faceAreaManager:Lcom/sec/android/app/camera/FaceAreaManager;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget-object v10, v10, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v6}, Lcom/sec/android/app/camera/FaceAreaManager;->DeNormalize(II)I

    move-result v7

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->faceAreaManager:Lcom/sec/android/app/camera/FaceAreaManager;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget-object v10, v10, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v5}, Lcom/sec/android/app/camera/FaceAreaManager;->DeNormalize(II)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->faceAreaManager:Lcom/sec/android/app/camera/FaceAreaManager;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget-object v10, v10, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v5}, Lcom/sec/android/app/camera/FaceAreaManager;->DeNormalize(II)I

    move-result v1

    add-int v9, v4, v7

    div-int/lit8 v2, v9, 0x2

    add-int v9, v8, v1

    div-int/lit8 v3, v9, 0x2

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->faceAreaManager:Lcom/sec/android/app/camera/FaceAreaManager;

    invoke-virtual {v9, v4, v7, v8, v1}, Lcom/sec/android/app/camera/FaceAreaManager;->getFaceSize(IIII)Lcom/sec/android/app/camera/FaceAreaManager$FaceSize;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/camera/FaceAreaManager$FaceSize;->BIG:Lcom/sec/android/app/camera/FaceAreaManager$FaceSize;

    if-ne v9, v10, :cond_b

    const-string v9, "FaceDetectionCallback"

    const-string v10, "Face is Big"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mOnGuidePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnGuidePositionChangedListener;

    const/16 v10, 0x9

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/CommonEngine$OnGuidePositionChangedListener;->onGuidePositionChanged(I)V

    goto/16 :goto_2

    :cond_b
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->faceAreaManager:Lcom/sec/android/app/camera/FaceAreaManager;

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v10, v10, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getOrientation()I

    move-result v10

    invoke-virtual {v9, v2, v3, v10}, Lcom/sec/android/app/camera/FaceAreaManager;->getFacePosition(III)I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_6

    sget-boolean v9, Lcom/sec/android/app/camera/CommonEngine;->isPrevOK:Z

    if-eqz v9, :cond_c

    const/4 v9, 0x4

    if-eq v0, v9, :cond_6

    :cond_c
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mOnGuidePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnGuidePositionChangedListener;

    invoke-interface {v9, v0}, Lcom/sec/android/app/camera/CommonEngine$OnGuidePositionChangedListener;->onGuidePositionChanged(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sec/android/app/camera/CommonEngine;->isDetected:Z

    goto/16 :goto_2

    :cond_e
    array-length v9, p1

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v10, v10, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v10

    if-eq v9, v10, :cond_7

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v10, 0x0

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/CommonEngine;->access$402(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    array-length v9, p1

    if-nez v9, :cond_f

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->stopHideFaceRectTimer()V

    goto/16 :goto_3

    :cond_f
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v9

    const/16 v10, 0x38

    if-eq v9, v10, :cond_7

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/16 v10, 0x7d0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CommonEngine;->startHideFaceRectTimer(I)V

    goto/16 :goto_3
.end method
