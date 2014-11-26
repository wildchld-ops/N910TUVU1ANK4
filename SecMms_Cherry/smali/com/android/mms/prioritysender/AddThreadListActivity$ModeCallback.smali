.class Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;
.super Ljava/lang/Object;
.source "AddThreadListActivity.java"

# interfaces
.implements Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/prioritysender/AddThreadListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOptionMenu:Landroid/view/Menu;

.field private mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

.field final synthetic this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/prioritysender/AddThreadListActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/prioritysender/AddThreadListActivity;Lcom/android/mms/prioritysender/AddThreadListActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/prioritysender/AddThreadListActivity;
    .param p2    # Lcom/android/mms/prioritysender/AddThreadListActivity$1;

    invoke-direct {p0, p1}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;-><init>(Lcom/android/mms/prioritysender/AddThreadListActivity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;)Landroid/view/Menu;
    .locals 1
    .param p0    # Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 14
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :goto_0
    const/4 v11, 0x1

    return v11

    :pswitch_0
    iget-object v11, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-static {v11}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/glance/GlanceDBHelper;->getMaxPriority()J

    move-result-wide v6

    const/4 v0, 0x0

    iget-object v11, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v11}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemIds()[J

    move-result-object v1

    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-wide v9, v1, v4

    iget-object v11, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    const/4 v12, 0x0

    invoke-static {v11, v9, v10, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    if-lez v11, :cond_1

    const-wide/16 v11, 0x1

    add-long/2addr v6, v11

    iget-object v12, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/data/Contact;

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-static {v12, v11, v6, v7, v13}, Lcom/android/mms/glance/GlanceUtils;->addPrioritySender(Landroid/content/Context;Ljava/lang/String;JZ)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    iget-object v11, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # invokes: Lcom/android/mms/prioritysender/AddThreadListActivity;->showToast(I)V
    invoke-static {v11, v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1200(Lcom/android/mms/prioritysender/AddThreadListActivity;I)V

    :cond_3
    iget-object v11, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-static {v11}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    iget-object v11, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Lcom/android/mms/prioritysender/AddThreadListActivity;->setResult(I)V

    iget-object v11, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-virtual {v11}, Lcom/android/mms/prioritysender/AddThreadListActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03f8
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-virtual {v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0030

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1002(Lcom/android/mms/prioritysender/AddThreadListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0031

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    # setter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1102(Lcom/android/mms/prioritysender/AddThreadListActivity;Landroid/widget/Button;)Landroid/widget/Button;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/mms/menu/SelectionMenu;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$900(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/mms/menu/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;)V

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1000(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1000(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback$1;-><init>(Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1    # Landroid/view/ActionMode;

    const-string v0, "Mms/AddThreadListActivity"

    const-string v1, "onDestroyActionMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->finish()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # I
    .param p3    # J
    .param p5    # Z

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v2, p2, v1

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    if-eqz p5, :cond_1

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mMaxCount:I
    invoke-static {v4}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$300(Lcom/android/mms/prioritysender/AddThreadListActivity;)I

    move-result v4

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setItemChecked(IZ)V

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # invokes: Lcom/android/mms/prioritysender/AddThreadListActivity;->showMaxToast()V
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$400(Lcom/android/mms/prioritysender/AddThreadListActivity;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->updateSelectionMenu()V

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$200(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0
.end method

.method public onPopupItemClick(I)Z
    .locals 5
    .param p1    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0b03f8

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$200(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mMaxCount:I
    invoke-static {v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$300(Lcom/android/mms/prioritysender/AddThreadListActivity;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # invokes: Lcom/android/mms/prioritysender/AddThreadListActivity;->showMaxToast()V
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$400(Lcom/android/mms/prioritysender/AddThreadListActivity;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->selectAllList()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->unSelectAllList()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0b03fa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v3, 0x7f0b03f8

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0030

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1002(Lcom/android/mms/prioritysender/AddThreadListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    # setter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1102(Lcom/android/mms/prioritysender/AddThreadListActivity;Landroid/widget/Button;)Landroid/widget/Button;

    :cond_0
    iput-object p2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return v4

    :cond_1
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public updateSelectionButtonHeight()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-virtual {v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 8

    const/16 v7, 0x8

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/AddThreadListActivity"

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$900(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0441

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1000(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mMaxCount:I
    invoke-static {v4}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$300(Lcom/android/mms/prioritysender/AddThreadListActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/menu/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/menu/SelectionMenu;->updateSelectAllMode(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$1000(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mMaxCount:I
    invoke-static {v4}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$300(Lcom/android/mms/prioritysender/AddThreadListActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
