.class public final Lcom/visionobjects/a/b;
.super Landroid/view/View;
.source "InkWidget.java"

# interfaces
.implements Lcom/visionobjects/a/c;


# instance fields
.field private a:Lcom/visionobjects/a/a/e;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;

.field private d:I

.field private e:I

.field private f:Lcom/visionobjects/a/c$b;

.field private g:Lcom/visionobjects/a/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/b;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/b;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40a00000

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    new-instance v1, Lcom/visionobjects/a/a/c;

    invoke-direct {v1}, Lcom/visionobjects/a/a/c;-><init>()V

    iput-object v1, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    iget-object v1, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v1, v2}, Lcom/visionobjects/a/a/e;->a(I)V

    iget-object v1, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    const/high16 v2, -0x1000000

    invoke-interface {v1, v2}, Lcom/visionobjects/a/a/e;->b(I)V

    iget-object v1, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v1, v0}, Lcom/visionobjects/a/a/e;->a(F)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->g()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->e()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)V
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0, p1}, Lcom/visionobjects/a/a/e;->a(F)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0, p1}, Lcom/visionobjects/a/a/e;->b(I)V

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0, p1, p2}, Lcom/visionobjects/a/a/e;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final a(Lcom/visionobjects/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    return-void
.end method

.method public final a(Lcom/visionobjects/a/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->g()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final canScrollHorizontally(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final canScrollVertically(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Landroid/graphics/Paint;
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->b()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/graphics/Path;
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->c()Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public final f()[Lcom/visionobjects/a/a;
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->d()[Lcom/visionobjects/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final g()Landroid/graphics/Matrix;
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->k()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/graphics/Matrix;
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->m()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public final i()Landroid/graphics/Paint;
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->a()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->e()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget v0, p0, Lcom/visionobjects/a/b;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    invoke-interface {v0}, Lcom/visionobjects/a/c$b;->c()V

    invoke-direct {p0}, Lcom/visionobjects/a/b;->m()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/visionobjects/a/b;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/a/b;->d:I

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->e()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->e()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->d()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->g()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->g()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->i()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0}, Lcom/visionobjects/a/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->h()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->h()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0}, Lcom/visionobjects/a/b;->i()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/16 v1, 0xe

    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/visionobjects/a/b;->l()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/visionobjects/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_1
    return v6

    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v10, :cond_5

    move v0, v6

    :goto_1
    if-nez v0, :cond_2

    iget v1, p0, Lcom/visionobjects/a/b;->d:I

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget v9, p0, Lcom/visionobjects/a/b;->d:I

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/visionobjects/a/b;->g:Lcom/visionobjects/a/c$a;

    :cond_3
    iget v9, p0, Lcom/visionobjects/a/b;->d:I

    if-ne v9, v6, :cond_4

    iget-object v9, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    invoke-interface {v9}, Lcom/visionobjects/a/c$b;->c()V

    :cond_4
    iput v8, p0, Lcom/visionobjects/a/b;->e:I

    iget-object v8, p0, Lcom/visionobjects/a/b;->g:Lcom/visionobjects/a/c$a;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/visionobjects/a/b;->g:Lcom/visionobjects/a/c$a;

    invoke-interface {v8}, Lcom/visionobjects/a/c$a;->a()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v0, p0, Lcom/visionobjects/a/b;->g:Lcom/visionobjects/a/c$a;

    iget-object v0, p0, Lcom/visionobjects/a/b;->g:Lcom/visionobjects/a/c$a;

    iput v10, p0, Lcom/visionobjects/a/b;->d:I

    goto :goto_0

    :cond_5
    move v0, v7

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    invoke-interface {v8}, Lcom/visionobjects/a/c$b;->a()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    invoke-interface {v8}, Lcom/visionobjects/a/c$b;->b()V

    iget-object v8, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    invoke-interface {v8, v1}, Lcom/visionobjects/a/c$b;->a(F)V

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0, v7}, Lcom/visionobjects/a/a/e;->a(I)V

    :goto_2
    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface/range {v0 .. v5}, Lcom/visionobjects/a/a/e;->a(FFFJ)V

    iput v6, p0, Lcom/visionobjects/a/b;->d:I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0, v6}, Lcom/visionobjects/a/a/e;->a(I)V

    goto :goto_2

    :pswitch_2
    iget v0, p0, Lcom/visionobjects/a/b;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    iget v0, p0, Lcom/visionobjects/a/b;->d:I

    if-ne v0, v10, :cond_8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    iget-object v0, p0, Lcom/visionobjects/a/b;->g:Lcom/visionobjects/a/c$a;

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/visionobjects/a/b;->d:I

    if-ne v0, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v9

    :goto_3
    if-ge v7, v9, :cond_9

    invoke-virtual {p1, v8, v7}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v1

    invoke-virtual {p1, v8, v7}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v2

    invoke-virtual {p1, v8, v7}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    invoke-interface {v0, v1}, Lcom/visionobjects/a/c$b;->a(F)V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface/range {v0 .. v5}, Lcom/visionobjects/a/a/e;->b(FFFJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    invoke-interface {v0, v1}, Lcom/visionobjects/a/c$b;->a(F)V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface/range {v0 .. v5}, Lcom/visionobjects/a/a/e;->b(FFFJ)V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->h()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->i()V

    goto/16 :goto_0

    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_b

    move v0, v6

    :goto_4
    if-eqz v0, :cond_d

    iget v0, p0, Lcom/visionobjects/a/b;->d:I

    if-ne v0, v10, :cond_c

    iget-object v0, p0, Lcom/visionobjects/a/b;->g:Lcom/visionobjects/a/c$a;

    :cond_a
    :goto_5
    iput v9, p0, Lcom/visionobjects/a/b;->e:I

    iput v7, p0, Lcom/visionobjects/a/b;->d:I

    goto/16 :goto_0

    :cond_b
    move v0, v7

    goto :goto_4

    :cond_c
    iget v0, p0, Lcom/visionobjects/a/b;->d:I

    if-ne v0, v6, :cond_a

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->f()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->h()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->i()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    invoke-interface {v0, p0}, Lcom/visionobjects/a/c$b;->a(Lcom/visionobjects/a/b;)V

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/visionobjects/a/b;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/visionobjects/a/b;->d:I

    if-ne v0, v10, :cond_f

    iget-object v0, p0, Lcom/visionobjects/a/b;->g:Lcom/visionobjects/a/c$a;

    :cond_e
    :goto_6
    invoke-direct {p0}, Lcom/visionobjects/a/b;->m()V

    iput v9, p0, Lcom/visionobjects/a/b;->e:I

    iput v7, p0, Lcom/visionobjects/a/b;->d:I

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lcom/visionobjects/a/b;->d:I

    if-ne v0, v6, :cond_e

    iget-object v0, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    invoke-interface {v0}, Lcom/visionobjects/a/c$b;->c()V

    goto :goto_6

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/visionobjects/a/b;->e:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/visionobjects/a/b;->d:I

    if-ne v1, v10, :cond_11

    iget-object v0, p0, Lcom/visionobjects/a/b;->g:Lcom/visionobjects/a/c$a;

    :cond_10
    :goto_7
    iput v9, p0, Lcom/visionobjects/a/b;->e:I

    iput v7, p0, Lcom/visionobjects/a/b;->d:I

    goto/16 :goto_0

    :cond_11
    iget v1, p0, Lcom/visionobjects/a/b;->d:I

    if-ne v1, v6, :cond_10

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    invoke-interface {v0, v1}, Lcom/visionobjects/a/c$b;->a(F)V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface/range {v0 .. v5}, Lcom/visionobjects/a/a/e;->b(FFFJ)V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->f()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->h()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/visionobjects/a/b;->a:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->i()V

    iget-object v0, p0, Lcom/visionobjects/a/b;->f:Lcom/visionobjects/a/c$b;

    invoke-interface {v0, p0}, Lcom/visionobjects/a/c$b;->a(Lcom/visionobjects/a/b;)V

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
