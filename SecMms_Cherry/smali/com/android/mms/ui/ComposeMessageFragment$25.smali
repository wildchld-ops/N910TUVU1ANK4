.class Lcom/android/mms/ui/ComposeMessageFragment$25;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "Mms/ComposeMessageFragment"

    const-string v4, "mHttpProgressReceiver.onReceive()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.android.mms.PROGRESS_STATUS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "token"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "progress"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    mul-int/lit8 v4, v0, 0x64

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
