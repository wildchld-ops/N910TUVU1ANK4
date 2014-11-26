.class final Lcom/visionobjects/textwidget/c/g;
.super Ljava/lang/Object;
.source "CursorViewController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/visionobjects/textwidget/c/f;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/g;->a:Lcom/visionobjects/textwidget/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/g;->a:Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/g;->a:Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/g;->a:Lcom/visionobjects/textwidget/c/f;

    invoke-static {v0}, Lcom/visionobjects/textwidget/c/f;->b(Lcom/visionobjects/textwidget/c/f;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/g;->a:Lcom/visionobjects/textwidget/c/f;

    invoke-static {v1}, Lcom/visionobjects/textwidget/c/f;->a(Lcom/visionobjects/textwidget/c/f;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
