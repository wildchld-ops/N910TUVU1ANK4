.class public final Lcom/visionobjects/textwidget/h/d;
.super Landroid/widget/FrameLayout;
.source "VOModelView.java"

# interfaces
.implements Lcom/visionobjects/textwidget/f/a$a;


# instance fields
.field private a:Lcom/visionobjects/textwidget/h/g;

.field private b:Lcom/visionobjects/textwidget/h/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/visionobjects/textwidget/h/g;

    invoke-direct {v0, p1}, Lcom/visionobjects/textwidget/h/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    new-instance v0, Lcom/visionobjects/textwidget/h/e;

    invoke-direct {v0, p1}, Lcom/visionobjects/textwidget/h/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/g;->a(F)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/e;->a(F)V

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/e;->b(Lcom/visionobjects/textwidget/f/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/e;->c(Lcom/visionobjects/textwidget/f/b;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/g;->b(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/g;->c(Lcom/visionobjects/textwidget/f/c;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/e;->b(Lcom/visionobjects/textwidget/f/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/e;->d(Lcom/visionobjects/textwidget/f/b;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/visionobjects/textwidget/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/g;->b(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/g;->d(Lcom/visionobjects/textwidget/f/c;)V

    :cond_0
    return-void
.end method
