.class public Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLFocusButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$EndAction;,
        Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;
    }
.end annotation


# static fields
.field public static final FOCUSING:I = 0x1

.field private static final FOCUS_BASE_HEIGHT:I

.field private static final FOCUS_BASE_WIDTH:I

.field private static final FOCUS_CONTROL_HEIGHT:I

.field private static final FOCUS_CONTROL_WIDTH:I

.field public static final FOCUS_FAIL:I = 0x3

.field public static final FOCUS_NOT_STARTED:I = 0x0

.field public static final FOCUS_SUCCESS:I = 0x2

.field private static MAX_PAF_CONTROL_POSITION:F = 0.0f

.field private static MAX_PAF_LENS_POSITION:I = 0x0

.field public static MAX_SCALE_VALUE:F = 0.0f

.field private static MIN_PAF_CONTROL_POSITION:F = 0.0f

.field public static MIN_SCALE_VALUE:F = 0.0f

.field public static final MODE_FAIL:I = 0xd

.field public static final MODE_FOCUS:I = 0xb

.field public static final MODE_NOTREADY:I = 0xa

.field public static final MODE_READY:I = 0xc

.field private static PAF_CONTROL_DURATION:I = 0x0

.field private static PAF_RELIABILITY_THRESHOLD:I = 0x0

.field private static PAF_RELIABILITY_THRESHOLD_TOUCH_AF:I = 0x0

.field private static final SOLID_RECT_HEIGHT:I

.field private static final SOLID_RECT_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLFocusButton"


# instance fields
.field private aniRectGrow:Landroid/view/animation/Animation;

.field private aniRectShrink:Landroid/view/animation/Animation;

.field private aniRectTranslateGrow:Landroid/view/animation/Animation;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mDegrees:F

.field private mEndAction:Landroid/view/animation/Animation$AnimationListener;

.field private mFocus:Lcom/sec/android/glview/TwGLViewGroup;

.field private mFocusControlPosX:I

.field private mFocusControlPosY:I

.field private mFocusRectSizeX:I

.field private mFocusRectSizeY:I

.field private mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

.field private mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

.field private mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

.field private mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

.field private mFocusRect_Touch:Lcom/sec/android/glview/TwGLResourceTexture;

.field private mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

.field private mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

.field private mInitPosX:I

.field private mInitPosY:I

.field private mMode:I

.field private mOldPosX:I

.field private mOldPosY:I

.field private mReliability:I

.field private mTouchAE_Active:Lcom/sec/android/glview/TwGLResourceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a0065

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    const v0, 0x7f0a0066

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    const v0, 0x7f0a0067

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    const v0, 0x7f0a0068

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    const v0, 0x7f0a0069

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_WIDTH:I

    const v0, 0x7f0a006a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_HEIGHT:I

    const/high16 v0, 0x3f800000

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_SCALE_VALUE:F

    const v0, 0x3f666666

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_SCALE_VALUE:F

    const/16 v0, 0x96

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->PAF_CONTROL_DURATION:I

    const/16 v0, 0x190

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_LENS_POSITION:I

    const/high16 v0, 0x42340000

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_PAF_CONTROL_POSITION:F

    const/high16 v0, 0x43340000

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_CONTROL_POSITION:F

    const/16 v0, 0x32

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->PAF_RELIABILITY_THRESHOLD:I

    const/16 v0, 0x384

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->PAF_RELIABILITY_THRESHOLD_TOUCH_AF:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FF)V
    .locals 9

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    const/high16 v0, 0x42b40000

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mDegrees:F

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mReliability:I

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$EndAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$EndAction;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusControlPosX:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusControlPosY:I

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02000d

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusControlPosX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusControlPosY:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02000e

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusControlPosX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusControlPosY:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02000f

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusControlPosX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusControlPosY:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020010

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_SCALE_VALUE:F

    mul-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_SCALE_VALUE:F

    mul-float/2addr v5, v6

    const v6, 0x7f02000d

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Touch:Lcom/sec/android/glview/TwGLResourceTexture;

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_SCALE_VALUE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_SCALE_VALUE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02000c

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mTouchAE_Active:Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mTouchAE_Active:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mTouchAE_Active:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Touch:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_SCALE_VALUE:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_SCALE_VALUE:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_SCALE_VALUE:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_SCALE_VALUE:F

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_SCALE_VALUE:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_SCALE_VALUE:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_SCALE_VALUE:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_SCALE_VALUE:F

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    float-to-int v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    float-to-int v0, p3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLResourceTexture;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->PAF_RELIABILITY_THRESHOLD:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    return p1
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->PAF_CONTROL_DURATION:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mDegrees:F

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;JFFLandroid/view/animation/Interpolator;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->startAnimation(JFFLandroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mReliability:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->PAF_RELIABILITY_THRESHOLD_TOUCH_AF:I

    return v0
.end method

.method private startAnimation(JFFLandroid/view/animation/Interpolator;Z)V
    .locals 8

    const/4 v4, 0x0

    const/high16 v7, 0x40000000

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mDegrees:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float v7, v1, v6

    move-object v1, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    invoke-virtual {v0, p5}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->setDegree(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideFocusRect()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public hideTouchAEIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mTouchAE_Active:Lcom/sec/android/glview/TwGLResourceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mTouchAE_Active:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onFocus(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(IIZ)V

    return-void
.end method

.method public onFocus(IIZ)V
    .locals 7

    const/16 v6, 0xb

    const/4 v3, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p2, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_1

    :cond_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    :cond_1
    if-eqz p3, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    if-eq v2, v6, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    :cond_2
    return-void
.end method

.method public resetFocusPosIndicator()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusRectIndicator(I)V

    return-void
.end method

.method public resetInit(II)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    return-void
.end method

.method public setFocusRectIndicator(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mTouchAE_Active:Lcom/sec/android/glview/TwGLResourceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mTouchAE_Active:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPafResult(II)V
    .locals 4

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mReliability:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_PAF_CONTROL_POSITION:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_CONTROL_POSITION:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_PAF_CONTROL_POSITION:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_LENS_POSITION:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    int-to-float v1, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_CONTROL_POSITION:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_CONTROL_POSITION:F

    float-to-int v0, v1

    :cond_0
    if-lez p1, :cond_1

    mul-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mDegrees:F

    :goto_0
    return-void

    :cond_1
    int-to-float v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mDegrees:F

    goto :goto_0
.end method

.method public showFocusIndicator(I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showTouchAEIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mTouchAE_Active:Lcom/sec/android/glview/TwGLResourceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mTouchAE_Active:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public shrinkRect()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    return-void
.end method
