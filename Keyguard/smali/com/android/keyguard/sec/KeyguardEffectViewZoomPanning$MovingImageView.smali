.class Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;
.super Landroid/view/View;
.source "KeyguardEffectViewZoomPanning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MovingImageView"
.end annotation


# instance fields
.field private SECOND_BORDER:I

.field private mAnimationHandler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCameraCenterPosX:F

.field private mCameraCenterPosY:F

.field private mCameraZoomIn:F

.field private mCurrentAnimationFrame:I

.field private mCurrentBitmapPath:Ljava/lang/String;

.field private mCurrentCategoryCode:Ljava/lang/String;

.field private mDefaultCameraHeight:I

.field private mDefaultCameraWidth:I

.field private mDefaultOverlapCameraHeight:I

.field private mDefaultOverlapCameraWidth:I

.field private mDetectedFaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/secvision/face/Face;",
            ">;"
        }
    .end annotation
.end field

.field private mDistance:F

.field private mDoubleTapCheckHandler:Landroid/os/Handler;

.field private mFaceDetector:Lcom/sec/android/secvision/face/FaceDetector;

.field private mGoalAnimationFrame:I

.field private mIsAnimating:Z

.field private mIsDoubleTapWaiting:Z

.field private mIsOverlap:Z

.field private mIsPetImage:Z

.field private mLastPinchDistance:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mMovingCoe:F

.field private mNowGoalIndex:I

.field private mOverlapBitmap:Landroid/graphics/Bitmap;

.field private mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

.field private mOverlapBitmapHeight:I

.field private mOverlapBitmapWidth:I

.field private mOverlapCameraCenterPosX:F

.field private mOverlapCameraCenterPosY:F

.field private mOverlapCameraZoomIn:F

.field private mPanningGoalIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPanningGoalX:F

.field private mPanningGoalY:F

.field private mPanningInterpolator:Landroid/view/animation/Interpolator;

.field private mPanningRandom:Z

.field private mPanningStartX:F

.field private mPanningStartY:F

.field private mPinchZoomPivotX:F

.field private mPinchZoomPivotY:F

.field private mPinchZoomStartMinThreshold:I

.field private mSavedCurrentAnimationFrame:I

.field private mSavedGoalAnimationFrame:I

.field private mSavedPanningGoalX:F

.field private mSavedPanningGoalY:F

.field private mSavedPanningStartX:F

.field private mSavedPanningStartY:F

.field private mSavedState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

.field private mSavedZoomStart:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

.field private mThresholdCameraZoom:F

.field private mTouchDownCameraPosX:F

.field private mTouchDownCameraPosY:F

.field private mTouchDownCameraZoom:F

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchMoveStartMinThreshold:I

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private mZoomingStart:F

.field private onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Landroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/util/AttributeSet;

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    new-instance v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$4;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cocktailBarSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v2, v2

    const v3, 0x3d4ccccd

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchMoveStartMinThreshold:I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v2, v2

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomStartMinThreshold:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->SECOND_BORDER:I

    invoke-static {}, Lcom/sec/android/secvision/face/FaceDetector;->getInstance()Lcom/sec/android/secvision/face/FaceDetector;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mFaceDetector:Lcom/sec/android/secvision/face/FaceDetector;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    const/high16 v2, 0x3f800000

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, p2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWindowWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWindowHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MovingImageView() mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->initBitmap()Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->updateFaceList()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->initCamera()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->updateFaceList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;F)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1    # F

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimation(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->panningAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)F
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->restoreAnimationInformation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->overlapAnimation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;)Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)F
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v0

    return v0
.end method

.method private calculateAnimationFrame(FFFF)I
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v0

    const/high16 v1, 0x44480000

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private calculateDistance(FFFF)F
    .locals 4
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    sub-float v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private findNearestFaceIndexFromCurrentCameraPos()I
    .locals 9

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    if-le v5, v6, :cond_3

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    :goto_0
    int-to-float v3, v5

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/secvision/face/Face;

    iget-object v4, v5, Lcom/sec/android/secvision/face/Face;->rect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v0

    cmpg-float v5, v0, v3

    if-gez v5, :cond_2

    move v3, v0

    move v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    goto :goto_0
.end method

