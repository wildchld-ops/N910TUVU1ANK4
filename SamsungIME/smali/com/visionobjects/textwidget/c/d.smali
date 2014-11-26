.class final Lcom/visionobjects/textwidget/c/d;
.super Ljava/lang/Object;
.source "CursorPositionController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/visionobjects/textwidget/c/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/visionobjects/textwidget/c/c;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/c/d;->a:Lcom/visionobjects/textwidget/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/visionobjects/textwidget/c/c$a;

    check-cast p2, Lcom/visionobjects/textwidget/c/c$a;

    iget v0, p1, Lcom/visionobjects/textwidget/c/c$a;->b:F

    iget v1, p2, Lcom/visionobjects/textwidget/c/c$a;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/visionobjects/textwidget/c/c$a;->b:F

    iget v1, p2, Lcom/visionobjects/textwidget/c/c$a;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
