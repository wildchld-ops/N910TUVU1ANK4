.class public Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLFaceCircle.java"


# static fields
.field private static final DEFAULT_THICKNESS:I

.field private static final FACE_COLOR:I

.field protected static SCREEN_HEIGHT:I

.field protected static SCREEN_WIDTH:I


# instance fields
.field private mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->SCREEN_WIDTH:I

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->SCREEN_HEIGHT:I

    const v0, 0x7f09001e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->FACE_COLOR:I

    const v0, 0x7f0b001a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->DEFAULT_THICKNESS:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 8
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    const/4 v7, 0x0

    invoke-direct {p0, p1, v7, v7}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mRect:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->FACE_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->DEFAULT_THICKNESS:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    float-to-int v2, p4

    float-to-int v3, p5

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mRect:Landroid/graphics/RectF;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->DEFAULT_THICKNESS:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->DEFAULT_THICKNESS:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->DEFAULT_THICKNESS:I

    int-to-float v5, v5

    sub-float v5, p4, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->DEFAULT_THICKNESS:I

    int-to-float v6, v6

    sub-float v6, p5, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v2, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-direct {v2, p1, v7, v7, v1}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    iput-object p0, v2, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    return-void
.end method

.method public initSize()V
    .locals 0

    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    :cond_0
    return-void
.end method

.method public setRect(FFFF)V
    .locals 7
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    const/4 v3, 0x0

    cmpl-float v2, p3, v3

    if-lez v2, :cond_0

    cmpl-float v2, p4, v3

    if-lez v2, :cond_0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->SCREEN_WIDTH:I

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setSize(FF)V

    float-to-int v2, p3

    float-to-int v3, p4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mRect:Landroid/graphics/RectF;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->DEFAULT_THICKNESS:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->DEFAULT_THICKNESS:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->DEFAULT_THICKNESS:I

    int-to-float v5, v5

    sub-float v5, p3, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->DEFAULT_THICKNESS:I

    int-to-float v6, v6

    sub-float v6, p4, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->DEFAULT_THICKNESS:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/glview/TwGLTexture;->updateTexture(Landroid/graphics/Bitmap;Z)Z

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1    # F
    .param p2    # F

    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->mFaceCircle:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    :cond_0
    return-void
.end method
