.class abstract Landroid/view/GLES20Layer;
.super Landroid/view/HardwareLayer;
.source "GLES20Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20Layer$Finalizer;
    }
.end annotation


# instance fields
.field mFinalizer:Landroid/view/GLES20Layer$Finalizer;

.field mLayer:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/HardwareLayer;-><init>()V

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/HardwareLayer;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method clearStorage()V
    .locals 1

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nClearLayerTexture(I)V

    :cond_0
    return-void
.end method

.method public copyInto(Landroid/graphics/Bitmap;)Z
    .locals 2

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nCopyLayer(II)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Landroid/view/HardwareLayer;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareLayer;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->reset()V

    :cond_0
    iget-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    invoke-virtual {v0}, Landroid/view/GLES20Layer$Finalizer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    return-void
.end method

.method public getLayer()I
    .locals 1

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    return v0
.end method

.method setImageFilter(Landroid/graphics/ImageFilter;)V
    .locals 5

    iget v2, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-static {v2}, Landroid/view/GLES20Canvas;->nClearImageFilters(I)V

    if-eqz p1, :cond_1

    instance-of v2, p1, Landroid/graphics/ImageFilterSet;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/ImageFilterSet;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/ImageFilterSet;->getFilterCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-virtual {v0, v1}, Landroid/graphics/ImageFilterSet;->getFilterAt(I)Landroid/graphics/ImageFilter;

    move-result-object v3

    iget v3, v3, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    invoke-static {v2, v3, v1}, Landroid/view/GLES20Canvas;->nSetImageFilter(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget v3, p1, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/GLES20Canvas;->nSetImageFilter(III)V

    :cond_1
    return-void
.end method

.method setImageFilterClipRect(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-static {v0, v1, v1, v1, v1}, Landroid/view/GLES20Canvas;->nSetImageFilterClipRect(IIIII)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/GLES20Canvas;->nSetImageFilterClipRect(IIIII)V

    goto :goto_0
.end method

.method setLayerPaint(Landroid/graphics/Paint;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nSetLayerPaint(II)V

    iget v1, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    iget v0, v0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    :goto_0
    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nSetLayerColorFilter(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
