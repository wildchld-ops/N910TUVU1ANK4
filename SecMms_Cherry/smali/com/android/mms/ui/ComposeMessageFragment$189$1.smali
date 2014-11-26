.class Lcom/android/mms/ui/ComposeMessageFragment$189$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$189;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$189;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$189;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$189$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$189;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$189$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$189;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$189;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$189$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$189;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$189;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$189$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$189;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment$189;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/rcs/RcsChatManager;->updateRcsState(ZZ)J

    invoke-static {}, Lcom/android/mms/rcs/RcsOwnCapsManager;->getInstance()Lcom/android/mms/rcs/RcsOwnCapsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsOwnCapsManager;->queryOwnCaps()Z

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$189$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$189;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$189;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$189$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$189;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$189;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$189$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$189;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment$189;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mResponseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/rcs/RcsChatManager;->registerResponseReceiver(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$189$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$189;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$189;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateRcsUI()V

    return-void
.end method
