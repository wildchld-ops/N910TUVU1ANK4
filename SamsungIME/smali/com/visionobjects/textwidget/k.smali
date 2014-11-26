.class final Lcom/visionobjects/textwidget/k;
.super Ljava/lang/Object;
.source "TextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/visionobjects/textwidget/TextWidget;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/TextWidget;I)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/k;->b:Lcom/visionobjects/textwidget/TextWidget;

    iput p2, p0, Lcom/visionobjects/textwidget/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/k;->b:Lcom/visionobjects/textwidget/TextWidget;

    iget v1, p0, Lcom/visionobjects/textwidget/k;->a:I

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/TextWidget;I)I

    return-void
.end method
