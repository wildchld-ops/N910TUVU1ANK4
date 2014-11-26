.class Lcom/android/phone/CdmaCallForwardOptions$3;
.super Landroid/os/Handler;
.source "CdmaCallForwardOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaCallForwardOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaCallForwardOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaCallForwardOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const/16 v2, 0x64

    # getter for: Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGetAllCFOptionsComplete: ar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mag.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/phone/CdmaCallForwardOptions;->handleGetCFMessage(Landroid/os/AsyncResult;I)I
    invoke-static {v3, v0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->access$600(Lcom/android/phone/CdmaCallForwardOptions;Landroid/os/AsyncResult;I)I

    move-result v2

    const/4 v1, -0x1

    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_1

    :cond_1
    :goto_1
    :pswitch_1
    const/16 v3, 0x64

    if-eq v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    sget-object v4, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    # invokes: Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
    invoke-static {v3, v4, v2}, Lcom/android/phone/CdmaCallForwardOptions;->access$700(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    goto :goto_0

    :pswitch_2
    # getter for: Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "mGetAllOptionsComplete: CFU query done, querying CFB."

    # invokes: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_3
    # getter for: Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "mGetAllOptionsComplete: CFB query done, querying CFNRy."

    # invokes: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_4
    # getter for: Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "mGetAllOptionsComplete: CFNRy query done, querying CFNRc."

    # invokes: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_5
    # getter for: Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "mGetAllOptionsComplete: CFNRc query done, querying CLIR."

    # invokes: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    # getter for: Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "mGetAllOptionsComplete: CFNRc query done, querying CANCEL ALL."

    # invokes: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    const-string v3, "mGetAllOptionsComplete: nextReason != -1"

    # invokes: Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    # setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$802(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    # setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$902(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    # setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1002(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    # setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1102(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    # setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1202(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    # setter for: Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z
    invoke-static {v3, v5}, Lcom/android/phone/CdmaCallForwardOptions;->access$1302(Lcom/android/phone/CdmaCallForwardOptions;Z)Z

    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    sget-object v4, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    # invokes: Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    invoke-static {v3, v4}, Lcom/android/phone/CdmaCallForwardOptions;->access$1400(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method
