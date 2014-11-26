.class final Lcom/visionobjects/textwidget/b;
.super Ljava/lang/Object;
.source "TextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/visionobjects/textwidget/TextWidget;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/TextWidget;F)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/b;->b:Lcom/visionobjects/textwidget/TextWidget;

    iput p2, p0, Lcom/visionobjects/textwidget/b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/b;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->d(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/b;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->e(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/b;->a:F

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a/b;->a(F)I

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/b;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->d(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;->onReturnGesture(I)V

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/b;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v2}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/b;->b:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v2}, Lcom/visionobjects/textwidget/TextWidget;->b(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    return-void
.end method
