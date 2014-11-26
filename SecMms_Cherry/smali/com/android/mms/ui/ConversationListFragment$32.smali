.class Lcom/android/mms/ui/ConversationListFragment$32;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
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

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$32;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "Priority sender edit item long click"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$32;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setDndMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$32;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->startDrag()Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$32;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setDragViewAlpha(I)V

    return v2
.end method
