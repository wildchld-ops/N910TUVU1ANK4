.class final Lcom/android/systemui/HelpHubDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HelphubDrawable.java"


# instance fields
.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mBitmapY:F

.field private mHelphubDrawableHeight:I

.field private mHelphubDrawableWidth:I

.field private mInitialBounds:Landroid/graphics/Rect;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingLeft:I

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingRight:I

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingTop:I

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingBottom:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapY:F

    iput-object v1, p0, Lcom/android/systemui/HelpHubDrawable;->mInitialBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableWidth:I

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableHeight:I

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/HelpHubDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private invalidatePadding()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mInitialBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingLeft:I

    iget v5, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingLeft:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    return-void
.end method

.method public setBitmapY(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapY:F

    return-void
.end method

.method public setBounds(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mInitialBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/HelpHubDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableHeight:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableHeight:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/HelpHubDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingLeft:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingRight:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingTop:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingBottom:I

    invoke-direct {p0}, Lcom/android/systemui/HelpHubDrawable;->invalidatePadding()V

    return-void
.end method

.method public setWidth(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableWidth:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableWidth:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/HelpHubDrawable;->setBounds(IIII)V

    return-void
.end method
