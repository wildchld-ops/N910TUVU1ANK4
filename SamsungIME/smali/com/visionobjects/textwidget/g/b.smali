.class public final Lcom/visionobjects/textwidget/g/b;
.super Ljava/lang/Object;
.source "DelayedEvent.java"

# interfaces
.implements Lcom/visionobjects/textwidget/g/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/g/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/visionobjects/textwidget/g/b$a;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/visionobjects/textwidget/g/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/visionobjects/textwidget/g/b;->b:Lcom/visionobjects/textwidget/g/b$a;

    new-instance v0, Lcom/visionobjects/textwidget/g/d;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/g/d;-><init>(Lcom/visionobjects/textwidget/g/c$b;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/visionobjects/textwidget/g/b;->f:I

    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->b:Lcom/visionobjects/textwidget/g/b$a;

    invoke-interface {v0, p0}, Lcom/visionobjects/textwidget/g/b$a;->a(Lcom/visionobjects/textwidget/g/b;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->b:Lcom/visionobjects/textwidget/g/b$a;

    invoke-interface {v0, p0}, Lcom/visionobjects/textwidget/g/b$a;->a(Lcom/visionobjects/textwidget/g/b;)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Lcom/visionobjects/textwidget/g/b;->f:I

    if-nez v0, :cond_0

    const-string v0, "DelayedEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visionobjects/textwidget/g/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scheduled to run after zero delay!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/visionobjects/textwidget/g/b;->f:I

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/g/b;->b(I)V

    return-void
.end method

.method public final d()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    return v0
.end method
