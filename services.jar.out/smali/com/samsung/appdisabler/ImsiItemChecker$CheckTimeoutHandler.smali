.class Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
.super Landroid/os/Handler;
.source "ImsiItemChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/appdisabler/ImsiItemChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckTimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/appdisabler/ImsiItemChecker;


# direct methods
.method private constructor <init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V
    .locals 0
    .param p1    # Lcom/samsung/appdisabler/ImsiItemChecker;
    .param p2    # Lcom/samsung/appdisabler/ImsiItemChecker$1;

    invoke-direct {p0, p1}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    const-string v3, "Network numeric is null - time elapsed"

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # invokes: Lcom/samsung/appdisabler/ImsiItemChecker;->hideAppAfterTimeout()V
    invoke-static {v3}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$200(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # getter for: Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;
    invoke-static {v3}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$500(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V

    const-string v3, "CheckTimeoutHandler exception"

    invoke-static {v3, v2}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    const-string v3, "Finish looper"

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # getter for: Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    invoke-static {v3}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$300(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    move-result-object v3

    const/16 v4, 0x6f

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # getter for: Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    invoke-static {v3}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$300(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    move-result-object v3

    const/16 v4, 0x70

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_0

    :sswitch_2
    const-string v3, "Show dialog msg"

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "App Disabler Error"

    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # invokes: Lcom/samsung/appdisabler/ImsiItemChecker;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v1, v0}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$400(Lcom/samsung/appdisabler/ImsiItemChecker;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0x70 -> :sswitch_1
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method
