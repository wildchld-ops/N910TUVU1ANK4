.class public Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLReviewMenu.java"


# static fields
.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_NORMAL_WIDTH:I

.field private static final SCREEN_WIDE_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLReviewMenu"


# instance fields
.field private content_uri:Landroid/net/Uri;

.field private mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

.field private mImage:Lcom/sec/android/app/camera/gallery/IImage;

.field private mReviewImage:Lcom/sec/android/glview/TwGLImage;

.field private mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mReviewTimeOutCallback:Ljava/lang/Runnable;

.field private mVideoOverlayImage:Lcom/sec/android/glview/TwGLImage;

.field private final play_image_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a0002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_WIDE_WIDTH:I

    const v0, 0x7f0a0004

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_NORMAL_WIDTH:I

    const v0, 0x7f0a0005

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    iput-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mVideoOverlayImage:Lcom/sec/android/glview/TwGLImage;

    iput-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->content_uri:Landroid/net/Uri;

    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->play_image_width:I

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_WIDE_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v2

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->content_uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mVideoOverlayImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public onBack()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    return-void
.end method

.method protected onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    return-void
.end method

.method protected onShow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void
.end method

.method public showImage(Landroid/graphics/Bitmap;I)V
    .locals 13

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_WIDE_WIDTH:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int v10, v0, v1

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_HEIGHT:I

    sub-int/2addr v3, v10

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_WIDE_WIDTH:I

    int-to-float v4, v4

    int-to-float v5, v10

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    :goto_1
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_WIDE_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    const v6, 0x7f02045d

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_HEIGHT:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int v12, v0, v1

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_WIDE_WIDTH:I

    sub-int/2addr v0, v12

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    int-to-float v7, v12

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_HEIGHT:I

    int-to-float v8, v0

    move v6, v2

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    goto :goto_1

    :cond_4
    invoke-static {v11}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_WIDE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_HEIGHT:I

    int-to-float v8, v0

    move v6, v2

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_1

    :cond_5
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_WIDE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_NORMAL_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_NORMAL_WIDTH:I

    int-to-float v7, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_HEIGHT:I

    int-to-float v8, v0

    move v6, v2

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_1
.end method

.method public showReviewImage(Landroid/graphics/Bitmap;IZI)V
    .locals 1

    if-eqz p3, :cond_1

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xb4

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->showImage(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public showReviewImage(Landroid/net/Uri;II)V
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    const/4 v3, -0x1

    const/high16 v4, 0x100000

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->showImage(Landroid/graphics/Bitmap;I)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "TwGLReviewMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open Thumbnail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showReviewRecodingImage(Landroid/graphics/Bitmap;IZILandroid/net/Uri;)V
    .locals 7

    const/16 v4, 0x10e

    const/16 v3, 0x5a

    const/16 v2, 0xb4

    if-eqz p3, :cond_4

    if-nez p2, :cond_2

    invoke-static {p1, v4}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p4}, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->showImage(Landroid/graphics/Bitmap;I)V

    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->content_uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204f2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez p2, :cond_7

    invoke-static {v6, v4}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_1
    :goto_1
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_WIDE_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->play_image_width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->SCREEN_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->play_image_width:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->play_image_width:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->play_image_width:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mVideoOverlayImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mVideoOverlayImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mVideoOverlayImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_2
    if-ne p2, v3, :cond_3

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_0

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    if-ne p2, v2, :cond_6

    :cond_5
    invoke-static {p1, v4}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_6
    if-ne p2, v3, :cond_0

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_7
    if-ne p2, v3, :cond_8

    invoke-static {v6, v2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    :cond_8
    if-ne p2, v2, :cond_1

    invoke-static {v6, v3}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1
.end method
