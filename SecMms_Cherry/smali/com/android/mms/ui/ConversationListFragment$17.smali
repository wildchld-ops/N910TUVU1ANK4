.class Lcom/android/mms/ui/ConversationListFragment$17;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onPrepareListOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;

.field final synthetic val$adapter:Lcom/android/mms/ui/SPinnerArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/SPinnerArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$17;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListFragment$17;->val$adapter:Lcom/android/mms/ui/SPinnerArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$17;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2200(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$17;->val$adapter:Lcom/android/mms/ui/SPinnerArrayAdapter;

    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->getSpinnerItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SPinnerArrayAdapter;->setCurrentPosition(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$17;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2202(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$17;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$17;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$17;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$17;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$17;->val$adapter:Lcom/android/mms/ui/SPinnerArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/SPinnerArrayAdapter;->setCurrentPosition(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$17;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$17;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelected_spinner_item:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2402(I)I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