.method private getCanvasScale(Z)F
    .locals 3
    .param p1    # Z

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    div-float v0, v1, v2

    :goto_0
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1

    :cond_0
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float v0, v1, v2

    goto :goto_0
.end method

.method private getCanvasTranslate(ZZ)F
    .locals 11
    .param p1    # Z
    .param p2    # Z

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/high16 v9, 0x40000000

    const/high16 v8, 0x3f000000

    if-ne p2, v6, :cond_3

    if-ne p1, v6, :cond_1

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v3, v6, v8

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    sub-float v4, v6, v3

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    int-to-float v1, v6

    :goto_0
    cmpg-float v6, v4, v10

    if-gez v6, :cond_2

    const/4 v4, 0x0

    :cond_0
    :goto_1
    return v4

    :cond_1
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v3, v6, v8

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    sub-float v4, v6, v3

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v1, v6

    goto :goto_0

    :cond_2
    mul-float v6, v3, v9

    sub-float v6, v1, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_0

    mul-float v6, v3, v9

    sub-float v4, v1, v6

    goto :goto_1

    :cond_3
    if-ne p1, v6, :cond_5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v2, v6, v8

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    sub-float v5, v6, v2

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    int-to-float v0, v6

    :goto_2
    cmpg-float v6, v5, v10

    if-gez v6, :cond_6

    const/4 v5, 0x0

    :cond_4
    :goto_3
    move v4, v5

    goto :goto_1

    :cond_5
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v2, v6, v8

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    sub-float v5, v6, v2

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v0, v6

    goto :goto_2

    :cond_6
    mul-float v6, v2, v9

    sub-float v6, v0, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    mul-float v6, v2, v9

    sub-float v5, v0, v6

    goto :goto_3
.end method

.method private getDefaultCameraZoomByCategory()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    if-eqz v0, :cond_0

    const v0, 0x3f99999a

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3fc00000

    goto :goto_0
.end method

.method private getMaximumCameraZoomByCategory()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40200000

    goto :goto_0
.end method

.method private getRandom(FF)I
    .locals 4
    .param p1    # F
    .param p2    # F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-float v2, p2, p1

    float-to-double v2, v2

    mul-double/2addr v0, v2

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private handleDoubleTap()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$502(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Z)Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoubleTap() mIsAnimating : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsDoubleTapPuase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$502(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Z)Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    goto :goto_0
.end method

