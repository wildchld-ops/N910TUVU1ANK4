.class public final Lcom/visionobjects/textwidget/c/m;
.super Ljava/lang/Object;
.source "WritingAreaViewController.java"

# interfaces
.implements Lcom/visionobjects/textwidget/h/i$b;
.implements Lcom/visionobjects/textwidget/h/i$c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/c/m$a;
    }
.end annotation


# instance fields
.field private a:Lcom/visionobjects/textwidget/h/i;

.field private b:Landroid/widget/Scroller;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:F

.field private l:Z

.field private m:Lcom/visionobjects/textwidget/c/m$a;


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/h/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->l:Z

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0, p0}, Lcom/visionobjects/textwidget/h/i;->a(Lcom/visionobjects/textwidget/h/i$c;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0, p0}, Lcom/visionobjects/textwidget/h/i;->a(Lcom/visionobjects/textwidget/h/i$b;)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/m;->b:Landroid/widget/Scroller;

    return-void
.end method

.method private b(II)V
    .locals 3

    iget v1, p0, Lcom/visionobjects/textwidget/c/m;->d:F

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->g:Z

    if-eqz v0, :cond_1

    int-to-float v0, p1

    iget v2, p0, Lcom/visionobjects/textwidget/c/m;->e:F

    add-float/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/h/i;->f()Lcom/visionobjects/textwidget/h/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/visionobjects/textwidget/h/b;->a(F)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/h/i;->f()Lcom/visionobjects/textwidget/h/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/h/b;->b(F)V

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/m;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-static {}, Lcom/visionobjects/textwidget/h/i;->i()I

    const/high16 v1, 0x47000000

    sub-float/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/h/i;->c()Lcom/visionobjects/textwidget/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/h/d;->a(F)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/h/i;->a()Lcom/visionobjects/textwidget/h/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/h/a;->b(F)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->a()Lcom/visionobjects/textwidget/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->c()V

    return-void

    :cond_1
    add-int v0, p1, p2

    int-to-float v0, v0

    iget v2, p0, Lcom/visionobjects/textwidget/c/m;->e:F

    sub-float/2addr v0, v2

    goto :goto_0
.end method

.method private w()V
    .locals 3

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->a()Lcom/visionobjects/textwidget/h/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/h/i;->f()Lcom/visionobjects/textwidget/h/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->f()Lcom/visionobjects/textwidget/h/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private x()F
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/m;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-static {}, Lcom/visionobjects/textwidget/h/i;->i()I

    const/high16 v1, 0x47000000

    iget v2, p0, Lcom/visionobjects/textwidget/c/m;->f:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/visionobjects/textwidget/c/m;->c:F

    sub-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-static {}, Lcom/visionobjects/textwidget/h/i;->i()I

    move-result v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v0, v1, v0

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private y()F
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/m;->g:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-static {}, Lcom/visionobjects/textwidget/h/i;->i()I

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/visionobjects/textwidget/c/m;->f:F

    iget v2, p0, Lcom/visionobjects/textwidget/c/m;->c:F

    sub-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private z()V
    .locals 2

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->m:Lcom/visionobjects/textwidget/c/m$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->m:Lcom/visionobjects/textwidget/c/m$a;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    iget v1, p0, Lcom/visionobjects/textwidget/c/m;->k:F

    invoke-interface {v0}, Lcom/visionobjects/textwidget/c/m$a;->l()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/visionobjects/textwidget/c/m;->e:F

    return v0
.end method

