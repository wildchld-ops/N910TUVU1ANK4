.class public final Lcom/visionobjects/textwidget/e/b;
.super Ljava/lang/Object;
.source "LayoutController.java"


# instance fields
.field private a:Lcom/visionobjects/textwidget/e/a;

.field private b:Lcom/visionobjects/textwidget/f/b/a;

.field private c:Lcom/visionobjects/textwidget/f/a/b;

.field private d:Lcom/visionobjects/textwidget/c/m;

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/e/a;Lcom/visionobjects/textwidget/f/b/a;Lcom/visionobjects/textwidget/f/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    iput-object p2, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    iput-object p3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    return-void
.end method

.method private a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;
    .locals 3

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p2

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;
    .locals 3

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->d(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->c(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Lcom/visionobjects/textwidget/f/c;->a(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/visionobjects/textwidget/d/a/d;->a(Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;)[Lcom/visionobjects/textwidget/f/b;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->o()B

    move-result v0

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/c;->a(B)V

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/c;->c(Z)V

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/c;->d(Z)V

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/f/c;->e(Z)V

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v3

    :goto_2
    invoke-direct {p0, v4}, Lcom/visionobjects/textwidget/e/b;->f(Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    invoke-direct {p0, v5, v0}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v3}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V
    .locals 2

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v0

    neg-float v0, v0

    :goto_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/m;->g(F)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/visionobjects/textwidget/f/c;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Lcom/visionobjects/textwidget/f/b;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/f/c;->e(Z)V

    return-void
.end method

.method private a([Lcom/visionobjects/textwidget/f/c;IIFF)V
    .locals 5

    const/4 v1, 0x0

    if-ne p2, p3, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, p2

    move v0, v1

    :goto_0
    if-ge v2, p3, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_0

    aget-object v2, p1, p2

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v2

    if-eqz v2, :cond_6

    int-to-float v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, p4

    add-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, p4

    iget-object v4, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    aget-object v4, p1, p2

    invoke-virtual {v4, v3, v2}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    sub-float v2, p5, p4

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_1

    :cond_5
    aget-object v4, p1, p2

    invoke-virtual {v4, v2, v3}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    goto :goto_2

    :cond_6
    int-to-float v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, p4

    aget-object v3, p1, p2

    invoke-virtual {v3, v2, v2}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    goto :goto_3
.end method

.method private a(Lcom/visionobjects/textwidget/f/c;F)Z
    .locals 2

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->l()F

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/visionobjects/textwidget/f/c;F)Lcom/visionobjects/textwidget/f/c;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->o()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p1, v0, p2}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->o()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    goto :goto_0
.end method

.method private b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {p2}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    return-object p2
.end method

.method private static c(Lcom/visionobjects/textwidget/f/c;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/visionobjects/textwidget/f/c;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->f()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->f()F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private e(Lcom/visionobjects/textwidget/f/c;)F
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    neg-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    goto :goto_0
.end method

.method private f(Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private p()Lcom/visionobjects/textwidget/f/c;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v2}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/e/b;->d(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(ILcom/visionobjects/textwidget/e/b;)F
    .locals 12

    iget-object v7, p2, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v7}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LayoutController"

    const-string v1, "Unable to split the current model by adding to a non-empty side model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->e(I)F

    move-result v0

    invoke-virtual {p2}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v1

    sub-float v8, v1, v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v11, v1

    move v1, v5

    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v11

    :goto_0
    if-eqz v1, :cond_2

    if-ge v4, p1, :cond_2

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v6

    move v11, v4

    move v4, v5

    move v5, v11

    goto :goto_0

    :cond_2
    if-ge v5, p1, :cond_3

    if-ge p1, v4, :cond_3

    iget-object v6, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v9, 0x0

    sub-int v10, p1, v5

    invoke-virtual {v6, v3, v9, v10}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v6

    iget-object v9, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    sub-int v10, p1, v5

    sub-int/2addr v4, v5

    invoke-virtual {v9, v3, v10, v4}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v9, 0x0

    invoke-virtual {v5, v4, v8, v9}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    invoke-virtual {v7, v4}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;)V

    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v6}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v5, v3, v6}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    const/4 v3, 0x1

    invoke-static {v4, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Z)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    iget-object v4, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v8, v5}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    invoke-virtual {v7, v4}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;)V

    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v5, v3}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    const/4 v3, 0x1

    invoke-static {v4, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;)F
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method public final a()Lcom/visionobjects/textwidget/f/a/b;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/visionobjects/textwidget/e/b;->f:F

    return-void
.end method

