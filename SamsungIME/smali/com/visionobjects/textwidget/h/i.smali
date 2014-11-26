.class public final Lcom/visionobjects/textwidget/h/i;
.super Landroid/widget/HorizontalScrollView;
.source "WritingAreaView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/h/i$a;,
        Lcom/visionobjects/textwidget/h/i$b;,
        Lcom/visionobjects/textwidget/h/i$c;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:Landroid/widget/FrameLayout;

.field private e:Lcom/visionobjects/textwidget/h/a;

.field private f:Lcom/visionobjects/textwidget/h/d;

.field private g:Lcom/visionobjects/textwidget/h/d;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/visionobjects/a/b;

.field private j:Lcom/visionobjects/textwidget/h/c;

.field private k:Lcom/visionobjects/textwidget/h/b;

.field private l:Z

.field private m:Lcom/visionobjects/textwidget/h/i$c;

.field private n:Lcom/visionobjects/textwidget/h/i$b;

.field private o:Lcom/visionobjects/textwidget/h/i$a;

.field private p:Landroid/view/GestureDetector;

.field private q:Landroid/view/ScaleGestureDetector;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v10, -0x1

    const v9, 0x8000

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-boolean v13, p0, Lcom/visionobjects/textwidget/h/i;->r:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x43960000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/h/i;->a:F

    const/high16 v1, 0x43c80000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/h/i;->b:F

    const/high16 v1, 0x42d20000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x41200000

    invoke-static {v2, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v2, Lcom/visionobjects/textwidget/h/a;

    invoke-direct {v2, p1}, Lcom/visionobjects/textwidget/h/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->e:Lcom/visionobjects/textwidget/h/a;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->e:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    new-instance v2, Lcom/visionobjects/textwidget/h/d;

    invoke-direct {v2, p1}, Lcom/visionobjects/textwidget/h/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->f:Lcom/visionobjects/textwidget/h/d;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->f:Lcom/visionobjects/textwidget/h/d;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    new-instance v2, Lcom/visionobjects/textwidget/h/d;

    invoke-direct {v2, p1}, Lcom/visionobjects/textwidget/h/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->g:Lcom/visionobjects/textwidget/h/d;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->g:Lcom/visionobjects/textwidget/h/d;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->h:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v13}, Landroid/view/View;->setMinimumWidth(I)V

    new-instance v2, Lcom/visionobjects/a/b;

    invoke-direct {v2, p1}, Lcom/visionobjects/a/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->i:Lcom/visionobjects/a/b;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->i:Lcom/visionobjects/a/b;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    new-instance v2, Lcom/visionobjects/textwidget/h/c;

    invoke-direct {v2, p1}, Lcom/visionobjects/textwidget/h/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    new-instance v2, Lcom/visionobjects/textwidget/h/b;

    invoke-direct {v2, p1}, Lcom/visionobjects/textwidget/h/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->k:Lcom/visionobjects/textwidget/h/b;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->k:Lcom/visionobjects/textwidget/h/b;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v9, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x50

    invoke-direct {v7, v9, v11, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v10}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/visionobjects/textwidget/h/i;->e:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v1, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->k:Lcom/visionobjects/textwidget/h/b;

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    invoke-virtual {v1, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->g:Lcom/visionobjects/textwidget/h/d;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->f:Lcom/visionobjects/textwidget/h/d;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->i:Lcom/visionobjects/a/b;

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {p0, v13}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    invoke-virtual {p0, v12}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v12}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0, v12}, Landroid/view/View;->setFadingEdgeLength(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/i;->p:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/i;->q:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public static i()I
    .locals 1

    const v0, 0x8000

    return v0
.end method


# virtual methods
.method public final a()Lcom/visionobjects/textwidget/h/a;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->e:Lcom/visionobjects/textwidget/h/a;

    return-object v0
.end method

.method public final a(Lcom/visionobjects/textwidget/h/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/h/i;->o:Lcom/visionobjects/textwidget/h/i$a;

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/h/i$b;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/h/i$c;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/h/i;->m:Lcom/visionobjects/textwidget/h/i$c;

    return-void
.end method

.method public final b()Lcom/visionobjects/textwidget/h/d;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->f:Lcom/visionobjects/textwidget/h/d;

    return-object v0
.end method

.method public final c()Lcom/visionobjects/textwidget/h/d;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->g:Lcom/visionobjects/textwidget/h/d;

    return-object v0
.end method

.method public final d()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/16 v1, 0x9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$b;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/h/i;->l:Z

    :cond_0
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/h/i;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$b;->t()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$b;->u()V

    :cond_3
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/h/i;->l:Z

    if-eqz v0, :cond_4

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/visionobjects/a/b;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->i:Lcom/visionobjects/a/b;

    return-object v0
.end method

.method public final f()Lcom/visionobjects/textwidget/h/b;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->k:Lcom/visionobjects/textwidget/h/b;

    return-object v0
.end method

.method public final g()Lcom/visionobjects/textwidget/h/c;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    return-object v0
.end method

.method public final h()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0, p3}, Lcom/visionobjects/textwidget/h/i$b;->k(F)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->q:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v1, v0}, Lcom/visionobjects/textwidget/h/i$b;->e(Z)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iget v1, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget v1, p0, Lcom/visionobjects/textwidget/h/i;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v2, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->o:Lcom/visionobjects/textwidget/h/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->o:Lcom/visionobjects/textwidget/h/i$a;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$a;->i()V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/visionobjects/textwidget/h/i;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput v2, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->o:Lcom/visionobjects/textwidget/h/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->o:Lcom/visionobjects/textwidget/h/i$a;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$a;->j()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    iget v3, p0, Lcom/visionobjects/textwidget/h/i;->b:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iput v0, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    :goto_0
    iget v2, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_0
    iget v3, p0, Lcom/visionobjects/textwidget/h/i;->a:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v2, 0x2

    iput v2, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0, p3}, Lcom/visionobjects/textwidget/h/i$b;->j(F)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/c;->b(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->m:Lcom/visionobjects/textwidget/h/i$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->m:Lcom/visionobjects/textwidget/h/i$c;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/h/i$c;->d(I)V

    :cond_0
    return-void
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/c;->a(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->m:Lcom/visionobjects/textwidget/h/i$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->m:Lcom/visionobjects/textwidget/h/i$c;

    invoke-interface {v0, p1, p2}, Lcom/visionobjects/textwidget/h/i$c;->a(II)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->p:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$b;->r()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$b;->s()V

    :cond_2
    return v2
.end method

.method public final scrollBy(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/h/i;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    int-to-float v1, p1

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/h/i$b;->j(F)V

    :cond_0
    return-void
.end method

.method public final scrollTo(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/h/i;->r:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/c;->b(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/h/i;->r:Z

    :cond_0
    return-void
.end method
