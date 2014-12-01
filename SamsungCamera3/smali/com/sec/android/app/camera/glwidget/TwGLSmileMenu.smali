.class public Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSmileMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;
    }
.end annotation


# static fields
.field private static final HELP_TEXT_HEIGHT:I

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_WIDTH:I

.field private static final HELP_TEXT_X:I

.field private static final HELP_TEXT_Y:I

.field private static final INT_10:I = 0xa

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field public static OnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener; = null

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SIDEMENU_WIDTH:I

.field private static final SMILESHOT_BLINK_IMAGE_HEIGHT:I

.field private static final SMILESHOT_BLINK_IMAGE_WIDTH:I

.field private static final SMILESHOT_BLINK_IMAGE_X:I

.field private static final SMILESHOT_BLINK_IMAGE_Y:I

.field private static final SMILESHOT_RECT_POS_X:I

.field private static final SMILESHOT_RECT_THICKNESS:I

.field protected static final TAG:Ljava/lang/String; = "TwGLSmileMenu"


# instance fields
.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mBlinkImage:Lcom/sec/android/glview/TwGLImage;

.field private mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

.field public mHelpText:Lcom/sec/android/glview/TwGLText;

.field public mIsDetecting:Z

.field private mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPreviewResizeRatio:F

.field private mPreviewStartPosition:I

.field private mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f0a01fb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    const v0, 0x7f0a01fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    const v0, 0x7f0b0050

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_SIZE:F

    const v0, 0x7f0a04be

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_Y:I

    const v0, 0x7f0a04bc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    const v0, 0x7f0a04bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    const v0, 0x7f0a01fd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_WIDTH:I

    const v0, 0x7f0a01fe

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_HEIGHT:I

    const v0, 0x7f0a04bf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

    const v0, 0x7f0a01ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10

    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPosition:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0c013b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const v7, 0x7f0200ef

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v8, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f090017

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    aput-object v0, v9, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f090009

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    aput-object v0, v9, v8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method private init()V
    .locals 6

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    return-void
.end method


# virtual methods
.method public cleanSmileRect()V
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hideCaptureLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public hideHelpText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public isDetecting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showPostCaptureLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->hideHelpText()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    return-void
.end method

.method protected onShow()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    const-string v0, "TwGLSmileMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_0
    return-void
.end method

.method public setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public showHelpText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public smileShotFaceRectChanged([B)V
    .locals 10

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_2

    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v2, v5, v6

    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x7

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v4, v5, v6

    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xa

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xb

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v3, v5, v6

    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xd

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xe

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xf

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v0, v5, v6

    int-to-float v5, v2

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    int-to-float v5, v4

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    int-to-float v5, v3

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    int-to-float v5, v0

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    sub-int v5, v3, v2

    if-lez v5, :cond_1

    sub-int v5, v0, v4

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPosition:I

    add-int/2addr v6, v2

    int-to-float v6, v6

    int-to-float v7, v4

    sub-int v8, v3, v2

    int-to-float v8, v8

    sub-int v9, v0, v4

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public smileShotSmileRectChanged([B)V
    .locals 10

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_2

    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v2, v5, v6

    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x7

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v4, v5, v6

    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xa

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xb

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v3, v5, v6

    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xd

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xe

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xf

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v0, v5, v6

    int-to-float v5, v2

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    int-to-float v5, v4

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    int-to-float v5, v3

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    int-to-float v5, v0

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    sub-int v5, v3, v2

    if-lez v5, :cond_1

    sub-int v5, v0, v4

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPosition:I

    add-int/2addr v6, v2

    int-to-float v6, v6

    int-to-float v7, v4

    sub-int v8, v3, v2

    int-to-float v8, v8

    sub-int v9, v0, v4

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public startDetect(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPosition:I

    return-void
.end method

.method public stopDetect()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    return-void
.end method

.method public stopSmileShot()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    if-eq v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    goto :goto_0
.end method
