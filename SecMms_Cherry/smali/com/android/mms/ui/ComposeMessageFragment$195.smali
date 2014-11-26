.class Lcom/android/mms/ui/ComposeMessageFragment$195;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1    # Landroid/os/Message;

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v11, "extra_recipients"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v11, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const-string v11, "Mms/ComposeMessageFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mRequestUidHandler : uid get success! ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/mms/data/WorkingMessage;->addFreeMessageRecipientCapsValue(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->updateFreeMessageState()V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->updateFreeMessageUI()V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/SortedMap;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_6

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRequestUIDForMakeButton:I
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18000(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRequestUIDForMakeButton:I
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18000(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_6

    :cond_2
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ToButton;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-lez v10, :cond_5

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showCheckSpamNumberDialog(Ljava/util/ArrayList;)Z

    :cond_5
    :goto_3
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v12, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRequestUIDForMakeButton:I
    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18002(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    goto/16 :goto_0

    :cond_6
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/SortedMap;->size()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRequestUIDForMakeButton:I
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18000(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_7

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRequestUIDForMakeButton:I
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18000(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    :cond_7
    const/4 v10, 0x0

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->convertToNormalMessageFormat(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v11, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    if-lez v10, :cond_5

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$195;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showCheckSpamNumberDialog(Ljava/util/ArrayList;)Z

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x3f4
        :pswitch_0
    .end packed-switch
.end method
