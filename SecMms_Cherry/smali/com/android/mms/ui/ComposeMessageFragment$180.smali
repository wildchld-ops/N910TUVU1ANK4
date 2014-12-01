.class Lcom/android/mms/ui/ComposeMessageFragment$180;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, ""

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateModeForComposer(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mTranslateManager:Lcom/android/mms/ui/TranslateManager;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/mms/ui/TranslateManager;->updateTranslateMode(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setSendButtonResource()V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0, v4}, Lcom/android/mms/ui/TranslateManager;->changeToValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1, v4}, Lcom/android/mms/ui/TranslateManager;->changeToValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateBtnMode(Z)V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0, v4}, Lcom/android/mms/ui/TranslateManager;->changeToValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1, v4}, Lcom/android/mms/ui/TranslateManager;->changeToValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateBtnMode(Z)V

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "off"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateBtnMode(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0, v4}, Lcom/android/mms/ui/TranslateManager;->changeToValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1, v4}, Lcom/android/mms/ui/TranslateManager;->changeToValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateBtnMode(Z)V

    goto/16 :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0, v4}, Lcom/android/mms/ui/TranslateManager;->changeToValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1, v4}, Lcom/android/mms/ui/TranslateManager;->changeToValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$180;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateBtnMode(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
