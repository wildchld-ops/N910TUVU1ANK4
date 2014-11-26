.class final Lcom/visionobjects/textwidget/m;
.super Ljava/lang/Object;
.source "TextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/visionobjects/stylus/core/InkField;

.field final synthetic b:Lcom/visionobjects/textwidget/TextWidget;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/TextWidget;Lcom/visionobjects/stylus/core/InkField;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    iput-object p2, p0, Lcom/visionobjects/textwidget/m;->a:Lcom/visionobjects/stylus/core/InkField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v2}, Lcom/visionobjects/textwidget/TextWidget;->y(Lcom/visionobjects/textwidget/TextWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v3}, Lcom/visionobjects/textwidget/TextWidget;->z(Lcom/visionobjects/textwidget/TextWidget;)I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v2}, Lcom/visionobjects/textwidget/TextWidget;->A(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/f/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/m;->a:Lcom/visionobjects/stylus/core/InkField;

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/f/a/a;->a(Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v3}, Lcom/visionobjects/textwidget/TextWidget;->B(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/d/a/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/d/a/e;->b(Lcom/visionobjects/stylus/core/InkField;)V

    iget-object v2, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v2}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/b;->j()V

    iget-object v2, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v2}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/b;->h()V

    iget-object v2, p0, Lcom/visionobjects/textwidget/m;->a:Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/textwidget/d/a/e;->c(Lcom/visionobjects/stylus/core/InkField;)Z

    move-result v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v4}, Lcom/visionobjects/textwidget/TextWidget;->e(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/a/b;->i()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_2
    :goto_1
    invoke-static {v3, v0}, Lcom/visionobjects/textwidget/TextWidget;->f(Lcom/visionobjects/textwidget/TextWidget;Z)V

    :goto_2
    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->C(Lcom/visionobjects/textwidget/TextWidget;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->e(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->D(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->E(Lcom/visionobjects/textwidget/TextWidget;)V

    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->h(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->h(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->i(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->F(Lcom/visionobjects/textwidget/TextWidget;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->r(Lcom/visionobjects/textwidget/TextWidget;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->g(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->b()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->k(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->b(Lcom/visionobjects/textwidget/TextWidget;)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/TextWidget;->g(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    :cond_6
    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->i(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    if-nez v2, :cond_9

    iget-object v4, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v4}, Lcom/visionobjects/textwidget/TextWidget;->e(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/a/b;->h()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    :goto_4
    invoke-static {v3, v0}, Lcom/visionobjects/textwidget/TextWidget;->f(Lcom/visionobjects/textwidget/TextWidget;Z)V

    goto/16 :goto_2

    :cond_a
    move v0, v1

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/visionobjects/textwidget/m;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->c(Lcom/visionobjects/textwidget/TextWidget;)V

    goto :goto_3
.end method
