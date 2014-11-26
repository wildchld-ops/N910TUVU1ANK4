.class public final Lcom/visionobjects/textwidget/h/e;
.super Landroid/view/View;
.source "VOStrokeLayoutView.java"

# interfaces
.implements Lcom/visionobjects/textwidget/f/b$a;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/visionobjects/textwidget/f/b;",
            "Lcom/visionobjects/textwidget/h/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Rect;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/e;->a:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/e;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/h/e;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/h/f;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/f;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final b(Lcom/visionobjects/textwidget/f/b;)Z
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c(Lcom/visionobjects/textwidget/f/b;)V
    .locals 2

    invoke-virtual {p1, p0}, Lcom/visionobjects/textwidget/f/b;->a(Lcom/visionobjects/textwidget/f/b$a;)V

    new-instance v0, Lcom/visionobjects/textwidget/h/f;

    invoke-direct {v0, p1}, Lcom/visionobjects/textwidget/h/f;-><init>(Lcom/visionobjects/textwidget/f/b;)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/f;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final d(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/visionobjects/textwidget/f/b;->a(Lcom/visionobjects/textwidget/f/b$a;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/h/f;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/f;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/e;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/e;->b:Landroid/graphics/Rect;

    iget v1, p0, Lcom/visionobjects/textwidget/h/e;->c:I

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/visionobjects/textwidget/h/e;->c:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/h/f;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/f;->a()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/h/e;->b:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/f;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
