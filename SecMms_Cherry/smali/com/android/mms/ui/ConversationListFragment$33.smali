.class Lcom/android/mms/ui/ConversationListFragment$33;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$33;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$33;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->access$10200(Lcom/android/mms/ui/ConversationListFragment;I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$33;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->resetDeleteAnimationIndex()V

    return-void
.end method