.method private handlePinchZoom(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1    # Landroid/view/MotionEvent;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v0

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomStartMinThreshold:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimationByRate(F)V

    cmpl-float v2, v1, v6

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    :cond_3
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    goto :goto_0
.end method

.method private makeRandomPanningPoint()Landroid/graphics/Point;
    .locals 14

    const/high16 v13, 0x3f000000

    const/4 v9, 0x1

    const/high16 v12, 0x40000000

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    move v5, v9

    :goto_0
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v10, v11, :cond_2

    const/high16 v1, 0x3f800000

    :goto_1
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v1

    mul-float v6, v10, v13

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v10, v10

    sub-float v7, v10, v6

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v10, v10

    div-float/2addr v10, v1

    mul-float v8, v10, v13

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v10, v10

    sub-float v0, v10, v8

    if-ne v5, v9, :cond_3

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v12

    add-float/2addr v6, v10

    :goto_2
    cmpg-float v10, v7, v6

    if-gez v10, :cond_0

    if-ne v5, v9, :cond_4

    move v6, v7

    :cond_0
    :goto_3
    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v3

    invoke-direct {p0, v8, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v4

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v1

    goto :goto_1

    :cond_3
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v12

    sub-float/2addr v7, v10

    goto :goto_2

    :cond_4
    move v7, v6

    goto :goto_3
.end method

.method private overlapAnimation()V
    .locals 5

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    return-void
.end method

.method private panningAnimation()V
    .locals 6

    const/4 v3, 0x1

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    if-lt v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfPanning()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$1;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewZoomPanning$CameraState:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    if-nez v1, :cond_2

    const/16 v1, 0x1b8

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    :cond_2
    const-string v1, "KeyguardEffectViewZoom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "panningAnimation() state change :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-ne v1, v3, :cond_4

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->restoreAnimationInformation()V

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    :pswitch_5
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private replaceBitmapAndCameraData()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "replaceBitmapAndCameraData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private restoreAnimationInformation()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    return-void
.end method

.method private revertBitmapToOverlapBitmap()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "revertBitmapToOverlapBitmap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private saveCurrentAnimationInformation()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    return-void
.end method

.method private setGoalOfDoubleTabPause()V
    .locals 3

    const/high16 v2, 0x3f000000

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setGoalOfDoubleTabPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    return-void
.end method

.method private setGoalOfOverlap()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setGoalOfOverlap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    return-void
.end method

.method private setGoalOfPanning()V
    .locals 11

    const/high16 v10, 0x3f000000

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->makeRandomPanningPoint()Landroid/graphics/Point;

    move-result-object v4

    const/16 v5, 0x320

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    :goto_0
    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "KeyguardEffectViewZoom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setGoalOfPanning() faceGoalIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", go to ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v6

    div-float/2addr v5, v6

    mul-float v1, v5, v10

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v6

    div-float/2addr v5, v6

    mul-float v0, v5, v10

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    cmpg-float v5, v5, v1

    if-gez v5, :cond_5

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    :cond_1
    :goto_1
    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_6

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    :cond_2
    :goto_2
    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_3

    iput v9, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    :cond_3
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/secvision/face/Face;

    iget-object v3, v5, Lcom/sec/android/secvision/face/Face;->rect:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->calculateAnimationFrame(FFFF)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    iput-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    goto/16 :goto_0

    :cond_5
    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    add-float/2addr v5, v1

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    goto :goto_2
.end method

.method private setGoalOfTouchRelease()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setGoalOfTouchRelease()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    return-void
.end method

.method private sortFaceListClockwise()V
    .locals 13

    const/high16 v12, 0x43340000

    const/high16 v11, 0x40000000

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v3, v8, [F

    iget v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v8, v8

    div-float v1, v8, v11

    iget v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v8, v8

    div-float v2, v8, v11

    const/4 v6, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/secvision/face/Face;

    iget-object v7, v8, Lcom/sec/android/secvision/face/Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    sub-float v4, v8, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    sub-float v5, v8, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v0, v8

    cmpg-float v8, v4, v10

    if-gez v8, :cond_2

    cmpg-float v8, v5, v10

    if-gez v8, :cond_2

    sub-float v0, v12, v0

    :cond_1
    :goto_2
    aput v0, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    cmpg-float v8, v4, v10

    if-gez v8, :cond_3

    cmpg-float v8, v10, v5

    if-gez v8, :cond_3

    add-float/2addr v0, v12

    goto :goto_2

    :cond_3
    cmpg-float v8, v10, v4

    if-gez v8, :cond_1

    cmpg-float v8, v10, v5

    if-gez v8, :cond_1

    const/high16 v8, 0x43b40000

    sub-float v0, v8, v0

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;

    invoke-direct {v9, p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;[F)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private updateFaceList()V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mFaceDetector:Lcom/sec/android/secvision/face/FaceDetector;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/secvision/face/FaceDetector;->findFaces(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const-string v2, "KeyguardEffectViewZoom"

    const-string v3, "face is not detected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "face detect module error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFaceLis() face detected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->sortFaceListClockwise()V

    goto :goto_1
.end method

.method private updateGoalList()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->findNearestFaceIndexFromCurrentCameraPos()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfOverlap()V

    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfPanning()V

    goto :goto_2
.end method

.method private zoomAnimation(F)V
    .locals 5
    .param p1    # F

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    return-void
.end method

.method private zoomAnimationByRate(F)V
    .locals 3
    .param p1    # F

    const/high16 v2, 0x3f800000

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    add-float v1, v2, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    goto :goto_0
.end method

.method private zoomAnimationByValue(F)V
    .locals 3
    .param p1    # F

    const/high16 v2, 0x3f800000

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    goto :goto_0
.end method


# virtual methods
.method public correctCameraLocation()V
    .locals 5

    const/high16 v4, 0x3f000000

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v2, v3

    mul-float v1, v2, v4

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v2, v3

    mul-float v0, v2, v4

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    goto :goto_1
.end method

.method public getCurrentBitmapPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1    # Landroid/view/MotionEvent;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v10, v11, :cond_1

    :cond_0
    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->invalidate()V

    const/4 v10, 0x1

    goto :goto_0

    :pswitch_1
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v11, v11

    div-float v8, v10, v11

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    int-to-float v11, v11

    div-float v6, v10, v11

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000

    mul-float v2, v10, v11

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000

    mul-float v1, v10, v11

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x3f000000

    mul-float/2addr v10, v11

    mul-float/2addr v10, v8

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v2

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x3f000000

    mul-float/2addr v10, v11

    mul-float/2addr v10, v6

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v1

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    goto :goto_1

    :pswitch_2
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->saveCurrentAnimationInformation()V

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosX:F

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosY:F

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    const v11, 0x3f99999a

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    :cond_4
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v10}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    sget-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    goto/16 :goto_1

    :cond_5
    sget-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->TouchDown:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_2

    :pswitch_3
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PinchZoom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v10, v11, :cond_6

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->handlePinchZoom(Landroid/view/MotionEvent;)V

    :cond_6
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v3, v10

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v4, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    iget v12, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iget v13, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v5

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchMoveStartMinThreshold:I

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-ltz v10, :cond_3

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    int-to-float v11, v3

    const/high16 v12, 0x3f000000

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    int-to-float v11, v4

    const/high16 v12, 0x3f000000

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    sub-float v10, v5, v10

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->SECOND_BORDER:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    iget v12, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    sub-float/2addr v11, v12

    mul-float v9, v10, v11

    invoke-direct {p0, v9}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimationByValue(F)V

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    goto/16 :goto_1

    :pswitch_4
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-ge v7, v10, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    if-ne v7, v10, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    goto/16 :goto_1

    :pswitch_5
    sget-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v10}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    :cond_8
    :goto_4
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->handleDoubleTap()V

    goto/16 :goto_1

    :cond_9
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_8

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_8

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfTouchRelease()V

    goto :goto_4

    :cond_a
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    const-wide/16 v12, 0x12c

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public handleUnlock()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    :cond_0
    return-void
.end method

.method public initBitmap()Z
    .locals 8

    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "KeyguardEffectViewZoom"

    const-string v5, "MovingImageView initBitmap()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$400(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "initBitmap() : same bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v2

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_path"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-ne v4, v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "initBitmap() : revert bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->revertBitmapToOverlapBitmap()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentBitmapPath() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newBitmapPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_8

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBitmapWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mBitmapHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "keyguard_wu_wallpaper_info_category_code"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "BGA"

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    :goto_3
    move v2, v3

    goto/16 :goto_1

    :cond_8
    if-nez v0, :cond_9

    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "initBitmap() : new bitmap is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initBitmap() : overlap bitmap, mIsAnimating = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_b

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->replaceBitmapAndCameraData()V

    :cond_b
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_c
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "mBitmap is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    goto :goto_3
.end method

.method public initCamera()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MovingImageView initCamera() : mIsOverlap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsDoubleTapPuase : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v6}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v5, v5

    div-float v0, v4, v5

    cmpg-float v4, v0, v3

    if-gtz v4, :cond_4

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    :goto_0
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    if-le v4, v5, :cond_1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    :cond_1
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x45200000

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDefaultCameraWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDefaultCameraHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-ne v4, v9, :cond_5

    :cond_3
    sget-object v4, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    :goto_1
    return-void

    :cond_4
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    if-ne v4, v9, :cond_7

    sget-object v4, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    :goto_2
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    sub-int v1, v4, v5

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :cond_6
    const/4 v4, 0x0

    const/high16 v5, 0x40000000

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v4

    if-nez v4, :cond_8

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    :goto_3
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    const/high16 v4, 0x3f800000

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    goto :goto_2

    :cond_8
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    goto :goto_3
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    return v0
.end method

.method public isUpdatableState()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasScale(Z)F

    move-result v0

    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v1

    invoke-direct {p0, v3, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x437f0000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasScale(Z)F

    move-result v0

    invoke-direct {p0, v4, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v1

    invoke-direct {p0, v4, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public startAnimation()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAnimation() mIsAnimating = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> true, mState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    if-ne v2, v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    goto :goto_0
.end method

.method public stopAnimation()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DBBUG:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KeyguardEffectViewZoom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAnimation() mIsAnimating = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> false, mState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method
