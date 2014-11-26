.class Lcom/android/mms/ui/ComposeMessageFragment$120$1$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$120$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/ComposeMessageFragment$120$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$120$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1$1;->this$2:Lcom/android/mms/ui/ComposeMessageFragment$120$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1$1;->this$2:Lcom/android/mms/ui/ComposeMessageFragment$120$1;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->val$selectedItemUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1$1;->this$2:Lcom/android/mms/ui/ComposeMessageFragment$120$1;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->prepareForGetSessionId()Z

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$120$1$1;->this$2:Lcom/android/mms/ui/ComposeMessageFragment$120$1;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$120$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$120;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$120;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setGroupChatFtFromNewComposer(Landroid/content/Intent;)V

    return-void
.end method
