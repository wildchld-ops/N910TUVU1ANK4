.class Lcom/android/launcher2/PanelDrawer$PanelDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PanelDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PanelDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelDrawable"
.end annotation


# instance fields
.field blockDraw:Z

.field private mAlpha:I

.field private mBackgroundDarken:F

.field private mBaseDarken:F

.field private mBlend:Z

.field private mBounds:Landroid/graphics/Rect;

.field private mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

.field final synthetic this$0:Lcom/android/launcher2/PanelDrawer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PanelDrawer;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->this$0:Lcom/android/launcher2/PanelDrawer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    iput v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    iput v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    iput-boolean v2, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000

    div-float v4, v0, v1

    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    :cond_2
    new-instance v0, Lcom/android/launcher2/PanelDrawer$Functor;

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v5, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    iget v6, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    iget-boolean v7, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/PanelDrawer$Functor;-><init>(Lcom/android/launcher2/PanelDrawer;IIFFFZ)V

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {p1, v0}, Lcom/android/launcher2/DrawGLFunction;->call(Landroid/graphics/Canvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    return v0
.end method

.method public getBaseDarken()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x1

    return v1
.end method

.method public invalidateSelf()V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBackgroundDarken(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setBaseDarken(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBlend(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
