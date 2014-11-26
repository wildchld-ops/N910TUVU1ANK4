.class Lcom/android/mms/ui/ComposeMessageFragment$104$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$104;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$104;

.field final synthetic val$ChatId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$104;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$104$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$104;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$104$1;->val$ChatId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "startTypingNofify: Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$104$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$104;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$104;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$104$1;->val$ChatId:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x3c

    invoke-static {v1, v2, v3}, Lcom/android/mms/rcs/transaction/ActionsFactory;->sendTypingNotification(Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