.method public final a(F)V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->a()Lcom/visionobjects/textwidget/h/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/h/i;->a()Lcom/visionobjects/textwidget/h/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->w()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->a()Lcom/visionobjects/textwidget/h/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/a;->a(I)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/visionobjects/textwidget/c/m;->b(II)V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->w()V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->h()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->h()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final a(Lcom/visionobjects/textwidget/c/m$a;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/m;->m:Lcom/visionobjects/textwidget/c/m$a;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->f()Lcom/visionobjects/textwidget/h/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->f()Lcom/visionobjects/textwidget/h/b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/visionobjects/textwidget/c/m;->d:F

    return v0
.end method

.method public final b(F)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->a()Lcom/visionobjects/textwidget/h/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/a;->a(F)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->f()Lcom/visionobjects/textwidget/h/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    int-to-float v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/h/i;->f()Lcom/visionobjects/textwidget/h/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->w()V

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->g()Lcom/visionobjects/textwidget/h/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->g()Lcom/visionobjects/textwidget/h/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->c()Lcom/visionobjects/textwidget/h/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->c()Lcom/visionobjects/textwidget/h/d;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c()F
    .locals 2

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v0

    iget v1, p0, Lcom/visionobjects/textwidget/c/m;->e:F

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v0

    iget v1, p0, Lcom/visionobjects/textwidget/c/m;->e:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final c(F)V
    .locals 2

    iput p1, p0, Lcom/visionobjects/textwidget/c/m;->e:F

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/visionobjects/textwidget/c/m;->b(II)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->f()Lcom/visionobjects/textwidget/h/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/b;->a(I)V

    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->g()Lcom/visionobjects/textwidget/h/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/c;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/visionobjects/textwidget/c/m;->g:Z

    return-void
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/visionobjects/textwidget/c/m;->c:F

    return v0
.end method

.method public final d(F)V
    .locals 2

    iput p1, p0, Lcom/visionobjects/textwidget/c/m;->d:F

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/visionobjects/textwidget/c/m;->b(II)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/m;->k:F

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->m:Lcom/visionobjects/textwidget/c/m$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->m:Lcom/visionobjects/textwidget/c/m$a;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/c/m$a;->k()V

    :cond_1
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->m:Lcom/visionobjects/textwidget/c/m$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->m:Lcom/visionobjects/textwidget/c/m$a;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/c/m$a;->m()V

    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/visionobjects/textwidget/c/m;->b(II)V

    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->g()Lcom/visionobjects/textwidget/h/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/c;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/visionobjects/textwidget/c/m;->l:Z

    return-void
.end method

.method public final e()F
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final e(F)V
    .locals 0

    iput p1, p0, Lcom/visionobjects/textwidget/c/m;->c:F

    return-void
.end method

.method public final e(Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->m:Lcom/visionobjects/textwidget/c/m$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->m:Lcom/visionobjects/textwidget/c/m$a;

    invoke-interface {v1}, Lcom/visionobjects/textwidget/c/m$a;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final f()F
    .locals 2

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public final f(F)V
    .locals 0

    iput p1, p0, Lcom/visionobjects/textwidget/c/m;->f:F

    return-void
.end method

.method public final g()F
    .locals 2

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method public final g(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "WritingAreaViewController"

    const-string v1, "User is scrolling the writing area - cancel scroll operation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->l:Z

    if-eqz v0, :cond_1

    const-string v0, "WritingAreaViewController"

    const-string v1, "User is writing at the writing area - cancel scroll operation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->b:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/c/m;->i(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/h/i;->scrollTo(II)V

    goto :goto_0
.end method

.method public final h()F
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final h(F)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "WritingAreaViewController"

    const-string v1, "User is scrolling the writing area - cancel scroll operation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->l:Z

    if-eqz v0, :cond_1

    const-string v0, "WritingAreaViewController"

    const-string v1, "User is writing at the writing area - cancel scroll operation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/c/m;->i(F)F

    move-result v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/c/m;->b:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v2, p0, Lcom/visionobjects/textwidget/c/m;->b:Landroid/widget/Scroller;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, v3, v4, v0, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final i()F
    .locals 2

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v0

    iget v1, p0, Lcom/visionobjects/textwidget/c/m;->f:F

    sub-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/m;->g:Z

    if-eqz v1, :cond_0

    neg-float v0, v0

    :cond_0
    return v0
.end method

.method public final i(F)F
    .locals 3

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->x()F

    move-result v0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->y()F

    move-result v1

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->x()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/c/m;->g(F)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->y()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/c/m;->g(F)V

    goto :goto_0
.end method

.method public final j(F)V
    .locals 3

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/c/m;->i(F)F

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/visionobjects/textwidget/h/i;->scrollTo(II)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->x()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/c/m;->h(F)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->y()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/c/m;->h(F)V

    goto :goto_0
.end method

.method public final k(F)V
    .locals 9

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->x()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->y()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->b:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-int v3, v3

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->b:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->x()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->y()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    return v0
.end method

.method public final r()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/m;->l()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->g()Lcom/visionobjects/textwidget/h/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/h/c;->a(Z)V

    iput-boolean v1, p0, Lcom/visionobjects/textwidget/c/m;->h:Z

    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/m;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/h/i;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/m;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/m;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->z()V

    :cond_1
    return-void
.end method

.method public final s()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/m;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->z()V

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->a:Lcom/visionobjects/textwidget/h/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/i;->g()Lcom/visionobjects/textwidget/h/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/h/c;->a(Z)V

    iput-boolean v1, p0, Lcom/visionobjects/textwidget/c/m;->h:Z

    return-void
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->i:Z

    return-void
.end method

.method public final u()V
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/m;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/m;->z()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/m;->i:Z

    return-void
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->m:Lcom/visionobjects/textwidget/c/m$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/m;->m:Lcom/visionobjects/textwidget/c/m$a;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/c/m$a;->o()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
