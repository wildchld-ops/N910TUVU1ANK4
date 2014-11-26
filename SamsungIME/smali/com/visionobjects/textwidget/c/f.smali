.class public final Lcom/visionobjects/textwidget/c/f;
.super Ljava/lang/Object;
.source "CursorViewController.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;

.field private d:Z

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v3, 0x15e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/f;->i:Z

    iput v0, p0, Lcom/visionobjects/textwidget/c/f;->j:I

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/f;->b:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->b:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/visionobjects/textwidget/c/g;

    invoke-direct {v1, p0}, Lcom/visionobjects/textwidget/c/g;-><init>(Lcom/visionobjects/textwidget/c/f;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    new-instance v1, Lcom/visionobjects/textwidget/c/h;

    invoke-direct {v1, p0}, Lcom/visionobjects/textwidget/c/h;-><init>(Lcom/visionobjects/textwidget/c/f;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/f;->d:Z

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40000000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/c/f;->e:F

    const/high16 v1, 0x41700000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/f;->f:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/f;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/f;->i:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/f;->j:I

    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/c/f;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic b(Lcom/visionobjects/textwidget/c/f;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/visionobjects/textwidget/c/f;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->b:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private d()Z
    .locals 5

    const/high16 v4, 0x400000

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

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

    const-string v1, "CursorViewController"

    const-string v2, "Geting getApplicationInfo for mIsSupportRTLSet is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/visionobjects/textwidget/c/f;->h:I

    return v0
.end method

.method public final a(F)V
    .locals 4

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/visionobjects/textwidget/c/f;->i:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/visionobjects/textwidget/c/f;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/high16 v2, 0x47000000

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, p1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_1
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

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

.method public final a(FF)V
    .locals 0

    iput p1, p0, Lcom/visionobjects/textwidget/c/f;->e:F

    iput p2, p0, Lcom/visionobjects/textwidget/c/f;->f:F

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/f;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/c/f;->d:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public final b(FF)V
    .locals 3

    add-float v0, p1, p2

    iget v1, p0, Lcom/visionobjects/textwidget/c/f;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/f;->g:I

    iget v0, p0, Lcom/visionobjects/textwidget/c/f;->f:F

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/f;->h:I

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/visionobjects/textwidget/c/f;->g:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Lcom/visionobjects/textwidget/c/f;->h:I

    iget v2, p0, Lcom/visionobjects/textwidget/c/f;->g:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/f;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/f;->d:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
