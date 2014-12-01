.class Lcom/android/mms/ui/ComposeMessageFragment$208;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->ChangeChatNameDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$selectMenu:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->val$selectMenu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mChatNameEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->val$selectMenu:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/rcs/RcsChatManager;->requestChatId(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->setAlias(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->val$selectMenu:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/rcs/RcsChatManager;->updateThreadChatIdAndAlias(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBroadcastProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBroadcastProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBroadcastProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v3, ""

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$208;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v5, 0x7f0c0187

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBroadcastProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$17302(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_1
.end method
