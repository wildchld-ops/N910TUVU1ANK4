.class Lcom/android/phone/CdmaAdditionalCallOptions$6;
.super Landroid/os/Handler;
.source "CdmaAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$6;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const/16 v1, 0x64

    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage() msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$100(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$6;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # getter for: Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1600(Lcom/android/phone/CdmaAdditionalCallOptions;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "mVoiceCallVisible is False"

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$100(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$6;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->handleGetCWMessage(Landroid/os/AsyncResult;)I
    invoke-static {v2, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1700(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/AsyncResult;)I

    move-result v1

    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "mGetCallWaitingComplete: CW query done"

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$100(Ljava/lang/String;)V

    :cond_3
    const/16 v2, 0x64

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$6;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    sget-object v3, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V
    invoke-static {v2, v3, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1800(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$6;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    sget-object v3, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V
    invoke-static {v2, v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$000(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method
