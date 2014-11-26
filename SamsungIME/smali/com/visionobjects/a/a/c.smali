.class public final Lcom/visionobjects/a/a/c;
.super Ljava/lang/Object;
.source "PressureStroker.java"

# interfaces
.implements Lcom/visionobjects/a/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/a/a/c$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/a/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/RectF;

.field private j:I

.field private k:F

.field private l:Lcom/visionobjects/a/a/c$a;

.field private m:Lcom/visionobjects/a/a/b;

.field private n:I

.field private o:Landroid/graphics/Paint;

.field private p:F

.field private q:I

.field private r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/visionobjects/a/a/c;->b:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/visionobjects/a/a/c;->c:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/c;->d:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/c;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/c;->h:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/c;->r:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/c;->i:Landroid/graphics/RectF;

    new-instance v0, Lcom/visionobjects/a/a/b;

    invoke-direct {v0}, Lcom/visionobjects/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/c;->m:Lcom/visionobjects/a/a/b;

    invoke-direct {p0}, Lcom/visionobjects/a/a/c;->n()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/c;->o:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->o:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(FFFF)V
    .locals 7

    const/high16 v6, 0x40000000

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    float-to-double v2, v1

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr v0, v6

    add-float v1, p1, p3

    div-float/2addr v1, v6

    add-float v3, p2, p4

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/visionobjects/a/a/c;->r:Landroid/graphics/RectF;

    sub-float v5, v1, v0

    sub-float v6, v3, v0

    add-float/2addr v1, v0

    add-float/2addr v0, v3

    invoke-virtual {v4, v5, v6, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->r:Landroid/graphics/RectF;

    const/high16 v3, -0x3ccc0000

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method private a(Lcom/visionobjects/a/a/c$a;)V
    .locals 3

    iget v0, p0, Lcom/visionobjects/a/a/c;->c:F

    iget v1, p1, Lcom/visionobjects/a/a/c$a;->c:F

    mul-float/2addr v0, v1

    neg-float v1, v0

    iget v2, p1, Lcom/visionobjects/a/a/c$a;->h:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/visionobjects/a/a/c$a;->g:F

    mul-float/2addr v0, v2

    iget v2, p1, Lcom/visionobjects/a/a/c$a;->a:F

    add-float/2addr v2, v1

    iput v2, p1, Lcom/visionobjects/a/a/c$a;->i:F

    iget v2, p1, Lcom/visionobjects/a/a/c$a;->b:F

    add-float/2addr v2, v0

    iput v2, p1, Lcom/visionobjects/a/a/c$a;->j:F

    iget v2, p1, Lcom/visionobjects/a/a/c$a;->a:F

    sub-float v1, v2, v1

    iput v1, p1, Lcom/visionobjects/a/a/c$a;->k:F

    iget v1, p1, Lcom/visionobjects/a/a/c$a;->b:F

    sub-float v0, v1, v0

    iput v0, p1, Lcom/visionobjects/a/a/c$a;->l:F

    return-void
.end method

.method private a(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V
    .locals 5

    iget v0, p1, Lcom/visionobjects/a/a/c$a;->g:F

    iget v1, p2, Lcom/visionobjects/a/a/c$a;->g:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/visionobjects/a/a/c$a;->h:F

    iget v2, p2, Lcom/visionobjects/a/a/c$a;->h:F

    add-float/2addr v1, v2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/visionobjects/a/a/c;->c:F

    iget v4, p1, Lcom/visionobjects/a/a/c$a;->c:F

    mul-float/2addr v3, v4

    neg-float v4, v3

    mul-float/2addr v1, v4

    div-float/2addr v1, v2

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    iget v2, p1, Lcom/visionobjects/a/a/c$a;->a:F

    add-float/2addr v2, v1

    iput v2, p1, Lcom/visionobjects/a/a/c$a;->i:F

    iget v2, p1, Lcom/visionobjects/a/a/c$a;->b:F

    add-float/2addr v2, v0

    iput v2, p1, Lcom/visionobjects/a/a/c$a;->j:F

    iget v2, p1, Lcom/visionobjects/a/a/c$a;->a:F

    sub-float v1, v2, v1

    iput v1, p1, Lcom/visionobjects/a/a/c$a;->k:F

    iget v1, p1, Lcom/visionobjects/a/a/c$a;->b:F

    sub-float v0, v1, v0

    iput v0, p1, Lcom/visionobjects/a/a/c$a;->l:F

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/visionobjects/a/a/c$a;->a:F

    iput v0, p1, Lcom/visionobjects/a/a/c$a;->i:F

    iget v0, p1, Lcom/visionobjects/a/a/c$a;->b:F

    iput v0, p1, Lcom/visionobjects/a/a/c$a;->j:F

    iget v0, p1, Lcom/visionobjects/a/a/c$a;->a:F

    iput v0, p1, Lcom/visionobjects/a/a/c$a;->k:F

    iget v0, p1, Lcom/visionobjects/a/a/c$a;->b:F

    iput v0, p1, Lcom/visionobjects/a/a/c$a;->l:F

    goto :goto_0
.end method

.method private a(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V
    .locals 10

    const/high16 v9, 0x3f000000

    iget v0, p1, Lcom/visionobjects/a/a/c$a;->i:F

    iget v1, p2, Lcom/visionobjects/a/a/c$a;->i:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v9

    iget v1, p1, Lcom/visionobjects/a/a/c$a;->j:F

    iget v2, p2, Lcom/visionobjects/a/a/c$a;->j:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v9

    iget v2, p1, Lcom/visionobjects/a/a/c$a;->k:F

    iget v3, p2, Lcom/visionobjects/a/a/c$a;->k:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v9

    iget v3, p1, Lcom/visionobjects/a/a/c$a;->l:F

    iget v4, p2, Lcom/visionobjects/a/a/c$a;->l:F

    add-float/2addr v3, v4

    mul-float/2addr v3, v9

    iget v4, p2, Lcom/visionobjects/a/a/c$a;->i:F

    iget v5, p3, Lcom/visionobjects/a/a/c$a;->i:F

    add-float/2addr v4, v5

    mul-float/2addr v4, v9

    iget v5, p2, Lcom/visionobjects/a/a/c$a;->j:F

    iget v6, p3, Lcom/visionobjects/a/a/c$a;->j:F

    add-float/2addr v5, v6

    mul-float/2addr v5, v9

    iget v6, p2, Lcom/visionobjects/a/a/c$a;->k:F

    iget v7, p3, Lcom/visionobjects/a/a/c$a;->k:F

    add-float/2addr v6, v7

    mul-float/2addr v6, v9

    iget v7, p2, Lcom/visionobjects/a/a/c$a;->l:F

    iget v8, p3, Lcom/visionobjects/a/a/c$a;->l:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v9

    iget-object v8, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    iget v1, p2, Lcom/visionobjects/a/a/c$a;->i:F

    iget v8, p2, Lcom/visionobjects/a/a/c$a;->j:F

    invoke-virtual {v0, v1, v8, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/visionobjects/a/a/c;->a(FFFF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    iget v1, p2, Lcom/visionobjects/a/a/c$a;->k:F

    iget v4, p2, Lcom/visionobjects/a/a/c$a;->l:F

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return-void
.end method

.method private b(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V
    .locals 10

    const/high16 v9, 0x3f000000

    iget v0, p1, Lcom/visionobjects/a/a/c$a;->i:F

    iget v1, p1, Lcom/visionobjects/a/a/c$a;->j:F

    iget v2, p1, Lcom/visionobjects/a/a/c$a;->k:F

    iget v3, p1, Lcom/visionobjects/a/a/c$a;->l:F

    iget v4, p1, Lcom/visionobjects/a/a/c$a;->i:F

    iget v5, p2, Lcom/visionobjects/a/a/c$a;->i:F

    add-float/2addr v4, v5

    mul-float/2addr v4, v9

    iget v5, p1, Lcom/visionobjects/a/a/c$a;->j:F

    iget v6, p2, Lcom/visionobjects/a/a/c$a;->j:F

    add-float/2addr v5, v6

    mul-float/2addr v5, v9

    iget v6, p1, Lcom/visionobjects/a/a/c$a;->k:F

    iget v7, p2, Lcom/visionobjects/a/a/c$a;->k:F

    add-float/2addr v6, v7

    mul-float/2addr v6, v9

    iget v7, p1, Lcom/visionobjects/a/a/c$a;->l:F

    iget v8, p2, Lcom/visionobjects/a/a/c$a;->l:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v9

    iget-object v8, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/visionobjects/a/a/c;->a(FFFF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return-void
.end method

.method private c(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V
    .locals 9

    const/high16 v5, 0x3f000000

    iget v0, p1, Lcom/visionobjects/a/a/c$a;->i:F

    iget v1, p2, Lcom/visionobjects/a/a/c$a;->i:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v5

    iget v1, p1, Lcom/visionobjects/a/a/c$a;->j:F

    iget v2, p2, Lcom/visionobjects/a/a/c$a;->j:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v5

    iget v2, p1, Lcom/visionobjects/a/a/c$a;->k:F

    iget v3, p2, Lcom/visionobjects/a/a/c$a;->k:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v5

    iget v3, p1, Lcom/visionobjects/a/a/c$a;->l:F

    iget v4, p2, Lcom/visionobjects/a/a/c$a;->l:F

    add-float/2addr v3, v4

    mul-float/2addr v3, v5

    iget v4, p2, Lcom/visionobjects/a/a/c$a;->i:F

    iget v5, p2, Lcom/visionobjects/a/a/c$a;->j:F

    iget v6, p2, Lcom/visionobjects/a/a/c$a;->k:F

    iget v7, p2, Lcom/visionobjects/a/a/c$a;->l:F

    iget-object v8, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/visionobjects/a/a/c;->a(FFFF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return-void
.end method

.method private n()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/a/a/c;->p:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/a/a/c;->q:I

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

    iput p1, p0, Lcom/visionobjects/a/a/c;->b:F

    const/high16 v0, 0x40000000

    div-float v0, p1, v0

    iput v0, p0, Lcom/visionobjects/a/a/c;->c:F

    return-void
.end method

.method public final a(FFFJ)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/visionobjects/a/a/c;->e()V

    new-instance v0, Lcom/visionobjects/a/a/c$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/visionobjects/a/a/c$a;-><init>(Lcom/visionobjects/a/a/c;FFFJ)V

    iget v1, p0, Lcom/visionobjects/a/a/c;->n:I

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->m:Lcom/visionobjects/a/a/b;

    iget v1, p0, Lcom/visionobjects/a/a/c;->k:F

    invoke-static {v0, v1}, Lcom/visionobjects/a/a/b;->a(Lcom/visionobjects/a/a/c$a;F)V

    :cond_0
    iget-object v1, p0, Lcom/visionobjects/a/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v7, p0, Lcom/visionobjects/a/a/c;->j:I

    iput-object v0, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/visionobjects/a/a/c;->n:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/visionobjects/a/a/c;->n:I

    invoke-direct {p0}, Lcom/visionobjects/a/a/c;->n()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final b()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->o:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final b(FFFJ)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    iget v0, v0, Lcom/visionobjects/a/a/c$a;->a:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    iget v1, v1, Lcom/visionobjects/a/a/c$a;->b:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40a00000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    new-instance v0, Lcom/visionobjects/a/a/c$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/visionobjects/a/a/c$a;-><init>(Lcom/visionobjects/a/a/c;FFFJ)V

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    iget-wide v2, v0, Lcom/visionobjects/a/a/c$a;->d:J

    iget-wide v4, v1, Lcom/visionobjects/a/a/c$a;->d:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, v0, Lcom/visionobjects/a/a/c$a;->a:F

    iget v4, v1, Lcom/visionobjects/a/a/c$a;->a:F

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/visionobjects/a/a/c$a;->b:F

    iget v1, v1, Lcom/visionobjects/a/a/c$a;->b:F

    sub-float v1, v4, v1

    mul-float v4, v3, v3

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    cmpl-float v5, v4, v7

    if-eqz v5, :cond_0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v0, Lcom/visionobjects/a/a/c$a;->e:F

    iget v4, v0, Lcom/visionobjects/a/a/c$a;->e:F

    div-float/2addr v3, v4

    iput v3, v0, Lcom/visionobjects/a/a/c$a;->g:F

    iget v3, v0, Lcom/visionobjects/a/a/c$a;->e:F

    div-float/2addr v1, v3

    iput v1, v0, Lcom/visionobjects/a/a/c$a;->h:F

    :cond_0
    cmpl-float v1, v2, v7

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/visionobjects/a/a/c$a;->e:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/visionobjects/a/a/c$a;->f:F

    :cond_1
    iget v1, p0, Lcom/visionobjects/a/a/c;->k:F

    iget v2, v0, Lcom/visionobjects/a/a/c$a;->e:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/visionobjects/a/a/c;->k:F

    iget v1, p0, Lcom/visionobjects/a/a/c;->n:I

    if-ne v1, v8, :cond_2

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->m:Lcom/visionobjects/a/a/b;

    iget v1, p0, Lcom/visionobjects/a/a/c;->k:F

    invoke-static {v0, v1}, Lcom/visionobjects/a/a/b;->a(Lcom/visionobjects/a/a/c$a;F)V

    :cond_2
    iget v1, v0, Lcom/visionobjects/a/a/c$a;->c:F

    iget v2, p0, Lcom/visionobjects/a/a/c;->p:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/visionobjects/a/a/c;->p:F

    iget v1, p0, Lcom/visionobjects/a/a/c;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/visionobjects/a/a/c;->q:I

    iget v1, p0, Lcom/visionobjects/a/a/c;->j:I

    if-ne v1, v8, :cond_5

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    iget v2, p0, Lcom/visionobjects/a/a/c;->c:F

    iget v3, v1, Lcom/visionobjects/a/a/c$a;->c:F

    mul-float/2addr v2, v3

    neg-float v3, v2

    iget v4, v0, Lcom/visionobjects/a/a/c$a;->h:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/visionobjects/a/a/c$a;->g:F

    mul-float/2addr v2, v4

    iget v4, v1, Lcom/visionobjects/a/a/c$a;->a:F

    add-float/2addr v4, v3

    iput v4, v1, Lcom/visionobjects/a/a/c$a;->i:F

    iget v4, v1, Lcom/visionobjects/a/a/c$a;->b:F

    add-float/2addr v4, v2

    iput v4, v1, Lcom/visionobjects/a/a/c$a;->j:F

    iget v4, v1, Lcom/visionobjects/a/a/c$a;->a:F

    sub-float v3, v4, v3

    iput v3, v1, Lcom/visionobjects/a/a/c$a;->k:F

    iget v3, v1, Lcom/visionobjects/a/a/c$a;->b:F

    sub-float v2, v3, v2

    iput v2, v1, Lcom/visionobjects/a/a/c$a;->l:F

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/visionobjects/a/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/visionobjects/a/a/c;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/visionobjects/a/a/c;->j:I

    iput-object v0, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    :cond_4
    return-void

    :cond_5
    iget v1, p0, Lcom/visionobjects/a/a/c;->j:I

    if-ne v1, v9, :cond_6

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/a/a/c$a;

    iget-object v2, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    invoke-direct {p0, v2, v0}, Lcom/visionobjects/a/a/c;->a(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V

    iget-object v2, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    invoke-direct {p0, v1, v2}, Lcom/visionobjects/a/a/c;->b(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/visionobjects/a/a/c;->j:I

    if-le v1, v9, :cond_3

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->d:Ljava/util/ArrayList;

    iget v2, p0, Lcom/visionobjects/a/a/c;->j:I

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/a/a/c$a;

    iget-object v2, p0, Lcom/visionobjects/a/a/c;->d:Ljava/util/ArrayList;

    iget v3, p0, Lcom/visionobjects/a/a/c;->j:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visionobjects/a/a/c$a;

    iget-object v3, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    invoke-direct {p0, v3, v0}, Lcom/visionobjects/a/a/c;->a(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V

    iget-object v3, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    invoke-direct {p0, v1, v2, v3}, Lcom/visionobjects/a/a/c;->a(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    iput p1, p0, Lcom/visionobjects/a/a/c;->a:I

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final c()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->e:Landroid/graphics/Path;

    return-object v0
.end method

.method public final d()[Lcom/visionobjects/a/a;
    .locals 8

    iget v0, p0, Lcom/visionobjects/a/a/c;->j:I

    new-array v7, v0, [Lcom/visionobjects/a/a;

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/visionobjects/a/a/c;->j:I

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/visionobjects/a/a/c$a;

    new-instance v0, Lcom/visionobjects/a/a;

    iget v1, v4, Lcom/visionobjects/a/a/c$a;->a:F

    iget v2, v4, Lcom/visionobjects/a/a/c$a;->b:F

    iget v3, v4, Lcom/visionobjects/a/a/c$a;->c:F

    iget-wide v4, v4, Lcom/visionobjects/a/a/c$a;->d:J

    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/a/a;-><init>(FFFJ)V

    aput-object v0, v7, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/a/a/c;->k:F

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/a/a/c;->j:I

    return-void
.end method

.method public final f()V
    .locals 7

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/visionobjects/a/a/c;->n:I

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/visionobjects/a/a/c;->m:Lcom/visionobjects/a/a/b;

    iget-object v2, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    iget v3, p0, Lcom/visionobjects/a/a/c;->k:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    const/high16 v3, 0x3f800000

    iput v3, v2, Lcom/visionobjects/a/a/c$a;->c:F

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/visionobjects/a/a/c;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/visionobjects/a/a/c;->c:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/visionobjects/a/a/c;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/visionobjects/a/a/c;->c:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/visionobjects/a/a/c;->j:I

    if-lez v2, :cond_5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    iget-object v2, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    iget v3, v0, Lcom/visionobjects/a/a/c$a;->a:F

    iget v4, v0, Lcom/visionobjects/a/a/c$a;->b:F

    iget v5, p0, Lcom/visionobjects/a/a/c;->c:F

    iget v0, p0, Lcom/visionobjects/a/a/c;->q:I

    const/16 v6, 0xa

    if-ge v0, v6, :cond_4

    const v0, 0x3f4ccccd

    :goto_2
    mul-float/2addr v0, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->e:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const v3, 0x3e4ccccd

    iput v3, v2, Lcom/visionobjects/a/a/c$a;->c:F

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/visionobjects/a/a/c;->p:F

    iget v6, p0, Lcom/visionobjects/a/a/c;->q:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/visionobjects/a/a/c;->j:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/a/a/c$a;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    invoke-direct {p0, v1}, Lcom/visionobjects/a/a/c;->a(Lcom/visionobjects/a/a/c$a;)V

    invoke-direct {p0, v0, v1}, Lcom/visionobjects/a/a/c;->b(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V

    invoke-direct {p0, v0, v1}, Lcom/visionobjects/a/a/c;->c(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/visionobjects/a/a/c;->j:I

    if-le v0, v5, :cond_1

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->d:Ljava/util/ArrayList;

    iget v1, p0, Lcom/visionobjects/a/a/c;->j:I

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/a/a/c$a;

    iget-object v1, p0, Lcom/visionobjects/a/a/c;->d:Ljava/util/ArrayList;

    iget v2, p0, Lcom/visionobjects/a/a/c;->j:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/a/a/c$a;

    iget-object v2, p0, Lcom/visionobjects/a/a/c;->l:Lcom/visionobjects/a/a/c$a;

    invoke-direct {p0, v2}, Lcom/visionobjects/a/a/c;->a(Lcom/visionobjects/a/a/c$a;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/a/a/c;->a(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V

    invoke-direct {p0, v1, v2}, Lcom/visionobjects/a/a/c;->c(Lcom/visionobjects/a/a/c$a;Lcom/visionobjects/a/a/c$a;)V

    goto :goto_3
.end method

.method public final g()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->h:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final h()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->i:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/a/a/c;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

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
