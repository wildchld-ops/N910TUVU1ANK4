.class Lcom/android/mms/prioritysender/AddThreadListActivity$1;
.super Ljava/lang/Object;
.source "AddThreadListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/prioritysender/AddThreadListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/prioritysender/AddThreadListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    const v5, 0x7f0b03f8

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$200(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mMaxCount:I
    invoke-static {v4}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$300(Lcom/android/mms/prioritysender/AddThreadListActivity;)I

    move-result v4

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # invokes: Lcom/android/mms/prioritysender/AddThreadListActivity;->showMaxToast()V
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$400(Lcom/android/mms/prioritysender/AddThreadListActivity;)V

    :cond_0
    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-virtual {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->selectAllList()V

    :goto_1
    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    iget-object v3, v3, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    iget-object v3, v3, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->access$500(Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;)Landroid/view/Menu;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    iget-object v2, v2, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->access$500(Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    iget-object v2, v2, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->access$500(Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-virtual {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->unSelectAllList()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    iget-object v3, v3, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->access$500(Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;)Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$1;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    iget-object v3, v3, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->access$500(Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;)Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method
