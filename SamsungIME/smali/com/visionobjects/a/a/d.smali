.class public final Lcom/visionobjects/a/a/d;
.super Ljava/lang/Object;
.source "SimpleStroker.java"

# interfaces
.implements Lcom/visionobjects/a/a/e;


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/RectF;

.field private l:Landroid/graphics/Path;

.field private m:Landroid/graphics/RectF;

.field private n:Landroid/graphics/RectF;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->j:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->m:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput p1, p0, Lcom/visionobjects/a/a/d;->b:F

    return-void
.end method

.method public final a(FFFJ)V
    .locals 7

    invoke-virtual {p0}, Lcom/visionobjects/a/a/d;->e()V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    new-instance v0, Lcom/visionobjects/a/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/a/a;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iput p1, p0, Lcom/visionobjects/a/a/d;->c:F

    iput p2, p0, Lcom/visionobjects/a/a/d;->d:F

    iput p1, p0, Lcom/visionobjects/a/a/d;->e:F

    iput p2, p0, Lcom/visionobjects/a/a/d;->f:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final b()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->h:Landroid/graphics/Paint;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public final b(FFFJ)V
    .locals 8

    const/high16 v7, 0x40000000

    iget v0, p0, Lcom/visionobjects/a/a/d;->c:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/visionobjects/a/a/d;->d:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    new-instance v0, Lcom/visionobjects/a/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/a/a;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/visionobjects/a/a/d;->c:F

    add-float/2addr v0, p1

    div-float/2addr v0, v7

    iget v1, p0, Lcom/visionobjects/a/a/d;->d:F

    add-float/2addr v1, p2

    div-float/2addr v1, v7

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->union(FF)V

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->union(FF)V

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    iput p1, p0, Lcom/visionobjects/a/a/d;->c:F

    iput p2, p0, Lcom/visionobjects/a/a/d;->d:F

    iput v0, p0, Lcom/visionobjects/a/a/d;->e:F

    iput v1, p0, Lcom/visionobjects/a/a/d;->f:F

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/visionobjects/a/a/d;->a:I

    return-void
.end method

.method public final c()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    return-object v0
.end method

.method public final d()[Lcom/visionobjects/a/a;
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/visionobjects/a/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visionobjects/a/a;

    return-object v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method public final f()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x40000000

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    :cond_0
    iget v2, p0, Lcom/visionobjects/a/a/d;->b:F

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v2, v3, v2

    if-gez v2, :cond_2

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/visionobjects/a/a/d;->b:F

    div-float v2, v0, v5

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/a/a;

    iget v1, v0, Lcom/visionobjects/a/a;->a:F

    iget v0, v0, Lcom/visionobjects/a/a;->b:F

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    sub-float v4, v1, v2

    sub-float v5, v0, v2

    add-float v6, v1, v2

    add-float v7, v0, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    sub-float v4, v1, v2

    sub-float v5, v0, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v2

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final g()Landroid/graphics/RectF;
    .locals 3

    iget v0, p0, Lcom/visionobjects/a/a/d;->b:F

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/visionobjects/a/a/d;->j:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/visionobjects/a/a/d;->j:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final h()Landroid/graphics/RectF;
    .locals 3

    iget v0, p0, Lcom/visionobjects/a/a/d;->b:F

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/visionobjects/a/a/d;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/visionobjects/a/a/d;->m:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->m:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    iget v1, p0, Lcom/visionobjects/a/a/d;->e:F

    iget v2, p0, Lcom/visionobjects/a/a/d;->f:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    iget v1, p0, Lcom/visionobjects/a/a/d;->e:F

    iget v2, p0, Lcom/visionobjects/a/a/d;->f:F

    iget v3, p0, Lcom/visionobjects/a/a/d;->e:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->f:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final j()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Landroid/graphics/Matrix;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Landroid/graphics/Matrix;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
