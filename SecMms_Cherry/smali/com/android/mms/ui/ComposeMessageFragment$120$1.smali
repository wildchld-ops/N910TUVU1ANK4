.class Lcom/android/mms/ui/ComposeMessageFragment$120$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$120;->onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

.field final synthetic val$selectedItemUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$120;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->val$selectedItemUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->val$selectedItemUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getMimeTypeFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->val$selectedItemUri:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v5, v6, v8}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)I

    :cond_0
    :goto_0
    const-string v4, "Mms/ComposeMessageFragment"

    const-string v5, "onItemSelected : addMedia"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isNeededRequestInitChat()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getFreeMessageState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$120$1$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$120$1$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$120$1;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->val$selectedItemUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mFileRequestHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    iput v8, v3, Landroid/os/Message;->what:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mFileRequestHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
