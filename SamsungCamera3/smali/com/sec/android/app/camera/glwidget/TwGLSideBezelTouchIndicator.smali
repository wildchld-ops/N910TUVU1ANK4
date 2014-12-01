.class public Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLSideBezelTouchIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$OnSideTouchIndicatorHideListener;
    }
.end annotation


# static fields
.field private static final DISPLAY_BAR_HEIGHT:I

.field private static final SHUTTER_PRESSED_BAR_POS_X:I

.field public static final SIDE_TOUCH_FAIL_BAR:I = 0x3

.field private static final SIDE_TOUCH_ICON_ANIMAITON_OFFSET_Y:I

.field public static final SIDE_TOUCH_ICON_ANIMATION:I = 0x4

.field public static final SIDE_TOUCH_INDICATOR_ANIMATION_COUNT:I = 0x4

.field public static final SIDE_TOUCH_INDICATOR_ANIMATION_DURATION:I = 0x1f4

.field public static final SIDE_TOUCH_INDICATOR_VISIBLE_DURATION:I = 0xfa0

.field public static final SIDE_TOUCH_NORMAL_BAR:I = 0x0

.field public static final SIDE_TOUCH_PRESS_BAR:I = 0x1

.field private static final SIDE_TOUCH_SHUTTER_ANCHOR_POS_X:I

.field private static final SIDE_TOUCH_SHUTTER_ANCHOR_POS_Y:I

.field public static final SIDE_TOUCH_SHUTTER_BAR:I = 0x2

.field private static final SIDE_TOUCH_SHUTTER_BUTTON_POS_Y:I


# instance fields
.field private downAnimation:Landroid/view/animation/Animation;

.field private mAnimationCount:I

.field private mFailBar:Lcom/sec/android/glview/TwGLImage;

.field private mNormalBar:Lcom/sec/android/glview/TwGLImage;

.field private mOnSideTouchIndicatorHideListener:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$OnSideTouchIndicatorHideListener;

.field private mPressBar:Lcom/sec/android/glview/TwGLImage;

.field private mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mShutterBar:Lcom/sec/android/glview/TwGLImage;

.field private mShutterButton:Lcom/sec/android/glview/TwGLImage;

.field private mShutterIconGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private upAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a0082

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->DISPLAY_BAR_HEIGHT:I

    const v0, 0x7f0a0083

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SHUTTER_PRESSED_BAR_POS_X:I

    const v0, 0x7f0a0084

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SIDE_TOUCH_SHUTTER_ANCHOR_POS_X:I

    const v0, 0x7f0a0085

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SIDE_TOUCH_SHUTTER_ANCHOR_POS_Y:I

    const v0, 0x7f0a0086

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SIDE_TOUCH_SHUTTER_BUTTON_POS_Y:I

    const v0, 0x7f0a0087

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SIDE_TOUCH_ICON_ANIMAITON_OFFSET_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 8

    const-wide/16 v6, 0x1f4

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mAnimationCount:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SHUTTER_PRESSED_BAR_POS_X:I

    int-to-float v1, v1

    const v2, 0x7f02048e

    invoke-direct {v0, p1, v1, v5, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mNormalBar:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mNormalBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SHUTTER_PRESSED_BAR_POS_X:I

    int-to-float v1, v1

    const v2, 0x7f020490

    invoke-direct {v0, p1, v1, v5, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mPressBar:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mPressBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SHUTTER_PRESSED_BAR_POS_X:I

    int-to-float v1, v1

    const v2, 0x7f02048f

    invoke-direct {v0, p1, v1, v5, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterBar:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SHUTTER_PRESSED_BAR_POS_X:I

    int-to-float v1, v1

    const v2, 0x7f020491

    invoke-direct {v0, p1, v1, v5, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mFailBar:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mFailBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SIDE_TOUCH_SHUTTER_ANCHOR_POS_X:I

    int-to-float v1, v1

    invoke-direct {v0, p1, v1, v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterIconGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SIDE_TOUCH_SHUTTER_ANCHOR_POS_Y:I

    int-to-float v1, v1

    const v2, 0x7f020494

    invoke-direct {v0, p1, v5, v1, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SIDE_TOUCH_SHUTTER_BUTTON_POS_Y:I

    int-to-float v1, v1

    const v2, 0x7f020495

    invoke-direct {v0, p1, v5, v1, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterButton:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterButton:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterButton:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterButton:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterIconGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterIconGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterButton:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterIconGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mNormalBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mPressBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mFailBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterIconGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SIDE_TOUCH_ICON_ANIMAITON_OFFSET_Y:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v5, v5, v5, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->SIDE_TOUCH_ICON_ANIMAITON_OFFSET_Y:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v5, v5, v1, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->downAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->downAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->downAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->downAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->downAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mAnimationCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mAnimationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mAnimationCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->downAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)Lcom/sec/android/glview/TwGLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public isAnimationFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->downAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->downAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnSideTouchIndicatorHideListener(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$OnSideTouchIndicatorHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mOnSideTouchIndicatorHideListener:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$OnSideTouchIndicatorHideListener;

    return-void
.end method

.method public setSideTouchBarState(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    if-le p1, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-gt v0, v4, :cond_0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    goto :goto_1
.end method

.method public startSideBezelTouchIconAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterIconGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterIconGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    :cond_1
    return-void
.end method

.method public stopSideBezelTouchIconAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterIconGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterIconGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mAnimationCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->downAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->downAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mOnSideTouchIndicatorHideListener:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$OnSideTouchIndicatorHideListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mOnSideTouchIndicatorHideListener:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$OnSideTouchIndicatorHideListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$OnSideTouchIndicatorHideListener;->onOnSideTouchIndicatorHideListener(Lcom/sec/android/glview/TwGLView;)V

    :cond_3
    return-void
.end method
