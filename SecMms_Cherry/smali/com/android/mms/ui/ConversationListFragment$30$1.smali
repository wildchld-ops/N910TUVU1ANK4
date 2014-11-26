.class Lcom/android/mms/ui/ConversationListFragment$30$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$30;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationListFragment$30;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$30;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$30$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$30;

    iput p2, p0, Lcom/android/mms/ui/ConversationListFragment$30$1;->val$position:I

    iput-object p3, p0, Lcom/android/mms/ui/ConversationListFragment$30$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$30$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$30;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment$30;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ConversationListFragment$30$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->delete(I)Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$30$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$30;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment$30;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ConversationListFragment$30$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->setDeleteAnimationIndex(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$30$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$30;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment$30;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$30$1;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
