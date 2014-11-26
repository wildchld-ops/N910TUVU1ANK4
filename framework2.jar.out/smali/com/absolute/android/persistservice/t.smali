.class final Lcom/absolute/android/persistservice/t;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/s;


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/s;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/s;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/t;-><init>(Lcom/absolute/android/persistservice/s;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/s;

    invoke-static {v1}, Lcom/absolute/android/persistservice/s;->a(Lcom/absolute/android/persistservice/s;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/s;

    iget-object v1, v1, Lcom/absolute/android/persistservice/s;->a:Lcom/absolute/android/persistservice/q;

    iget-object v1, v1, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is no longer being monitored via running services check."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/s;

    iget-object v2, v2, Lcom/absolute/android/persistservice/s;->a:Lcom/absolute/android/persistservice/q;

    invoke-static {v2}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistservice/q;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_2
    move-object v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/s;

    iget-object v2, v2, Lcom/absolute/android/persistservice/s;->a:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v2, v0, v6}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;Z)V

    :goto_3
    invoke-virtual {p0, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p0, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/absolute/android/persistservice/t;->a:Lcom/absolute/android/persistservice/s;

    iget-object v2, v2, Lcom/absolute/android/persistservice/s;->a:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/q;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_2
.end method
