.class final Lcom/visionobjects/textwidget/c/l;
.super Ljava/lang/Object;
.source "HandleViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/visionobjects/textwidget/c/i;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v0}, Lcom/visionobjects/textwidget/c/i;->b(Lcom/visionobjects/textwidget/c/i;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v0}, Lcom/visionobjects/textwidget/c/i;->c(Lcom/visionobjects/textwidget/c/i;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v1}, Lcom/visionobjects/textwidget/c/i;->d(Lcom/visionobjects/textwidget/c/i;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/c/i;->a(Lcom/visionobjects/textwidget/c/i;F)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v0}, Lcom/visionobjects/textwidget/c/i;->b(Lcom/visionobjects/textwidget/c/i;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v0}, Lcom/visionobjects/textwidget/c/i;->e(Lcom/visionobjects/textwidget/c/i;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v1}, Lcom/visionobjects/textwidget/c/i;->d(Lcom/visionobjects/textwidget/c/i;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/c/i;->a(Lcom/visionobjects/textwidget/c/i;F)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v0}, Lcom/visionobjects/textwidget/c/i;->b(Lcom/visionobjects/textwidget/c/i;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v0}, Lcom/visionobjects/textwidget/c/i;->f(Lcom/visionobjects/textwidget/c/i;)I

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v0}, Lcom/visionobjects/textwidget/c/i;->g(Lcom/visionobjects/textwidget/c/i;)I

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v1}, Lcom/visionobjects/textwidget/c/i;->h(Lcom/visionobjects/textwidget/c/i;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v0}, Lcom/visionobjects/textwidget/c/i;->h(Lcom/visionobjects/textwidget/c/i;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v1}, Lcom/visionobjects/textwidget/c/i;->g(Lcom/visionobjects/textwidget/c/i;)I

    move-result v1

    aget v0, v0, v1

    :goto_2
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v1}, Lcom/visionobjects/textwidget/c/i;->i(Lcom/visionobjects/textwidget/c/i;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v1}, Lcom/visionobjects/textwidget/c/i;->d(Lcom/visionobjects/textwidget/c/i;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/c/i;->b(Lcom/visionobjects/textwidget/c/i;F)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v1}, Lcom/visionobjects/textwidget/c/i;->d(Lcom/visionobjects/textwidget/c/i;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/c/i;->b(Lcom/visionobjects/textwidget/c/i;F)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v0}, Lcom/visionobjects/textwidget/c/i;->h(Lcom/visionobjects/textwidget/c/i;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/l;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v1}, Lcom/visionobjects/textwidget/c/i;->h(Lcom/visionobjects/textwidget/c/i;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_2
.end method
