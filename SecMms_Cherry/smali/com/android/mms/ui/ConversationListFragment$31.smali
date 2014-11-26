.class Lcom/android/mms/ui/ConversationListFragment$31;
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

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$31;->this$0:Lcom/android/mms/ui/ConversationListFragment;

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

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "Priority sender mormal item long click"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$31;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/glance/GlanceUtils;->getPrioritySenderCount(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    if-eq v0, p3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$31;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/16 v2, 0xa

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$10200(Lcom/android/mms/ui/ConversationListFragment;I)V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method
