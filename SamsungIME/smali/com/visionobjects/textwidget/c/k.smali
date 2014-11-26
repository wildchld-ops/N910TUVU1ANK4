.class final Lcom/visionobjects/textwidget/c/k;
.super Ljava/lang/Object;
.source "HandleViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/visionobjects/textwidget/c/i;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/k;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/k;->a:Lcom/visionobjects/textwidget/c/i;

    invoke-static {v0}, Lcom/visionobjects/textwidget/c/i;->a(Lcom/visionobjects/textwidget/c/i;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/k;->a:Lcom/visionobjects/textwidget/c/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/c/i;->a(Lcom/visionobjects/textwidget/c/i;I)V

    :cond_0
    return-void
.end method
