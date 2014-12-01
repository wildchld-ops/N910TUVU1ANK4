.class Lcom/android/mms/ui/ComposeMessageFragment$214;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showRcsUndeliveredMessageDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$msgListIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$214;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$214;->val$msgListIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$214;->val$msgListIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$214;->val$msgListIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$214;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const-string v2, "im"

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    invoke-static {v1, v2, v4, v5, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$214;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$214;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$214;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3, v1, v9}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showRcsUndeliveredMessageDialog _id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is resent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$214;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRcsUpdateResentRcsMessageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$214;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRcsMsgAlertHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$214;->val$msgListIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
