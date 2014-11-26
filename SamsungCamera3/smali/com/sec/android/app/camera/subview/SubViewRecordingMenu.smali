.class public Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;
.super Lcom/sec/android/app/camera/subview/SubViewBase;
.source "SubViewRecordingMenu.java"


# static fields
.field private static final BENDEDUI_SHUTTER_BUTTON_MOVING_THRESHOLD:F = 100.0f

.field private static final DP_TO_PIXEL:I = 0x4

.field private static final EASYMODE_POS_LANDSCAPE:[Landroid/graphics/PointF;

.field private static final EASYMODE_POS_PORTRAIT:[Landroid/graphics/PointF;

.field private static final PADDING:I = 0x50

.field private static final PAUSE_BUTTON_WIDTH:I = 0xa0

.field private static final POS_LANDSCAPE:[Landroid/graphics/PointF;

.field private static final POS_PORTRAIT:[Landroid/graphics/PointF;

.field private static final SHUTTER_BUTTON_WIDTH:I = 0x190

.field private static final STOP_BUTTON_WIDTH:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "SubViewRecordingMenu"


# instance fields
.field private mCAFButton:Landroid/widget/ImageView;

.field private mDualButton:Landroid/widget/ImageView;

.field private mInitTouchPoint:Landroid/graphics/PointF;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPauseButton:Landroid/widget/ImageView;

.field private mRecordingDualMode:Z

.field private mRecordingMenu:Landroid/view/ViewGroup;

.field private mShutterButton:Landroid/widget/ImageView;

.field private mShutterButtonBg:Landroid/widget/ImageView;

.field private mShutterLayout:Landroid/view/ViewGroup;

.field private mStopButton:Landroid/widget/ImageView;

.field mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/high16 v7, 0x44e60000

    const/high16 v6, 0x44d20000

    const/high16 v5, 0x44c80000

    const/high16 v4, 0x44960000

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->POS_LANDSCAPE:[Landroid/graphics/PointF;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->POS_PORTRAIT:[Landroid/graphics/PointF;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->EASYMODE_POS_LANDSCAPE:[Landroid/graphics/PointF;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->EASYMODE_POS_PORTRAIT:[Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/subview/SubViewBase;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mInitTouchPoint:Landroid/graphics/PointF;

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$1;-><init>(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->setOrientationListener()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/graphics/PointF;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mInitTouchPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingDualMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;Z)Z
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingDualMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;)Landroid/view/ViewGroup;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private isPauseButtonEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isShutterButtonEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private translateMenu()V
    .locals 10

    const/16 v9, 0xf0

    const/16 v8, 0xb4

    const/16 v5, 0x5a

    const/16 v7, 0x1e0

    const/4 v6, 0x0

    const-string v3, "SubViewRecordingMenu"

    const-string v4, "translateMenu"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mEasyMode:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->EASYMODE_POS_LANDSCAPE:[Landroid/graphics/PointF;

    iget v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    div-int/lit8 v5, v5, 0x5a

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->EASYMODE_POS_PORTRAIT:[Landroid/graphics/PointF;

    iget v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    div-int/lit8 v5, v5, 0x5a

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_7

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->POS_LANDSCAPE:[Landroid/graphics/PointF;

    iget v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    div-int/lit8 v5, v5, 0x5a

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-ne v3, v8, :cond_6

    :cond_5
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v7, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v3, 0x2d0

    invoke-virtual {v0, v3, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v7, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v9, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->POS_PORTRAIT:[Landroid/graphics/PointF;

    iget v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    div-int/lit8 v5, v5, 0x5a

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-ne v3, v8, :cond_9

    :cond_8
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v6, v7, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v3, 0x2d0

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1, v6, v7, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v6, v9, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButton:Landroid/widget/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButtonBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButtonBg:Landroid/widget/ImageView;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    :cond_8
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->clear()V

    return-void
.end method

.method public handleDimButtons()V
    .locals 2

    const-string v0, "SubViewRecordingMenu"

    const-string v1, "handleDimButtons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->isShutterButtonEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->setShutterButtonEnabled(Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->isPauseButtonEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public initLayout()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->initLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mBaseLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    const v1, 0x7f0f0046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    const v1, 0x7f0f0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    const v1, 0x7f0f0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButtonBg:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    const v1, 0x7f0f0045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mEasyMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    const v1, 0x7f020251

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    const v1, 0x7f0f0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mBaseLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mBaseLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    const v1, 0x7f020250

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public initialize()V
    .locals 2

    const-string v0, "SubViewRecordingMenu"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->initLayout()V

    return-void
.end method

.method public isPressedShutterButton()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButtonBg:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "SubViewRecordingMenu"

    const-string v2, "ShutterButton is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onHide()V
    .locals 3

    const/16 v2, 0x8

    const-string v0, "SubViewRecordingMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    const-string v0, "SubViewRecordingMenu"

    const-string v1, "orientation listener disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public onShow()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "SubViewRecordingMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->setFixedOrientation()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->getFixedOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->setLastOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    const v1, 0x7f02024a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingDualMode:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    const v1, 0x7f020247

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_4

    const-string v0, "SubViewRecordingMenu"

    const-string v1, "orientation listener enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_4
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingDualMode:Z

    goto :goto_0
.end method

.method public rotateLayout()V
    .locals 2

    const-string v0, "SubViewRecordingMenu"

    const-string v1, "rotateLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->initLayout()V

    return-void
.end method

.method public rotateMenu()V
    .locals 3

    const-string v0, "SubViewRecordingMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateMenu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    const-string v0, "SubViewRecordingMenu"

    const-string v1, "orientation listener disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->translateMenu()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mEasyMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->rotateImages(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->rotateImages(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->rotateImages(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->rotateImages(Landroid/widget/ImageView;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mRecordingMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->isHelpMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewManager;->getTutorialRecordingMode()Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewManager;->getTutorialRecordingMode()Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->rotateLayout()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_5

    const-string v0, "SubViewRecordingMenu"

    const-string v1, "orientation listener enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_5
    return-void
.end method

.method public setCAFButtonVisibility(I)V
    .locals 3
    .param p1    # I

    const-string v0, "SubViewRecordingMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCAFButtonVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setDualButtonVisibility(I)V
    .locals 4
    .param p1    # I

    const/16 v0, 0x8

    const-string v1, "SubViewRecordingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDualButtonVisibility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "SubViewRecordingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDualButtonVisibility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mDualButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mCAFButton:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setOrientationListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$2;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu$2;-><init>(Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public setShutterButtonEnabled(Z)Z
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButtonBg:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "SubViewRecordingMenu"

    const-string v1, "ShutterButton is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setShutterButtonPressed(Z)Z
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButtonBg:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "SubViewRecordingMenu"

    const-string v1, "ShutterButton is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mShutterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setStepTutorialMode(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->setShutterButtonEnabled(Z)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->setShutterButtonEnabled(Z)Z

    goto :goto_0
.end method
