.class public Lcom/sec/android/glview/TwGLVIButton;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLVIButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final CAMCORDER_PAUSE_RESUME_VI_BTN:I = 0x0

.field private static final CAMCORDER_RECORDING_START_VI_BTN:I = 0x1

.field protected static final CONTENT_HEIGHT:I = 0x12c

.field protected static final CONTENT_WIDTH:I = 0x12c

.field public static final RECORDING_MENU_PAUSE:I = 0x1

.field protected static SCREEN_HEIGHT:I = 0x0

.field protected static SCREEN_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLVIButton"


# instance fields
.field protected DURATION:I

.field height:F

.field left:F

.field protected mAnimator:Landroid/animation/ValueAnimator;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mMode:I

.field private mPaint:Landroid/graphics/Paint;

.field protected mRenderInfos:[Lcom/sec/android/vector/RenderInfo;

.field protected mRenderRatio:F

.field protected mScaleMatrix:Landroid/graphics/Matrix;

.field private mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mVIButtonBitmap:Landroid/graphics/Bitmap;

.field top:F

.field width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLVIButton;->SCREEN_WIDTH:I

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLVIButton;->SCREEN_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;IFFFF)V
    .locals 7
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # I
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v6, v6}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v5, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/16 v2, 0xc8

    iput v2, p0, Lcom/sec/android/glview/TwGLVIButton;->DURATION:I

    iput-object v5, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    iput-object v5, p0, Lcom/sec/android/glview/TwGLVIButton;->mScaleMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000

    iput v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderRatio:F

    iput-object v5, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    iput-object v5, p0, Lcom/sec/android/glview/TwGLVIButton;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mMode:I

    iput p3, p0, Lcom/sec/android/glview/TwGLVIButton;->left:F

    iput p4, p0, Lcom/sec/android/glview/TwGLVIButton;->top:F

    iput p5, p0, Lcom/sec/android/glview/TwGLVIButton;->width:F

    iput p6, p0, Lcom/sec/android/glview/TwGLVIButton;->height:F

    iput p2, p0, Lcom/sec/android/glview/TwGLVIButton;->mMode:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLVIButton;->init()V

    float-to-int v2, p5

    float-to-int v3, p6

    invoke-direct {p0, v2, v3}, Lcom/sec/android/glview/TwGLVIButton;->setProperty(II)V

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iput-object v5, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->release()V

    iput-object v5, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    :cond_1
    float-to-int v2, p5

    float-to-int v3, p6

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderInfos:[Lcom/sec/android/vector/RenderInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderInfos:[Lcom/sec/android/vector/RenderInfo;

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderInfos:[Lcom/sec/android/vector/RenderInfo;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderRatio:F

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/glview/TwGLVIButton;->render(Landroid/graphics/Canvas;Lcom/sec/android/vector/RenderInfo;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    iput-object v5, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    :cond_3
    new-instance v2, Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, p1, v6, v6, v3}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    const v3, 0x7f020029

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setBackground(I)Z

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    iput-object p0, v2, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_4
    return-void
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private render(Landroid/graphics/Canvas;Lcom/sec/android/vector/RenderInfo;F)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Lcom/sec/android/vector/RenderInfo;
    .param p3    # F

    invoke-virtual {p2, p3}, Lcom/sec/android/vector/RenderInfo;->calculatePath(F)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p2, p3}, Lcom/sec/android/vector/RenderInfo;->calculatePaint(F)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mScaleMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private setProperty(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    const/high16 v3, 0x43960000

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    int-to-float v2, p1

    div-float v0, v2, v3

    int-to-float v2, p2

    div-float v1, v2, v3

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderInfos:[Lcom/sec/android/vector/RenderInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderInfos:[Lcom/sec/android/vector/RenderInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderInfos:[Lcom/sec/android/vector/RenderInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mScaleMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mPaint:Landroid/graphics/Paint;

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized draw()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    :cond_1
    iget v2, p0, Lcom/sec/android/glview/TwGLVIButton;->width:F

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLVIButton;->height:F

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderInfos:[Lcom/sec/android/vector/RenderInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderInfos:[Lcom/sec/android/vector/RenderInfo;

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderInfos:[Lcom/sec/android/vector/RenderInfo;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderRatio:F

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/glview/TwGLVIButton;->render(Landroid/graphics/Canvas;Lcom/sec/android/vector/RenderInfo;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButtonBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->updateTexture(Landroid/graphics/Bitmap;Z)Z

    :cond_3
    iget v2, p0, Lcom/sec/android/glview/TwGLVIButton;->left:F

    iget v3, p0, Lcom/sec/android/glview/TwGLVIButton;->top:F

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public drawCamcorderStartVIButton()V
    .locals 2

    iget v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderRatio:F

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLVIButton;->draw()V

    return-void
.end method

.method protected getRenderInfos()[Lcom/sec/android/vector/RenderInfo;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/vector/RenderInfo;

    new-instance v1, Lcom/sec/android/vector/LeftSideData;

    invoke-direct {v1}, Lcom/sec/android/vector/LeftSideData;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLVIButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLVIButton;->makeRenderInfo(Lcom/sec/android/vector/IRenderData;Landroid/graphics/Paint;)Lcom/sec/android/vector/RenderInfo;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Lcom/sec/android/vector/RightSideData;

    invoke-direct {v1}, Lcom/sec/android/vector/RightSideData;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLVIButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLVIButton;->makeRenderInfo(Lcom/sec/android/vector/IRenderData;Landroid/graphics/Paint;)Lcom/sec/android/vector/RenderInfo;

    move-result-object v1

    aput-object v1, v0, v4

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v4, [Lcom/sec/android/vector/RenderInfo;

    new-instance v1, Lcom/sec/android/vector/CamcorderData;

    invoke-direct {v1}, Lcom/sec/android/vector/CamcorderData;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLVIButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLVIButton;->makeRenderInfo(Lcom/sec/android/vector/IRenderData;Landroid/graphics/Paint;)Lcom/sec/android/vector/RenderInfo;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public init()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLVIButton;->getRenderInfos()[Lcom/sec/android/vector/RenderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderInfos:[Lcom/sec/android/vector/RenderInfo;

    iget v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mMode:I

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderRatio:F

    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mMode:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderRatio:F

    goto :goto_0
.end method

.method public initSize()V
    .locals 0

    return-void
.end method

.method protected makeRenderInfo(Lcom/sec/android/vector/IRenderData;Landroid/graphics/Paint;)Lcom/sec/android/vector/RenderInfo;
    .locals 6
    .param p1    # Lcom/sec/android/vector/IRenderData;
    .param p2    # Landroid/graphics/Paint;

    invoke-interface {p1}, Lcom/sec/android/vector/IRenderData;->getCommands()[Lcom/sec/android/vector/DRAW_PATH_TYPE;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/vector/IRenderData;->getFromParams()[[[F

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/vector/IRenderData;->getToParams()[[[F

    move-result-object v3

    new-instance v2, Lcom/sec/android/vector/RenderInfo;

    invoke-direct {v2}, Lcom/sec/android/vector/RenderInfo;-><init>()V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v2, v4}, Lcom/sec/android/vector/RenderInfo;->setPath(Landroid/graphics/Path;)V

    invoke-virtual {v2, p2}, Lcom/sec/android/vector/RenderInfo;->setPaint(Landroid/graphics/Paint;)V

    invoke-interface {p1}, Lcom/sec/android/vector/IRenderData;->getFromColor()[I

    move-result-object v4

    invoke-interface {p1}, Lcom/sec/android/vector/IRenderData;->getToColor()[I

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/vector/RenderInfo;->setColors([I[I)V

    invoke-virtual {v2, v0}, Lcom/sec/android/vector/RenderInfo;->setCommands([Lcom/sec/android/vector/DRAW_PATH_TYPE;)V

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/vector/RenderInfo;->setParams([[[F[[[F)V

    return-object v2
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderRatio:F

    const-string v0, "TwGLVIButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwGLVIButton mRenderRatio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLVIButton;->draw()V

    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 1
    .param p1    # I

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onOrientationChanged(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    :cond_0
    return-void
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/android/glview/TwGLVIButton;->mMode:I

    return-void
.end method

.method public setRect(FFFF)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    const/4 v1, 0x0

    cmpl-float v0, p3, v1

    if-lez v0, :cond_0

    cmpl-float v0, p4, v1

    if-lez v0, :cond_0

    sget v0, Lcom/sec/android/glview/TwGLVIButton;->SCREEN_WIDTH:I

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    sget v0, Lcom/sec/android/glview/TwGLVIButton;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/sec/android/glview/TwGLVIButton;->setSize(FF)V

    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1    # F
    .param p2    # F

    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mVIButton:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    :cond_0
    return-void
.end method

.method public declared-synchronized startCamcorderStartVIAnimation()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const-string v0, "TwGLVIButton"

    const-string v1, "TwGLVIButton startVIAnimation : recording button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderRatio:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/sec/android/glview/TwGLVIButton;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPauseResumeVIAnimation(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const-string v0, "TwGLVIButton"

    const-string v1, "TwGLVIButton startVIAnimation : pause&resume button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderRatio:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/sec/android/glview/TwGLVIButton;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLVIButton;->mRenderRatio:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLVIButton;->mAnimator:Landroid/animation/ValueAnimator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
