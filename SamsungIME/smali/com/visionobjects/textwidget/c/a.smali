.class public final Lcom/visionobjects/textwidget/c/a;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# instance fields
.field private a:Lcom/visionobjects/textwidget/e/b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/e/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/a;->a:Lcom/visionobjects/textwidget/e/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/a;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->b()Lcom/visionobjects/textwidget/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->e()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f000000

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->b()Lcom/visionobjects/textwidget/c/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/c/m;->f()F

    move-result v6

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v7

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->a()Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v9

    move v4, v3

    :goto_1
    if-ge v4, v9, :cond_4

    invoke-virtual {v8, v4}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v10

    iget v0, v10, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v7

    if-ltz v0, :cond_1

    iget v0, v10, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    :cond_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->a()Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/visionobjects/textwidget/f/a/b;->d()I

    move-result v9

    move v4, v3

    :goto_3
    if-ge v4, v9, :cond_8

    invoke-virtual {v8, v4}, Lcom/visionobjects/textwidget/f/a/b;->a(I)Lcom/visionobjects/textwidget/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/b;->d()Landroid/graphics/RectF;

    move-result-object v10

    iget v0, v10, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v7

    if-ltz v0, :cond_5

    iget v0, v10, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_7

    :cond_5
    move v0, v2

    :goto_4
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->b:Ljava/util/ArrayList;

    new-instance v4, Lcom/visionobjects/textwidget/c/b;

    invoke-direct {v4, p0}, Lcom/visionobjects/textwidget/c/b;-><init>(Lcom/visionobjects/textwidget/c/a;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/visionobjects/textwidget/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_5
    if-ge v3, v8, :cond_b

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v9, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v4

    if-lez v9, :cond_a

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_6
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    move v1, v0

    goto :goto_5

    :cond_a
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v1, v4

    add-float/2addr v2, v1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_6

    :cond_b
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/c/m;->e()F

    move-result v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/a;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->b()Lcom/visionobjects/textwidget/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->f()F

    move-result v1

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->e()F

    move-result v0

    iget-object v2, p0, Lcom/visionobjects/textwidget/c/a;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v2

    sub-float v1, v2, v1

    div-float v0, v1, v0

    goto/16 :goto_0
.end method
