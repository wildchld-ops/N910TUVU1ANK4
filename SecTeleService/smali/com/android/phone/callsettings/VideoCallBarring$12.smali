.class Lcom/android/phone/callsettings/VideoCallBarring$12;
.super Landroid/os/Handler;
.source "VideoCallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/VideoCallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v7, 0x64

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    check-cast v0, Landroid/os/AsyncResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseCBHandler() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    const-class v0, Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseCBHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->access$302(Lcom/android/phone/callsettings/VideoCallBarring;I)I

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/phone/callsettings/VideoCallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I
    invoke-static {v1, v0, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1800(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;I)I

    move-result v0

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v0

    if-ne v0, v6, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1900(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v2, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2000(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # invokes: Lcom/android/phone/callsettings/VideoCallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2100(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;)I

    move-result v0

    if-eq v0, v7, :cond_6

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v2, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2000(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2200(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v0

    if-ge v0, v5, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # operator++ for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$308(Lcom/android/phone/callsettings/VideoCallBarring;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1900(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # invokes: Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$600(Lcom/android/phone/callsettings/VideoCallBarring;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z
    invoke-static {v0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2202(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->access$302(Lcom/android/phone/callsettings/VideoCallBarring;I)I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1900(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2200(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v0

    if-ge v0, v5, :cond_7

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # operator++ for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$308(Lcom/android/phone/callsettings/VideoCallBarring;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # invokes: Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$600(Lcom/android/phone/callsettings/VideoCallBarring;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z
    invoke-static {v0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2202(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$12;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->access$302(Lcom/android/phone/callsettings/VideoCallBarring;I)I

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
