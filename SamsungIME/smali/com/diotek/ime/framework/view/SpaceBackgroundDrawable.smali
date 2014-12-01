.class public Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SpaceBackgroundDrawable.java"


# instance fields
.field private mArrowPositionY:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mLeftArrow:Landroid/graphics/drawable/Drawable;

.field private mLeftArrowPositionX:I

.field private mRightArrow:Landroid/graphics/drawable/Drawable;

.field private mRightArrowPositionX:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mHeight:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :cond_0
    if-le p7, v1, :cond_3

    iput p7, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mWidth:I

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v5, v5, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-ge p5, v0, :cond_4

    iput v5, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mLeftArrowPositionX:I

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v5, v5, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput p6, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mRightArrowPositionX:I

    add-int v2, p6, v0

    iget v3, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mWidth:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mWidth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mRightArrowPositionX:I

    :cond_2
    iput p4, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mArrowPositionY:I

    return-void

    :cond_3
    iput v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mWidth:I

    goto :goto_0

    :cond_4
    sub-int v2, p5, v0

    iput v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mLeftArrowPositionX:I

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mHeight:I

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mWidth:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    int-to-float v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mLeftArrowPositionX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mArrowPositionY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mLeftArrowPositionX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mArrowPositionY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mRightArrowPositionX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mArrowPositionY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v1, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mRightArrowPositionX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mArrowPositionY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/SpaceBackgroundDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
