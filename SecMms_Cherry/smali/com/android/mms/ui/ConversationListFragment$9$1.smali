.class Lcom/android/mms/ui/ConversationListFragment$9$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationListFragment$9;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$9$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$9$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$9;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListFragment$9;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$9$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$9;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListFragment$9;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
