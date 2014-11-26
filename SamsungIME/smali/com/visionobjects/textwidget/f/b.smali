.class public final Lcom/visionobjects/textwidget/f/b;
.super Ljava/lang/Object;
.source "VOStroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/f/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/visionobjects/stylus/core/InkItem;

.field private b:[Lcom/visionobjects/a/a;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/Path;

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Matrix;

.field private m:Landroid/graphics/Matrix;

.field private n:Z

.field private o:Z

.field private p:Lcom/visionobjects/textwidget/f/b$a;


# direct methods
.method public constructor <init>(Lcom/visionobjects/stylus/core/InkItem;[Lcom/visionobjects/a/a;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/Paint;IIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/visionobjects/textwidget/f/b;->a:Lcom/visionobjects/stylus/core/InkItem;

    iput-object p2, p0, Lcom/visionobjects/textwidget/f/b;->b:[Lcom/visionobjects/a/a;

    iput-object p3, p0, Lcom/visionobjects/textwidget/f/b;->c:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/visionobjects/textwidget/f/b;->d:Landroid/graphics/Path;

    iput-object p5, p0, Lcom/visionobjects/textwidget/f/b;->e:Landroid/graphics/Paint;

    iput p6, p0, Lcom/visionobjects/textwidget/f/b;->f:I

    iput p7, p0, Lcom/visionobjects/textwidget/f/b;->g:I

    iput p8, p0, Lcom/visionobjects/textwidget/f/b;->h:I

    iput-object p9, p0, Lcom/visionobjects/textwidget/f/b;->i:Landroid/graphics/Bitmap;

    iput-object p10, p0, Lcom/visionobjects/textwidget/f/b;->j:Landroid/graphics/Bitmap;

    iput-object p11, p0, Lcom/visionobjects/textwidget/f/b;->k:Landroid/graphics/Paint;

    iput-object p12, p0, Lcom/visionobjects/textwidget/f/b;->l:Landroid/graphics/Matrix;

    iput-object p13, p0, Lcom/visionobjects/textwidget/f/b;->m:Landroid/graphics/Matrix;

    iput-boolean p14, p0, Lcom/visionobjects/textwidget/f/b;->n:Z

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->a:Lcom/visionobjects/stylus/core/InkItem;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->a:Lcom/visionobjects/stylus/core/InkItem;

    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->b:[Lcom/visionobjects/a/a;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->b:[Lcom/visionobjects/a/a;

    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->c:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->c:Landroid/graphics/RectF;

    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->d:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->d:Landroid/graphics/Path;

    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->e:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->e:Landroid/graphics/Paint;

    iget v0, p1, Lcom/visionobjects/textwidget/f/b;->f:I

    iput v0, p0, Lcom/visionobjects/textwidget/f/b;->f:I

    iget v0, p1, Lcom/visionobjects/textwidget/f/b;->g:I

    iput v0, p0, Lcom/visionobjects/textwidget/f/b;->g:I

    iget v0, p1, Lcom/visionobjects/textwidget/f/b;->h:I

    iput v0, p0, Lcom/visionobjects/textwidget/f/b;->h:I

    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->i:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->i:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->j:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->j:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->k:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->k:Landroid/graphics/Paint;

    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->l:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->l:Landroid/graphics/Matrix;

    iget-object v0, p1, Lcom/visionobjects/textwidget/f/b;->m:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b;->m:Landroid/graphics/Matrix;

    iget-boolean v0, p1, Lcom/visionobjects/textwidget/f/b;->n:Z

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/f/b;->n:Z

    iget-boolean v0, p1, Lcom/visionobjects/textwidget/f/b;->o:Z

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/f/b;->o:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/visionobjects/stylus/core/InkItem;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->a:Lcom/visionobjects/stylus/core/InkItem;

    return-object v0
.end method

.method public final a(Lcom/visionobjects/textwidget/f/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/f/b;->p:Lcom/visionobjects/textwidget/f/b$a;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/b;->n:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/visionobjects/textwidget/f/b;->n:Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->p:Lcom/visionobjects/textwidget/f/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->p:Lcom/visionobjects/textwidget/f/b$a;

    invoke-interface {v0, p0}, Lcom/visionobjects/textwidget/f/b$a;->a(Lcom/visionobjects/textwidget/f/b;)V

    :cond_0
    return-void
.end method

.method public final b()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->e:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/visionobjects/textwidget/f/b;->o:Z

    return-void
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/b;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/f/b;->h:I

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/b;->n:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/visionobjects/textwidget/f/b;->g:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/visionobjects/textwidget/f/b;->f:I

    goto :goto_0
.end method

.method public final d()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->c:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final e()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->d:Landroid/graphics/Path;

    return-object v0
.end method

.method public final f()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final g()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->l:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final h()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final i()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->k:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final j()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b;->m:Landroid/graphics/Matrix;

    return-object v0
.end method
