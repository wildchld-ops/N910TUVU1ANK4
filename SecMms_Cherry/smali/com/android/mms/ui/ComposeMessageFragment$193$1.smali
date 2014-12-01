.class Lcom/android/mms/ui/ComposeMessageFragment$193$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$193;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$193;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$193;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$193$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$193;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$193$1;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$193$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$193;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$193$1;->val$sessionId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteThreadbySessionID(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$193$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$193;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$193$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$193;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->discard()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$193$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$193;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v1}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$193$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$193;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$193$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$193;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$193$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$193;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$193;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->setFromSplitDiscard(Z)V

    :cond_0
    return-void
.end method
