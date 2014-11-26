.class final Lcom/visionobjects/textwidget/g/d;
.super Lcom/visionobjects/textwidget/g/c$a;
.source "SafeHandler.java"


# instance fields
.field final synthetic a:Lcom/visionobjects/textwidget/g/c$b;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/g/c$b;)V
    .locals 1

    iput-object p1, p0, Lcom/visionobjects/textwidget/g/d;->a:Lcom/visionobjects/textwidget/g/c$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/g/c$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/g/d;->a:Lcom/visionobjects/textwidget/g/c$b;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/g/c$b;->a(Landroid/os/Message;)V

    return-void
.end method
