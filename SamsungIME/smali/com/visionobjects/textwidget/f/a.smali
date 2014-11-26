.class public final Lcom/visionobjects/textwidget/f/a;
.super Ljava/lang/Object;
.source "VOModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/f/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/visionobjects/textwidget/f/a$a;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/textwidget/f/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/textwidget/f/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/a;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/visionobjects/textwidget/f/b;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/f/b;

    return-object v0
.end method

.method public final a(Lcom/visionobjects/textwidget/f/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/f/a;->a:Lcom/visionobjects/textwidget/f/a$a;

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->a:Lcom/visionobjects/textwidget/f/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->a:Lcom/visionobjects/textwidget/f/a$a;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/f/a$a;->a(Lcom/visionobjects/textwidget/f/b;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->a:Lcom/visionobjects/textwidget/f/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->a:Lcom/visionobjects/textwidget/f/a$a;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/f/a$a;->a(Lcom/visionobjects/textwidget/f/c;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;I)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->a:Lcom/visionobjects/textwidget/f/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->a:Lcom/visionobjects/textwidget/f/a$a;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/f/a$a;->a(Lcom/visionobjects/textwidget/f/c;)V

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/visionobjects/textwidget/f/c;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/f/c;

    return-object v0
.end method

.method public final b(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->a:Lcom/visionobjects/textwidget/f/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->a:Lcom/visionobjects/textwidget/f/a$a;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/f/a$a;->b(Lcom/visionobjects/textwidget/f/b;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/visionobjects/textwidget/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->a:Lcom/visionobjects/textwidget/f/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->a:Lcom/visionobjects/textwidget/f/a$a;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/f/a$a;->b(Lcom/visionobjects/textwidget/f/c;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/visionobjects/textwidget/f/c;)I
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/f/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v2, "\"%s\" (%d strokes, %d words)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/visionobjects/textwidget/f/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/visionobjects/textwidget/f/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
