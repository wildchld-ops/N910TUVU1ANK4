.class Lcom/android/mms/ui/MessageListItem$12$2;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$12;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$12;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->performFreeMessageFailedIconClick()V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->performFreeMessageFTFailedIconClick()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$2900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v4, v4, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v6, v6, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$12$2;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    goto :goto_0
.end method
