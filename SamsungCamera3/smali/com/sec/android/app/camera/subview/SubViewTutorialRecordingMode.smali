.class public Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;
.super Lcom/sec/android/app/camera/subview/SubViewBase;
.source "SubViewTutorialRecordingMode.java"


# static fields
.field private static final POS_LANDSCAPE_SHUTTER:[Landroid/graphics/PointF;

.field private static final POS_LANDSCAPE_STOP:[Landroid/graphics/PointF;

.field private static final POS_PORTRAIT_SHUTTER:[Landroid/graphics/PointF;

.field private static final POS_PORTRAIT_STOP:[Landroid/graphics/PointF;

.field public static final STEP_COMPLETE:I = 0x4

.field public static final STEP_RECORDING_START:I = 0x1

.field public static final STEP_RECORDING_STOP:I = 0x3

.field public static final STEP_SNAP_SHOT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SubViewTutorialRecordingMode"

.field private static blinkAnimation:Landroid/view/animation/Animation;

.field private static mHelpRecordFocus:Landroid/widget/ImageView;

.field private static mHelpShutterFocus:Landroid/widget/ImageView;

.field private static mPlayAnimation:Z


# instance fields
.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field public mTutorialStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v7, 0x45098000

    const/high16 v6, 0x44e60000

    const/high16 v5, 0x44d20000

    const/high16 v4, 0x44a50000

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->POS_LANDSCAPE_SHUTTER:[Landroid/graphics/PointF;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->POS_PORTRAIT_SHUTTER:[Landroid/graphics/PointF;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->POS_LANDSCAPE_STOP:[Landroid/graphics/PointF;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->POS_PORTRAIT_STOP:[Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/subview/SubViewBase;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$1;-><init>(Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mPlayAnimation:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->setOrientationListener()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->initLayout()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mPlayAnimation:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->translateFocus()V

    return-void
.end method

.method private translateFocus()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->POS_LANDSCAPE_SHUTTER:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    div-int/lit8 v2, v2, 0x5a

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->POS_LANDSCAPE_STOP:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    div-int/lit8 v2, v2, 0x5a

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->POS_PORTRAIT_SHUTTER:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    div-int/lit8 v2, v2, 0x5a

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_4
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->POS_PORTRAIT_STOP:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    div-int/lit8 v2, v2, 0x5a

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sput-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sput-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    :cond_2
    return-void
.end method

.method public getFlipPadding()I
    .locals 5

    const/16 v4, 0x5a

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->getFixedOrientation()I

    move-result v1

    if-nez v1, :cond_0

    if-eq v0, v4, :cond_1

    :cond_0
    const/16 v3, 0xb4

    if-ne v1, v3, :cond_4

    if-ne v0, v4, :cond_4

    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mTutorialStep:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/16 v2, 0x4b0

    :goto_0
    return v2

    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mTutorialStep:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    const/16 v2, 0x258

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFocusPosition()Landroid/graphics/Point;
    .locals 9

    const/16 v8, 0x10e

    const/16 v7, 0x5a

    const/16 v6, 0xb4

    const/4 v5, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->getFixedOrientation()I

    move-result v1

    sget-object v3, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    if-ne v0, v6, :cond_8

    :cond_0
    const/16 v3, 0x690

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mTutorialStep:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    if-nez v1, :cond_1

    if-eq v0, v7, :cond_2

    :cond_1
    if-ne v1, v6, :cond_9

    if-ne v0, v7, :cond_9

    :cond_2
    const/16 v3, 0x23a

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    :cond_3
    :goto_1
    sget-object v3, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    if-eqz v0, :cond_4

    if-ne v0, v6, :cond_c

    :cond_4
    const/16 v3, 0x528

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    :goto_2
    if-nez v1, :cond_5

    if-eq v0, v7, :cond_6

    :cond_5
    if-ne v1, v6, :cond_d

    if-ne v0, v7, :cond_d

    :cond_6
    const/16 v3, 0xc8

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    :cond_7
    :goto_3
    const-string v3, "SubViewTutorialRecordingMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GD] getFocusPosition point:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_8
    const/16 v3, 0x730

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_9
    if-ne v1, v7, :cond_a

    if-eq v0, v6, :cond_b

    :cond_a
    if-ne v1, v8, :cond_3

    if-ne v0, v6, :cond_3

    :cond_b
    const/16 v3, 0x2c6

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    :cond_c
    const/16 v3, 0x898

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    :cond_d
    if-ne v1, v7, :cond_e

    if-eq v0, v6, :cond_f

    :cond_e
    if-ne v1, v8, :cond_7

    if-ne v0, v6, :cond_7

    :cond_f
    const/16 v3, 0x44c

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_3
.end method

.method public initLayout()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->initLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mHelpLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mHelpLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    return-void
.end method

.method public onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mPlayAnimation:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public onShow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    :cond_1
    return-void
.end method

.method public rotateLayout()V
    .locals 4

    const-string v2, "SubViewTutorialRecordingMode"

    const-string v3, "rotateLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    sget-object v2, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->initLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mTutorialStep:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->onMoveHelpFocusPicker(I)V

    goto :goto_0
.end method

.method protected setOrientationListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;-><init>(Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public setStepComplete()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "SubViewTutorialRecordingMode"

    const-string v1, "setStepComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mTutorialStep:I

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mPlayAnimation:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public setStepRecordingStart()V
    .locals 2

    const-string v0, "SubViewTutorialRecordingMode"

    const-string v1, "setStepRecordingStart"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->setFixedOrientation()V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    return-void
.end method

.method public setStepRecordingStop()V
    .locals 3

    const/4 v2, 0x3

    const-string v0, "SubViewTutorialRecordingMode"

    const-string v1, "setStepRecordingStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mTutorialStep:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewManager;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->setStepTutorialMode(I)V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mPlayAnimation:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->translateFocus()V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    return-void
.end method

.method public setStepSnapShot()V
    .locals 3

    const/4 v2, 0x2

    const-string v0, "SubViewTutorialRecordingMode"

    const-string v1, "setStepSnapShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->setFixedOrientation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewManager;->getCamcorderRecordingMenu()Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->setStepTutorialMode(I)V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mPlayAnimation:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpRecordFocus:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mHelpShutterFocus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    return-void
.end method
