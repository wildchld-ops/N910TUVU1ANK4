.class Lcom/android/mms/ui/ConversationListFragment$19;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;

.field final synthetic val$cmasintent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListFragment$19;->val$cmasintent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$19;->val$cmasintent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    return-void
.end method
