.class Lcom/samsung/android/airbutton/AirButtonImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;->createKeypadHideReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/AirButtonImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$4;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ResponseAxT9Info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AxT9IME.isVisibleWindow"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    const-string v2, "AirButtonImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive BR visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$4;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$700(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl$4;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$600(Lcom/samsung/android/airbutton/AirButtonImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$4;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$700(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl$4;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$600(Lcom/samsung/android/airbutton/AirButtonImpl;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    const-string v2, "AxT9IME.isVisibleWindow"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method