.method public final a(II)V
    .locals 12

    if-le p1, p2, :cond_0

    const-string v0, "LayoutController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to delete characters in invalid range "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/b;->p()Lcom/visionobjects/textwidget/f/c;

    move-result-object v6

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v3

    :goto_1
    if-ge v0, v4, :cond_8

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-le v3, p1, :cond_6

    if-lt v2, p2, :cond_2

    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-eqz v7, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v5, v1, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    move-object v11, v2

    move v2, v4

    move-object v4, v11

    :goto_2
    if-nez v4, :cond_7

    invoke-direct {p0, v5}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v7

    sub-float/2addr v1, v7

    :goto_3
    if-ne v5, v6, :cond_1

    invoke-direct {p0, v5, v4}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    :cond_1
    move v4, v2

    move v2, v3

    goto :goto_1

    :cond_2
    if-gt p1, v2, :cond_3

    if-gt v3, p2, :cond_3

    invoke-direct {p0, v5}, Lcom/visionobjects/textwidget/e/b;->f(Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    add-int/lit8 v4, v4, -0x1

    move-object v11, v2

    move v2, v4

    move-object v4, v11

    goto :goto_2

    :cond_3
    if-ge v2, p1, :cond_4

    if-ge p2, v3, :cond_4

    iget-object v7, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v8, 0x0

    sub-int v9, p1, v2

    invoke-virtual {v7, v5, v8, v9}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v7

    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    sub-int v9, p2, v2

    sub-int v2, v3, v2

    invoke-virtual {v8, v5, v9, v2}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {p0, v7}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v9

    invoke-virtual {p0, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v10

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v7}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v8, v5}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v8, v7, v0}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    iget-object v7, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v2, v8}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    add-int/lit8 v0, v0, 0x2

    move-object v11, v2

    move v2, v4

    move-object v4, v11

    goto :goto_2

    :cond_4
    if-ge v2, p2, :cond_5

    if-ge p2, v3, :cond_5

    iget-object v7, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    sub-int v8, p2, v2

    sub-int v2, v3, v2

    invoke-virtual {v7, v5, v8, v2}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    move-object v11, v2

    move v2, v4

    move-object v4, v11

    goto/16 :goto_2

    :cond_5
    if-ge v2, p1, :cond_6

    if-ge p1, v3, :cond_6

    iget-object v7, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v8, 0x0

    sub-int v2, p1, v2

    invoke-virtual {v7, v5, v8, v2}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    move-object v11, v2

    move v2, v4

    move-object v4, v11

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    move-object v4, v5

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v1

    invoke-virtual {p0, v5}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v7

    sub-float/2addr v1, v7

    goto/16 :goto_3

    :cond_8
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/e/b;->a(I)V

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->j()V

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->h()V

    goto/16 :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "LayoutController"

    const-string v1, "Insert text requested with empty text"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->e(I)F

    move-result v0

    invoke-static {p2}, Lcom/visionobjects/stylus/core/StringUtils;->graphemesPositions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v1, p2, p3, v0, v6}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/lang/String;Ljava/lang/String;FLjava/util/List;)[Landroid/graphics/RectF;

    move-result-object v4

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v2

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->g()F

    move-result v3

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/textwidget/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkField;->segments()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v1

    new-array v6, v1, [Lcom/visionobjects/textwidget/f/c;

    move v0, v7

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    aput-object v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v7

    move-object v1, v5

    move v2, v7

    move v3, v7

    :goto_2
    array-length v8, v6

    if-ge v0, v8, :cond_3

    if-ge v2, p1, :cond_3

    aget-object v1, v6, v0

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_2

    :cond_3
    if-ge v3, p1, :cond_4

    if-ge p1, v2, :cond_4

    iget-object v6, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    sub-int v8, p1, v3

    invoke-virtual {v6, v1, v7, v8}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v6

    iget-object v7, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    sub-int v8, p1, v3

    sub-int/2addr v2, v3

    invoke-virtual {v7, v1, v8, v2}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v6}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v1}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v6, v3}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1, v2, v0}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v3, v0, v5}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/visionobjects/textwidget/f/c;->c(Z)V

    invoke-virtual {v0, v9}, Lcom/visionobjects/textwidget/f/c;->d(Z)V

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v0, v1}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/e/b;->a(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/e/b;->a(I)V

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->j()V

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->h()V

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->n()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/visionobjects/textwidget/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/a/b;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v1

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->c()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v5}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    invoke-virtual {p1, v2}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;)V

    invoke-static {v3, v5}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/e/b;->a(I)V

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->h()V

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;I)V
    .locals 6

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LayoutController"

    const-string v1, "Unable to typeset space character"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LayoutController"

    const-string v1, "Unable to typeset unfrozen word"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v0

    invoke-direct {p0, v2}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_4

    sub-float/2addr v3, v0

    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_3

    aget-object v4, v1, v0

    if-eq v2, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :goto_2
    array-length v4, v1

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v4, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v5}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/e/b;->d(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/b;->p()Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v6

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    array-length v3, v6

    if-ge v0, v3, :cond_4

    aget-object v4, v6, v0

    if-nez p1, :cond_0

    invoke-static {v4}, Lcom/visionobjects/textwidget/e/b;->c(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->e()I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v3

    invoke-direct {p0, v4, v1, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    move-object v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v1

    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v7

    sub-float/2addr v1, v7

    if-ne v4, v5, :cond_1

    invoke-direct {p0, v4, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    invoke-direct {p0, v4, v1, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final b(Lcom/visionobjects/textwidget/f/c;)F
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final b()Lcom/visionobjects/textwidget/c/m;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    return-object v0
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/visionobjects/textwidget/e/b;->e:F

    return-void
.end method

.method public final b(Z)V
    .locals 8

    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/b;->p()Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v6

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_5

    aget-object v3, v5, v0

    if-nez p1, :cond_0

    invoke-static {v3}, Lcom/visionobjects/textwidget/e/b;->c(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->e()I

    move-result v2

    invoke-direct {p0, v3, v2, v1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    :goto_1
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v2, v1}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;F)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    :cond_1
    if-ne v3, v4, :cond_2

    invoke-direct {p0, v3, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3, v1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;F)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    sub-float v2, v1, v2

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->l()F

    move-result v7

    sub-float v7, v6, v7

    invoke-direct {p0, v3, v2, v7}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final c()F
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/e/b;->f:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()F
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/visionobjects/textwidget/e/b;->f:F

    goto :goto_0
.end method

.method public final e()F
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/e/b;->f:F

    iget v1, p0, Lcom/visionobjects/textwidget/e/b;->e:F

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/visionobjects/textwidget/e/b;->e:F

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    return v0
.end method

.method public final g()F
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v2

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v1

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v5

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_0

    iget-object v4, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v4, v3}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v6}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/a/b;->d()I

    move-result v4

    move v7, v0

    move v0, v2

    move v2, v7

    :goto_1
    if-ge v2, v4, :cond_1

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/f/a/b;->a(I)Lcom/visionobjects/textwidget/f/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/b;->d()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/b;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final h()V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v4

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v5

    move v6, v3

    move v2, v3

    :goto_0
    array-length v0, v1

    if-ge v3, v0, :cond_2

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/visionobjects/textwidget/f/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v6, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->o()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v7}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/textwidget/e/b;->a([Lcom/visionobjects/textwidget/f/c;IIFF)V

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v7}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v4

    invoke-virtual {p0, v7}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v5

    goto :goto_1

    :cond_2
    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/textwidget/e/b;->a([Lcom/visionobjects/textwidget/f/c;IIFF)V

    return-void
.end method

.method public final i()V
    .locals 13

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v9

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v7}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/visionobjects/textwidget/e/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v11, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {p0, v10}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    invoke-static {}, Lcom/visionobjects/textwidget/e/a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v3, v0, v1, v2}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/lang/String;Ljava/lang/String;F)[Landroid/graphics/RectF;

    move-result-object v4

    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/a;->g()F

    move-result v3

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/textwidget/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkField;->segments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v1, v0, v5}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/visionobjects/textwidget/f/c;->c(Z)V

    invoke-virtual {v0, v12}, Lcom/visionobjects/textwidget/f/c;->d(Z)V

    invoke-virtual {v11, v10, v0}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/text/Bidi;

    invoke-direct {v0, v2, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/text/Bidi;->isMixed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v0, Ljava/text/Bidi;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    :cond_1
    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v4, v1}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0, v2, v5}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/text/Bidi;II)B

    move-result v6

    invoke-virtual {v4, v6}, Lcom/visionobjects/textwidget/f/c;->a(B)V

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final k()[Lcom/visionobjects/textwidget/f/c;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    new-array v4, v3, [B

    new-array v1, v3, [Lcom/visionobjects/textwidget/f/c;

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v5, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->o()B

    move-result v6

    aput-byte v6, v4, v0

    aput-object v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4, v2, v1, v2, v3}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [Lcom/visionobjects/textwidget/f/c;

    :goto_1
    if-ge v2, v3, :cond_2

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    aget-object v4, v1, v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public final l()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v1}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-static {v3}, Lcom/visionobjects/textwidget/e/b;->c(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final m()Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-direct {p0, v4, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;F)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->o()F

    move-result v4

    add-float/2addr v2, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v4

    add-float/2addr v2, v4

    goto :goto_1
.end method

.method public final n()V
    .locals 8

    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/b;->p()Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v6

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_3

    aget-object v3, v5, v0

    invoke-direct {p0, v3, v1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;F)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    sub-float v2, v1, v2

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->l()F

    move-result v7

    sub-float v7, v6, v7

    invoke-direct {p0, v3, v2, v7}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    :goto_1
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;F)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    :cond_0
    if-ne v3, v4, :cond_1

    invoke-direct {p0, v3, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final o()F
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->e()F

    move-result v0

    neg-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->e()F

    move-result v0

    goto :goto_0
.end method
