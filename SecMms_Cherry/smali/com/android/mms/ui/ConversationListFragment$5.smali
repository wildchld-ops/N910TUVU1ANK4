.class Lcom/android/mms/ui/ConversationListFragment$5;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onActivityCreated(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    const v4, 0x7f0b03d7

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->selectAllList()V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->access$900(Lcom/android/mms/ui/ConversationListFragment$ModeCallback;)Landroid/view/Menu;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->access$900(Lcom/android/mms/ui/ConversationListFragment$ModeCallback;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->unSelectAllList()V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->access$900(Lcom/android/mms/ui/ConversationListFragment$ModeCallback;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v3

    if-ne v3, v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->access$900(Lcom/android/mms/ui/ConversationListFragment$ModeCallback;)Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->access$900(Lcom/android/mms/ui/ConversationListFragment$ModeCallback;)Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method
