.class Lcom/android/mms/ui/MessageListItem$13$3;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$13;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$13;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isStoreAndForward()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->performRcsFailedIconClick()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/mms/rcs/RcsChatManager;->getCapsValue(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_3

    invoke-static {v7, v8}, Lcom/android/mms/rcs/RcsChatManager;->isOffline(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$3100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$3200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v5, v5, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/rcs/RcsChatManager;->startChatSendService(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$3400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$3500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1, v10, v11, v11}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$3300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v2

    const-string v3, "display_delivery"

    invoke-static {v1, v2, v3}, Lcom/android/mms/rcs/transaction/ActionsFactory;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->performRcsFailedIconClick()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->performRcsFailedIconClick()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->performRcsFTFailedIconClick()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$13$3;->this$1:Lcom/android/mms/ui/MessageListItem$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->performFailedIconClick()V

    goto/16 :goto_0
.end method
