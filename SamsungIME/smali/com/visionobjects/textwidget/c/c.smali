.class public final Lcom/visionobjects/textwidget/c/c;
.super Ljava/lang/Object;
.source "CursorPositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/c/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/visionobjects/textwidget/e/b;

.field private b:I

.field private c:F

.field private d:I

.field private e:[Lcom/visionobjects/textwidget/c/c$a;

.field private f:I

.field private g:Z

.field private h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/visionobjects/textwidget/c/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/visionobjects/textwidget/c/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/e/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/visionobjects/textwidget/c/d;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/c/d;-><init>(Lcom/visionobjects/textwidget/c/c;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/c;->h:Ljava/util/Comparator;

    new-instance v0, Lcom/visionobjects/textwidget/c/e;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/c/e;-><init>(Lcom/visionobjects/textwidget/c/c;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/c;->i:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/c;->a:Lcom/visionobjects/textwidget/e/b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/visionobjects/textwidget/c/c;->b:I

    return v0
.end method

.method public final a(F)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    :goto_0
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/c;->e:[Lcom/visionobjects/textwidget/c/c$a;

    iget v3, p0, Lcom/visionobjects/textwidget/c/c;->d:I

    aget-object v3, v0, v3

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/c;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/visionobjects/textwidget/c/c$a;->c:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/visionobjects/textwidget/c/c;->d:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/visionobjects/textwidget/c/c;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/visionobjects/textwidget/c/c;->d:I

    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/visionobjects/textwidget/c/c;->e:[Lcom/visionobjects/textwidget/c/c$a;

    iget v4, p0, Lcom/visionobjects/textwidget/c/c;->d:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/visionobjects/textwidget/c/c$a;->a:I

    iput v3, p0, Lcom/visionobjects/textwidget/c/c;->f:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget v0, v3, Lcom/visionobjects/textwidget/c/c$a;->c:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/c;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v3, Lcom/visionobjects/textwidget/c/c$a;->d:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    move v0, v2

    :goto_3
    if-eqz v0, :cond_8

    iget v0, p0, Lcom/visionobjects/textwidget/c/c;->d:I

    iget-object v3, p0, Lcom/visionobjects/textwidget/c/c;->e:[Lcom/visionobjects/textwidget/c/c$a;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_8

    iget v0, p0, Lcom/visionobjects/textwidget/c/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/visionobjects/textwidget/c/c;->d:I

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    iget v0, v3, Lcom/visionobjects/textwidget/c/c$a;->d:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/visionobjects/textwidget/c/c;->f:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/visionobjects/textwidget/c/c;->b:I

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/c;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->a()Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->e(I)F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/c;->c:F

    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/visionobjects/textwidget/c/c;->c:F

    return v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/c;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->a()Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v0

    iget v1, p0, Lcom/visionobjects/textwidget/c/c;->b:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/visionobjects/textwidget/c/c;->b:I

    if-gt v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/c;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->a()Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v1

    iget v2, p0, Lcom/visionobjects/textwidget/c/c;->b:I

    invoke-virtual {v1, v2}, Lcom/visionobjects/textwidget/f/a/b;->e(I)F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/c/c;->c:F

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 12

    const/high16 v11, 0x40000000

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/c;->g:Z

    iget v0, p0, Lcom/visionobjects/textwidget/c/c;->b:I

    iput v0, p0, Lcom/visionobjects/textwidget/c/c;->f:I

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/c;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->a()Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    new-array v7, v0, [Lcom/visionobjects/textwidget/c/c$a;

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v8

    move v4, v2

    move v1, v2

    :goto_0
    if-ge v4, v8, :cond_2

    invoke-virtual {v5, v4}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->j()[F

    move-result-object v0

    :goto_1
    move v3, v1

    move v1, v2

    :goto_2
    array-length v9, v0

    if-ge v1, v9, :cond_1

    new-instance v9, Lcom/visionobjects/textwidget/c/c$a;

    invoke-direct {v9, p0, v2}, Lcom/visionobjects/textwidget/c/c$a;-><init>(Lcom/visionobjects/textwidget/c/c;B)V

    iput v3, v9, Lcom/visionobjects/textwidget/c/c$a;->a:I

    aget v10, v0, v1

    iput v10, v9, Lcom/visionobjects/textwidget/c/c$a;->b:F

    aput-object v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->i()[F

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/a/b;->c()Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    new-instance v1, Lcom/visionobjects/textwidget/c/c$a;

    invoke-direct {v1, p0, v2}, Lcom/visionobjects/textwidget/c/c$a;-><init>(Lcom/visionobjects/textwidget/c/c;B)V

    iput v6, v1, Lcom/visionobjects/textwidget/c/c$a;->a:I

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->p()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, v1, Lcom/visionobjects/textwidget/c/c$a;->b:F

    :goto_3
    aput-object v1, v7, v6

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/c;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/c;->i:Ljava/util/Comparator;

    invoke-static {v7, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_4
    move v0, v2

    :goto_5
    array-length v1, v7

    if-ge v0, v1, :cond_7

    aget-object v1, v7, v0

    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/visionobjects/textwidget/c/c;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/b;->c()F

    move-result v3

    iput v3, v1, Lcom/visionobjects/textwidget/c/c$a;->c:F

    :goto_6
    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_6

    iget-object v3, p0, Lcom/visionobjects/textwidget/c/c;->a:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/b;->d()F

    move-result v3

    iput v3, v1, Lcom/visionobjects/textwidget/c/c$a;->d:F

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3
    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, v1, Lcom/visionobjects/textwidget/c/c$a;->b:F

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/c;->h:Ljava/util/Comparator;

    invoke-static {v7, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_4

    :cond_5
    iget v3, v1, Lcom/visionobjects/textwidget/c/c$a;->b:F

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v7, v4

    iget v4, v4, Lcom/visionobjects/textwidget/c/c$a;->b:F

    mul-float/2addr v4, v11

    add-float/2addr v3, v4

    const/high16 v4, 0x40400000

    div-float/2addr v3, v4

    iput v3, v1, Lcom/visionobjects/textwidget/c/c$a;->c:F

    goto :goto_6

    :cond_6
    iget v3, v1, Lcom/visionobjects/textwidget/c/c$a;->b:F

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v7, v4

    iget v4, v4, Lcom/visionobjects/textwidget/c/c$a;->b:F

    add-float/2addr v3, v4

    div-float/2addr v3, v11

    iput v3, v1, Lcom/visionobjects/textwidget/c/c$a;->d:F

    goto :goto_7

    :cond_7
    iput-object v7, p0, Lcom/visionobjects/textwidget/c/c;->e:[Lcom/visionobjects/textwidget/c/c$a;

    iget v0, p0, Lcom/visionobjects/textwidget/c/c;->f:I

    :goto_8
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/c;->e:[Lcom/visionobjects/textwidget/c/c$a;

    array-length v1, v1

    if-ge v2, v1, :cond_9

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/c;->e:[Lcom/visionobjects/textwidget/c/c$a;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/visionobjects/textwidget/c/c$a;->a:I

    if-ne v1, v0, :cond_8

    :goto_9
    iput v2, p0, Lcom/visionobjects/textwidget/c/c;->d:I

    return-void

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    const-string v1, "CursorPositionController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error searching for character info for out-of-bounds cursor index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_9
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/c;->g:Z

    return-void
.end method
