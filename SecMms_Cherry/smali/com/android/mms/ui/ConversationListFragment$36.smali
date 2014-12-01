.class Lcom/android/mms/ui/ConversationListFragment$36;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Broadcast"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.android.mms.ui.conversationlistfragment.composemessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->unRegisterAssistantMenu()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$7700(Lcom/android/mms/ui/ConversationListFragment;)V

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "Received BroadcastCompose message done"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.android.mms.ui.conversationlistfragment.searchmessages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->setSipStatus(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->onConversationShowEmptyScreen()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "Received Broadcastsearch message done"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    goto :goto_0

    :cond_2
    const-string v1, "com.android.mms.ui.composemessagefragment.delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$10300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgListAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgListAnimation;->resetAnimationFlag()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v1, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1002(Lcom/android/mms/ui/ConversationListFragment;I)I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "Received Broadcastdelete message done"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$36;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    goto :goto_0
.end method
