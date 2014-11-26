.class Lcom/android/mms/ui/ComposeMessageFragment$218;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->deleteOldRCSMessage(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$bundle:Lcom/android/mms/rcs/transaction/FallbackBundle;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/rcs/transaction/FallbackBundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$218;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$218;->val$bundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/android/mms/ui/ComposeDeleteMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$218;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$218;->val$bundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeDeleteMessage;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/rcs/transaction/FallbackBundle;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$218;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeDeleteMessage;->setActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->deleteMessage()V

    return-void
.end method
