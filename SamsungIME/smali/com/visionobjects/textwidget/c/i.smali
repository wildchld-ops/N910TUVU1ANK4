.class public final Lcom/visionobjects/textwidget/c/i;
.super Ljava/lang/Object;
.source "HandleViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/c/i$c;,
        Lcom/visionobjects/textwidget/c/i$b;,
        Lcom/visionobjects/textwidget/c/i$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Ljava/lang/Runnable;

.field private C:Ljava/lang/Runnable;

.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ImageView;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:F

.field private j:Z

.field private k:I

.field private l:Landroid/view/animation/Animation;

.field private m:[I

.field private n:I

.field private o:I

.field private p:Landroid/os/Handler;

.field private q:I

.field private r:F

.field private s:F

.field private t:F

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Lcom/visionobjects/textwidget/c/i$a;

.field private y:Lcom/visionobjects/textwidget/c/i$b;

.field private z:Lcom/visionobjects/textwidget/c/i$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/visionobjects/textwidget/c/i;->v:Z

    iput v3, p0, Lcom/visionobjects/textwidget/c/i;->w:I

    new-instance v0, Lcom/visionobjects/textwidget/c/j;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/c/j;-><init>(Lcom/visionobjects/textwidget/c/i;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->A:Ljava/lang/Runnable;

    new-instance v0, Lcom/visionobjects/textwidget/c/k;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/c/k;-><init>(Lcom/visionobjects/textwidget/c/i;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->B:Ljava/lang/Runnable;

    new-instance v0, Lcom/visionobjects/textwidget/c/l;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/c/l;-><init>(Lcom/visionobjects/textwidget/c/i;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->C:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41a00000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/i;->e:F

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/visionobjects/textwidget/c/i;->k:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->l:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->l:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->l:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->p:Landroid/os/Handler;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/i;->v:Z

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/i;->w:I

    invoke-direct {p0, v3}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/c/i;)I
    .locals 1

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->q:I

    return v0
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/c/i;F)V
    .locals 1

    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->s:F

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->y:Lcom/visionobjects/textwidget/c/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->y:Lcom/visionobjects/textwidget/c/i$b;

    invoke-interface {v0, p0, p1}, Lcom/visionobjects/textwidget/c/i$b;->c(Lcom/visionobjects/textwidget/c/i;F)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/c/i;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/visionobjects/textwidget/c/i;)I
    .locals 1

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->o:I

    return v0
.end method

.method static synthetic b(Lcom/visionobjects/textwidget/c/i;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/c/i;->f(F)V

    return-void
.end method

.method static synthetic c(Lcom/visionobjects/textwidget/c/i;)Z
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/visionobjects/textwidget/c/i;)F
    .locals 1

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->s:F

    return v0
.end method

.method private d(F)V
    .locals 4

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/visionobjects/textwidget/c/i;->v:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->w:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->i:F

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, p1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_1
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_2
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private d(I)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->q:I

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->g()V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->h()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/i;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->A:Ljava/lang/Runnable;

    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->k:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->h()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->g()V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->h()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private e()I
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0
.end method

.method private e(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/i;->u:Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->y:Lcom/visionobjects/textwidget/c/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->y:Lcom/visionobjects/textwidget/c/i$b;

    invoke-interface {v0, p0}, Lcom/visionobjects/textwidget/c/i$b;->a(Lcom/visionobjects/textwidget/c/i;)V

    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->o:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/visionobjects/textwidget/b/a;->b:[I

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->m:[I

    iput v3, p0, Lcom/visionobjects/textwidget/c/i;->n:I

    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->o:I

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->C:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/visionobjects/textwidget/c/i;->m:[I

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/visionobjects/textwidget/c/i;)Z
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/visionobjects/textwidget/c/i;)I
    .locals 2

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/visionobjects/textwidget/c/i;->n:I

    return v0
.end method

.method private f(F)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->s:F

    iget-object v2, p0, Lcom/visionobjects/textwidget/c/i;->y:Lcom/visionobjects/textwidget/c/i$b;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->f:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v1, p0, Lcom/visionobjects/textwidget/c/i;->f:F

    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->e(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->g:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :goto_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->g:F

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->e(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->i()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->y:Lcom/visionobjects/textwidget/c/i$b;

    invoke-interface {v0, p0, p1}, Lcom/visionobjects/textwidget/c/i$b;->b(Lcom/visionobjects/textwidget/c/i;F)V

    goto :goto_1
.end method

.method private f()Z
    .locals 5

    const/high16 v4, 0x400000

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "HandleViewController"

    const-string v2, "Geting getApplicationInfo for mIsSupportRTLSet is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic g(Lcom/visionobjects/textwidget/c/i;)I
    .locals 1

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->n:I

    return v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h(Lcom/visionobjects/textwidget/c/i;)[I
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->m:[I

    return-object v0
.end method

.method static synthetic i(Lcom/visionobjects/textwidget/c/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->o:I

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/visionobjects/textwidget/c/i;->n:I

    iput v1, p0, Lcom/visionobjects/textwidget/c/i;->o:I

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->z:Lcom/visionobjects/textwidget/c/i$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->z:Lcom/visionobjects/textwidget/c/i$c;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/c/i$c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->z:Lcom/visionobjects/textwidget/c/i$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->z:Lcom/visionobjects/textwidget/c/i$c;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/c/i$c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->e()I

    move-result v1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(F)V
    .locals 1

    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->i:F

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->c:F

    iput v0, p0, Lcom/visionobjects/textwidget/c/i;->f:F

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->d:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/i;->g:F

    return-void
.end method

.method public final a(FF)V
    .locals 0

    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->c:F

    iput p2, p0, Lcom/visionobjects/textwidget/c/i;->d:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->h:I

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/c/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/i;->x:Lcom/visionobjects/textwidget/c/i$a;

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/c/i$b;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/i;->y:Lcom/visionobjects/textwidget/c/i$b;

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/c/i$c;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/i;->z:Lcom/visionobjects/textwidget/c/i$c;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->q:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->q:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->r:F

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->r:F

    sub-float/2addr v0, v2

    invoke-direct {v1, v0, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final b(F)V
    .locals 1

    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->r:F

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/i;->u:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->e()I

    move-result v0

    iget v1, p0, Lcom/visionobjects/textwidget/c/i;->h:I

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_0

    iget v1, p0, Lcom/visionobjects/textwidget/c/i;->h:I

    sub-int p1, v1, v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/visionobjects/textwidget/c/i;->j:Z

    return-void
.end method

.method public final c(F)V
    .locals 2

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->r:F

    sub-float v0, p1, v0

    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->r:F

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/i;->u:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 3

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->l:Landroid/view/animation/Animation;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->o:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/i;->u:Z

    return v0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->x:Lcom/visionobjects/textwidget/c/i$a;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->e(F)V

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/visionobjects/textwidget/c/i;->t:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/i;->u:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/visionobjects/textwidget/c/i;->t:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->e:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->e(F)V

    :cond_2
    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/i;->u:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->f(F)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/i;->u:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visionobjects/textwidget/c/i;->u:Z

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->y:Lcom/visionobjects/textwidget/c/i$b;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->i()V

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->y:Lcom/visionobjects/textwidget/c/i$b;

    invoke-interface {v1, p0, v0}, Lcom/visionobjects/textwidget/c/i$b;->a(Lcom/visionobjects/textwidget/c/i;F)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->x:Lcom/visionobjects/textwidget/c/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->x:Lcom/visionobjects/textwidget/c/i$a;

    invoke-interface {v0, p0}, Lcom/visionobjects/textwidget/c/i$a;->b(Lcom/visionobjects/textwidget/c/i;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
