.class Lcom/android/mms/ui/ConversationListFragment$22;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return v4

    :sswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v7

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;
    invoke-static {v6, v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2800(Lcom/android/mms/ui/ConversationListFragment;I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-lt v6, v5, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-eq v6, v5, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-le v6, v5, :cond_0

    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v6

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, -0x7001

    invoke-static {v6}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v6

    if-nez v6, :cond_0

    :sswitch_3
    const-string v4, "Mms/ConversationListFragment"

    const-string v6, "mThreadListKeyListener.onKey(),KEYCODE_DEL"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2900(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemId()J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long v4, v1, v6

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->access$3002(Lcom/android/mms/ui/ConversationListFragment;I)I

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    :cond_2
    move v4, v5

    goto :goto_0

    :sswitch_4
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->isOnlyDummy()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    :cond_3
    :goto_1
    :sswitch_5
    const-string v4, "Mms/ConversationListFragment"

    const-string v5, "mThreadListKeyListener.onKey(),KEYCODE_DPAD_RIGHT"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->requestFocusOnComposer()Z

    move-result v4

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x13 -> :sswitch_4
        0x14 -> :sswitch_0
        0x16 -> :sswitch_5
        0x20 -> :sswitch_2
        0x43 -> :sswitch_3
    .end sparse-switch
.end method
