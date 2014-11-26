.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorialRecordingMode.java"


# static fields
.field private static final CAMCORDER_BUTTON_X:F

.field private static final CAMCORDER_BUTTON_Y:F

.field private static final EASY_HELP_FOCUS_PADDING_Y:F

.field private static final EASY_RECORDING_STOP_BUTTON_Y:F

.field private static final FONT_COLOR:I

.field private static final FONT_SIZE:I

.field private static final HELP_POPUP_HEIGHT:F

.field private static final HELP_POPUP_PADDING:[F

.field private static final HELP_POPUP_PICKER_PADDING:F

.field private static final HELP_POPUP_WIDTH:[F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_MARGIN:F

.field private static final HELP_TEXT_WIDTH:[F

.field private static final HELP_TEXT_WIDTH_MARGIN:F

.field private static final RECORDING_BUTTON_GROUP_X:F

.field private static final RECORDING_SNAPSHOT_BUTTON_Y:F

.field private static final RECORDING_SNAPSHOT_MARGIN_Y:F

.field private static final RECORDING_STOP_BUTTON_Y:F

.field private static final RIGHT_SIDE_BUTTON_HEIGHT:F

.field private static final RIGHT_SIDE_BUTTON_WIDTH:F

.field private static final RIGHT_SIDE_MENU_X:F

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field public static final STEP_COMPLETE:I = 0x4

.field public static final STEP_RECORDING_START:I = 0x1

.field public static final STEP_RECORDING_STOP:I = 0x3

.field public static final STEP_SNAP_SHOT:I = 0x2

.field private static final SUBVIEW_HELP_FOCUS_HEIGHT:I = 0xa0

.field private static final SUBVIEW_HELP_FOCUS_WIDTH:I = 0xa0

.field protected static final TAG:Ljava/lang/String; = "TwGLTutorialRecordingMode"

.field private static mOrientation:I


# instance fields
.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mHelpFocus:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private final mShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field public mTutorialStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/high16 v5, 0x40000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    const v0, 0x7f0a01ee

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const v0, 0x7f0a01ef

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT_MARGIN:F

    new-array v0, v6, [F

    const v1, 0x7f0a01f0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a01f1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const v0, 0x7f0a01f2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    new-array v0, v6, [F

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT_MARGIN:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    const v0, 0x7f0a01e5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    const v1, 0x7f0a01e8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a01e9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a01e7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x3

    const v2, 0x7f0a01ea

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const v1, 0x7f0a0015

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_MENU_X:F

    const v0, 0x7f0a0020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    const v0, 0x7f0a0021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_HEIGHT:F

    const v0, 0x7f0a0028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->CAMCORDER_BUTTON_X:F

    const v0, 0x7f0a0029

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->CAMCORDER_BUTTON_Y:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_MENU_X:F

    const v1, 0x7f0a00a6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_BUTTON_GROUP_X:F

    const v0, 0x7f0a00a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_SNAPSHOT_BUTTON_Y:F

    const v0, 0x7f0a00a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_SNAPSHOT_MARGIN_Y:F

    const v0, 0x7f0a00a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_STOP_BUTTON_Y:F

    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->EASY_RECORDING_STOP_BUTTON_Y:F

    const v0, 0x7f0a0014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->EASY_HELP_FOCUS_PADDING_Y:F

    const v0, 0x7f0b004b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    const v0, 0x7f090008

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_COLOR:I

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mOrientation:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 10
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f19999a

    const/high16 v2, 0x3f800000

    const v3, 0x3f19999a

    const/high16 v4, 0x3f800000

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v2, v2

    neg-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    neg-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT_MARGIN:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0203e7

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203eb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepRecordingStart()V

    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1    # F
    .param p2    # F

    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public convertOrientationForSubView(I)I
    .locals 1
    .param p1    # I

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1    # F
    .param p2    # F

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideHelpTutorial()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    :cond_4
    return-void
.end method

.method public onHelpTts()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method public onMoveHelpFocusPicker(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1    # I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mOrientation:I

    if-eq v0, p1, :cond_0

    sput p1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mOrientation:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setSizeForOrientation(I)V

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    return-void
.end method

.method public setHelpText(I)V
    .locals 13
    .param p1    # I

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c020d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :goto_1
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const v6, 0x7f0a01f4

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v1

    sub-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    const/high16 v9, 0x40400000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    :goto_2
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    const/high16 v10, 0x40400000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v10, v5, -0x1

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x40400000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    add-float/2addr v9, v1

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    :pswitch_2
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_2

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    sget-object v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v10, v5, -0x1

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    sget-object v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_3

    :pswitch_3
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c020e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    packed-switch v3, :pswitch_data_2

    :goto_4
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v1

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    const/high16 v9, 0x40400000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    :goto_5
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sub-float/2addr v9, v1

    const/high16 v10, 0x40000000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v10, v5, -0x1

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x40400000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    const/high16 v10, 0x40800000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    :goto_6
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    :pswitch_5
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_5

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    sget-object v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v10, v5, -0x1

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    sget-object v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_6

    :pswitch_6
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c020f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v6

    packed-switch v6, :pswitch_data_3

    :goto_7
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v1

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    const/high16 v9, 0x40400000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    :goto_8
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    const/high16 v10, 0x40400000

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v10, v5, -0x1

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x40400000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    add-float/2addr v9, v1

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    :goto_9
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    :pswitch_8
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v11, v5, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_8

    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    sget-object v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v10, v5, -0x1

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    sget-object v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_9

    :pswitch_9
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c0217

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v6

    packed-switch v6, :pswitch_data_4

    :goto_a
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x2

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x3

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->CAMCORDER_BUTTON_X:F

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_a

    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_a

    :pswitch_b
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_a

    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-float v8, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setSizeForOrientation(I)V
    .locals 11
    .param p1    # I

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/high16 v8, 0x40000000

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-eq v3, v9, :cond_2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v2

    if-ne v2, v7, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-eq v3, v9, :cond_3

    if-ne v2, v7, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v4, v4, v10

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v10

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-eq v3, v9, :cond_6

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v2

    if-ne v2, v7, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-eq v3, v9, :cond_7

    if-ne v2, v7, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v4, v4, v7

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v7

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStepComplete()V
    .locals 3

    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setHelpText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewManager;->getTutorialRecordingMode()Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->setStepComplete()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xca

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method

.method public setStepHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public setStepRecordingStart()V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x43200000

    const/high16 v6, 0x40000000

    iput v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->CAMCORDER_BUTTON_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->CAMCORDER_BUTTON_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v2, v2

    neg-float v2, v2

    div-float/2addr v2, v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    neg-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setHelpText(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewManager;->getTutorialRecordingMode()Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->setStepRecordingStart()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewManager;->getTutorialRecordingMode()Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->getFocusPosition()Landroid/graphics/Point;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mOrientation:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mOrientation:I

    if-eq v1, v8, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xa0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float v3, v7, v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f0203ea

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setHelpText(I)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xca

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float v3, v7, v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_1
.end method

.method public setStepRecordingStop()V
    .locals 8

    const/high16 v7, 0x43200000

    const/4 v2, 0x0

    const/high16 v6, 0x40000000

    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_BUTTON_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->EASY_RECORDING_STOP_BUTTON_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->EASY_HELP_FOCUS_PADDING_Y:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setHelpText(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewManager;->getTutorialRecordingMode()Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->setStepRecordingStop()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewManager;->getTutorialRecordingMode()Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->getFocusPosition()Landroid/graphics/Point;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xa0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float v3, v7, v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f0203ea

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setHelpText(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_BUTTON_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_STOP_BUTTON_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float v3, v7, v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_2
.end method

.method public setStepSnapShot()V
    .locals 9

    const/4 v8, 0x2

    const/high16 v7, 0x43200000

    const/4 v2, 0x0

    const/high16 v6, 0x40000000

    iput v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepRecordingStop()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_BUTTON_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_SNAPSHOT_BUTTON_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setHelpText(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewManager;->getTutorialRecordingMode()Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->setStepSnapShot()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewManager;->getTutorialRecordingMode()Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->getFocusPosition()Landroid/graphics/Point;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mOrientation:I

    if-ne v1, v8, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xa0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float v3, v7, v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f0203ea

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setHelpText(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float v3, v7, v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto/16 :goto_0
.end method
