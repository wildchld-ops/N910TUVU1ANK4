.class Lcom/android/mms/ui/ConversationComposer$13$1;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationComposer$13;->onEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationComposer$13;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer$13;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # invokes: Lcom/android/mms/ui/ConversationComposer;->composerRequestsClosing()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$500(Lcom/android/mms/ui/ConversationComposer;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mFinishAffinity:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$600(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # setter for: Lcom/android/mms/ui/ConversationComposer;->mFinishAffinity:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ConversationComposer;->access$602(Lcom/android/mms/ui/ConversationComposer;Z)Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->finishAffinityInternal()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$700(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideEmoticonPanel()V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # invokes: Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$800(Lcom/android/mms/ui/ConversationComposer;)I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->handleBackKey()Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$13$1;->this$1:Lcom/android/mms/ui/ConversationComposer$13;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$13;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->setEmptyView(Z)V

    :cond_3
    return-void
.end method
