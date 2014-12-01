.class Lcom/android/phone/callsettings/CallBarring$16;
.super Landroid/os/Handler;
.source "CallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/CallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1    # Landroid/os/Message;

    const/16 v10, 0x64

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v2, 0x64

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    const-string v3, "CallBarring"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseCBHandler() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg.what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$400(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$400(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/CallBarring;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CallBarring"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseCBHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg.what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    if-ne v3, v9, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # setter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->access$302(Lcom/android/phone/callsettings/CallBarring;I)I

    goto :goto_1

    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/phone/callsettings/CallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I
    invoke-static {v3, v0, v4}, Lcom/android/phone/callsettings/CallBarring;->access$1700(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;I)I

    move-result v2

    if-ne v2, v10, :cond_5

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    if-ne v3, v9, :cond_3

    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v4, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/CallBarring;->access$1800(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v4, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V
    invoke-static {v3, v4, v2}, Lcom/android/phone/callsettings/CallBarring;->access$1900(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_2

    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # invokes: Lcom/android/phone/callsettings/CallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/CallBarring;->access$2000(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;)I

    move-result v2

    if-eq v2, v10, :cond_7

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v4, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V
    invoke-static {v3, v4, v2}, Lcom/android/phone/callsettings/CallBarring;->access$1900(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$2100(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    if-ge v3, v8, :cond_6

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # operator++ for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$308(Lcom/android/phone/callsettings/CallBarring;)I

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v4, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/CallBarring;->access$1800(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # invokes: Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$600(Lcom/android/phone/callsettings/CallBarring;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # setter for: Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z
    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->access$2102(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # setter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->access$302(Lcom/android/phone/callsettings/CallBarring;I)I

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v4, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/CallBarring;->access$1800(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$2100(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    if-ge v3, v8, :cond_8

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # operator++ for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$308(Lcom/android/phone/callsettings/CallBarring;)I

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # invokes: Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$600(Lcom/android/phone/callsettings/CallBarring;)V

    goto/16 :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # setter for: Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z
    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->access$2102(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # setter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->access$302(Lcom/android/phone/callsettings/CallBarring;I)I

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
