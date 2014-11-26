.class public final Lcom/visionobjects/textwidget/h/f;
.super Ljava/lang/Object;
.source "VOStrokeView.java"


# instance fields
.field private a:Lcom/visionobjects/textwidget/f/b;

.field private b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/f/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/f;->b:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/b;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/f;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/f;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/b;->b()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/b;->e()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/b;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/b;->g()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/b;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/b;->g()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/b;->i()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/b;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/b;->j()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/b;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/b;->j()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/f;->a:Lcom/visionobjects/textwidget/f/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/b;->i()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
