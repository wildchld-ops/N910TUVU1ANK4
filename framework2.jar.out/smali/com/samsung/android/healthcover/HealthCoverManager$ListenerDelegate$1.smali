.class Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "HealthCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;-><init>(Lcom/samsung/android/healthcover/HealthCoverManager;Lcom/samsung/android/healthcover/HealthCoverListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/healthcover/HealthCoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/healthcover/HealthCoverManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate$1;->val$this$0:Lcom/samsung/android/healthcover/HealthCoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;

    # getter for: Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->mListener:Lcom/samsung/android/healthcover/HealthCoverListener;
    invoke-static {v1}, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->access$100(Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;)Lcom/samsung/android/healthcover/HealthCoverListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x35

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;

    # getter for: Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->mListener:Lcom/samsung/android/healthcover/HealthCoverListener;
    invoke-static {v1}, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->access$100(Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;)Lcom/samsung/android/healthcover/HealthCoverListener;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/healthcover/HealthCoverListener;->onDataReceived([BI)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HealthCoverListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassCastException in handleMessage: msg.obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
