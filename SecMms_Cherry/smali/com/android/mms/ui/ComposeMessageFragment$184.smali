.class Lcom/android/mms/ui/ComposeMessageFragment$184;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Broadcast"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.android.mms.ui.composemessagefragment.calltocontact"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->dialRecipient()V

    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "Received BroadcastCompose message done"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "com.android.mms.ui.composemessagefragment.attachcontacts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->addRecipientToContacts(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15700(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;)V

    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "Received Broadcastsearch message done"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "com.android.mms.ui.composemessagefragment.delete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->removeAnimationForSingleMsg()V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x2538

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    :goto_1
    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "Received Broadcastdelete message done"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteAnimation(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraftAndReset(Z)Z

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v6, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    goto :goto_1

    :cond_5
    const-string v2, "com.android.mms.ui.composemessagefragment.send"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$184;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->OnClickSendButton()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "Received Broadcastmessage send done"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
