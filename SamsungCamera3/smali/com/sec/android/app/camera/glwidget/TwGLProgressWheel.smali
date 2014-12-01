.class public Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLProgressWheel.java"


# static fields
.field private static final ARC_END_COLOR:I

.field private static final ARC_START_COLOR:I

.field private static final RIM_COLOR:I

.field private static final RIM_THICKNESS:F

.field private static final TAG:Ljava/lang/String; = "TwGLProgressWheel"


# instance fields
.field private mArcPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mRimPaint:Landroid/graphics/Paint;

.field private mRimRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f09001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_COLOR:I

    const v0, 0x7f0a0376

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_THICKNESS:F

    const v0, 0x7f09001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_START_COLOR:I

    const v0, 0x7f09001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_END_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x43b40000

    const/high16 v8, 0x40000000

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_START_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    float-to-int v0, p4

    float-to-int v1, p5

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v1, v8

    add-float/2addr v1, v7

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v3, v8

    add-float/2addr v3, v7

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v4, v8

    sub-float v4, p4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v5, v8

    sub-float v5, p5, v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-direct {v0, p1, v7, v7, v6}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    return-void
.end method


# virtual methods
.method public getLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getLoaded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initSize()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 12

    int-to-float v0, p1

    const/high16 v2, 0x43b40000

    div-float v10, v0, v2

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_START_COLOR:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_END_COLOR:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_START_COLOR:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_START_COLOR:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_END_COLOR:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_START_COLOR:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_START_COLOR:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_END_COLOR:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_START_COLOR:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/16 v0, 0x168

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/SweepGradient;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v11, 0x40000000

    div-float/2addr v5, v11

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_START_COLOR:I

    invoke-static {v9, v8, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-direct {v2, v3, v4, v5, v11}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x3d4c0000

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v11, 0x40000000

    div-float/2addr v5, v11

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v1, Landroid/graphics/RectF;

    const/4 v0, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_THICKNESS:F

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_THICKNESS:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_THICKNESS:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->RIM_THICKNESS:F

    const/high16 v11, 0x40000000

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x43b40000

    const/high16 v3, 0x43b40000

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mProgressWheel:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Lcom/sec/android/glview/TwGLTexture;->updateTexture(Landroid/graphics/Bitmap;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/SweepGradient;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v11, 0x40000000

    div-float/2addr v5, v11

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_START_COLOR:I

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->ARC_START_COLOR:I

    invoke-direct {v2, v3, v4, v5, v11}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_0
.end method
