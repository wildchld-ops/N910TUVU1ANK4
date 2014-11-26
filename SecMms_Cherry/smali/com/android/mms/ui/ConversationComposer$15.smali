.class Lcom/android/mms/ui/ConversationComposer$15;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Lcom/android/mms/ui/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Mms/ConversationComposer"

    const-string v5, "onComposerStateChanged"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # invokes: Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I
    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->access$800(Lcom/android/mms/ui/ConversationComposer;)I

    move-result v1

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getFromChatTabStatus()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    :cond_1
    move v0, v3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    :cond_4
    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    const-string v5, "FromSearchView"

    invoke-virtual {v4, v5, v2}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z
    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->access$1100(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # setter for: Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z
    invoke-static {v3, v2}, Lcom/android/mms/ui/ConversationComposer;->access$1102(Lcom/android/mms/ui/ConversationComposer;Z)Z

    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer$15;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
