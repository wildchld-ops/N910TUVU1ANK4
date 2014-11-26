.class Lcom/android/mms/ui/ConversationListFragment$37;
.super Landroid/os/Handler;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1    # Landroid/os/Message;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_result_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$10400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$10400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$10400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->access$10402(Lcom/android/mms/ui/ConversationListFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    const/16 v0, 0x3e8

    if-eq v8, v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedSingleThread()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$5800(Lcom/android/mms/ui/ConversationListFragment;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->makeCannotCloseChatDialog()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$8500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedSmsThread:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5700(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$8500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5600(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$8500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$8500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedLockedMsgThread:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5400(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$8500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$8500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v0, 0x4

    new-array v7, v0, [I

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9, v10, v7}, Lcom/android/mms/accessory/WatchRelay;->getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;

    move-result-object v11

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteChatThreadHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x70a

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->isDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3600(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v2

    new-instance v4, Lcom/android/mms/ui/DeleteInfo;

    iget-object v12, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$8500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v12, v6, :cond_2

    move v12, v3

    :goto_2
    invoke-direct {v4, v9, v10, v12}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$37;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11, v7}, Lcom/android/mms/accessory/WatchRelay;->sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v12, v5

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
