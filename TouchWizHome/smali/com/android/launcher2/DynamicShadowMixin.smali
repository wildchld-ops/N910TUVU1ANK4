.class Lcom/android/launcher2/DynamicShadowMixin;
.super Ljava/lang/Object;
.source "DynamicShadowMixin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DynamicShadowMixin$Holder;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDestRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowBitmapDirty:Z

.field private final mShadowBorder:I

.field private final mShadowOffset:I

.field private mSourceRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;

.field private mViewToInvalidateOnShadowDirty:Landroid/view/View;

.field private mWidgetShadowAlphaWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "drawglfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mSourceRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mDestRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mPaint:Landroid/graphics/Paint;

    iput-object v3, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBitmapDirty:Z

    iput-object v3, p0, Lcom/android/launcher2/DynamicShadowMixin;->mViewToInvalidateOnShadowDirty:Landroid/view/View;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mWidgetShadowAlphaWeight:F

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowOffset:I

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mWidgetShadowAlphaWeight:F

    return-void
.end method

.method private align4(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public static native nGaussianBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v12, 0x0

    iget-object v11, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    iget-boolean v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBitmapDirty:Z

    if-eqz v0, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/launcher2/DynamicShadowMixin;->align4(I)I

    move-result v9

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/launcher2/DynamicShadowMixin;->align4(I)I

    move-result v8

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v8, :cond_2

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const/high16 v10, 0x3f000000

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    iget v2, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    sub-int/2addr v3, v4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v7, v7}, Lcom/android/launcher2/DynamicShadowMixin;->nGaussianBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mDestRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowOffset:I

    iget v3, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBorder:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v12, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBitmapDirty:Z

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x43160000

    mul-float/2addr v1, v6

    iget v2, p0, Lcom/android/launcher2/DynamicShadowMixin;->mWidgetShadowAlphaWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mSourceRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher2/DynamicShadowMixin;->mDestRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/DynamicShadowMixin;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBitmapDirty:Z

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mViewToInvalidateOnShadowDirty:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mViewToInvalidateOnShadowDirty:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setViewToInvalidate(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mViewToInvalidateOnShadowDirty:Landroid/view/View;

    return-void
.end method
