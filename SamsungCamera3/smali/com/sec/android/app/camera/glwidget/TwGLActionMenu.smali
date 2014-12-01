.class public Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLActionMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

.field private static final ACTIONSHOT_HELP_TEXT_HEIGHT:I

.field private static final ACTIONSHOT_HELP_TEXT_SIZE:F

.field private static final ACTIONSHOT_HELP_TEXT_WIDTH:I

.field private static final ACTIONSHOT_HELP_TEXT_X:[I

.field private static final ACTIONSHOT_HELP_TEXT_Y:[I

.field private static final ACTIONSHOT_RECT_HEIGHT:I

.field private static final ACTIONSHOT_RECT_POS_X:I

.field private static final ACTIONSHOT_RECT_POS_Y:I

.field private static final ACTIONSHOT_RECT_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLActionMenu"


# instance fields
.field private mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mActionRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mIsCreatingResultStarted:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

.field private mPostProgress:I

.field private mSideMenuHidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [I

    const v1, 0x7f0a045f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a0460

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a0461

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a0462

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    new-array v0, v6, [I

    const v1, 0x7f0a0463

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a0464

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a0465

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a0466

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    const v0, 0x7f0a0467

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I

    const v0, 0x7f0a0011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    const v0, 0x7f0a0469

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I

    new-array v0, v4, [F

    const v1, 0x7f0a046a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a046b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    new-array v0, v6, [I

    const v1, 0x7f0a046c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a046d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a046e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a046f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    new-array v0, v6, [I

    const v1, 0x7f0a046c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a046d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a046e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a046f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    const v0, 0x7f0a0474

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_WIDTH:I

    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_HEIGHT:I

    const v0, 0x7f0b0050

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_SIZE:F

    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    const v0, 0x7f0a0477

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    const v0, 0x7f0a0478

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    const v0, 0x7f0a0479

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9

    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02039a

    const v7, 0x7f020399

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0c0123

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f090009

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    const/high16 v7, 0x40a00000

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f090006

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    const/high16 v7, 0x40a00000

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->init()V

    return-void
.end method

.method private init()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    return-void
.end method


# virtual methods
.method public actionShotCaptureCancelled()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public actionShotCreatingResultStarted()V
    .locals 2

    const/4 v1, 0x4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public actionShotRectChanged([B)V
    .locals 10

    const/4 v9, 0x4

    const/4 v6, 0x0

    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v1, v4, v5

    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v3, v4, v5

    const/16 v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x9

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xb

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v2, v4, v5

    const/16 v4, 0xc

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xd

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xf

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v0, v4, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    sub-int v4, v2, v1

    if-lez v4, :cond_0

    sub-int v4, v0, v3

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    int-to-float v5, v1

    int-to-float v6, v3

    sub-int v7, v2, v1

    int-to-float v7, v7

    sub-int v8, v0, v3

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getProgressValue()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showHelpText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public hideHelpText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public onBack()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;->onActionShotCaptureCancelled()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideHelpText()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0x1b

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    :cond_3
    if-ne p1, v3, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    if-eqz v1, :cond_4

    const-string v1, "TwGLActionMenu"

    const-string v2, "onKeyDown - mIsCreatingResultStarted is true"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v2, 0x1b

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    if-gtz v1, :cond_0

    :cond_3
    if-ne p1, v2, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    if-eqz v1, :cond_4

    const-string v1, "TwGLActionMenu"

    const-string v2, "onKeyUp - mIsCreatingResultStarted is true"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setSizeForOrientation()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onActionShotCaptureCancelled()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showHelpText()V

    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    :cond_0
    return-void
.end method

.method public setActionShotCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 3

    const-string v0, "TwGLActionMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    return-void
.end method

.method public setSizeForOrientation()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCaptureLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideHelpText()V

    return-void
.end method

.method public showHelpText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method
