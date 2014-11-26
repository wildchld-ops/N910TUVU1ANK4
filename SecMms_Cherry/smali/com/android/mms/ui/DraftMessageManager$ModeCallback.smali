.class Lcom/android/mms/ui/DraftMessageManager$ModeCallback;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOptionMenu:Landroid/view/Menu;

.field private mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/DraftMessageManager;Lcom/android/mms/ui/DraftMessageManager$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/DraftMessageManager;
    .param p2    # Lcom/android/mms/ui/DraftMessageManager$1;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/DraftMessageManager$ModeCallback;)Landroid/view/Menu;
    .locals 1
    .param p0    # Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->deleteSelectedMessages()V
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2600(Lcom/android/mms/ui/DraftMessageManager;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b03d2 -> :sswitch_0
        0x7f0b03d7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$1500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "Mms/DraftMessageManager"

    const-string v3, "Message does not default App so Do not enable multi select mode(delete, spam, save message..."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$2700(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$2800(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgListSelectionAnimation;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/mms/animation/MsgListSelectionAnimation;->setCheckBoxAnimation(Lcom/android/mms/ui/MsgSweepActionListView;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$300(Lcom/android/mms/ui/DraftMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageManager;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/android/mms/ui/DraftMessageManager;->access$2302(Lcom/android/mms/ui/DraftMessageManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$1500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x7f040000

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0b0030

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v3, v1}, Lcom/android/mms/ui/DraftMessageManager;->access$2402(Lcom/android/mms/ui/DraftMessageManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0b0031

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v3, v1}, Lcom/android/mms/ui/DraftMessageManager;->access$2502(Lcom/android/mms/ui/DraftMessageManager;Landroid/widget/Button;)Landroid/widget/Button;

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$2500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/mms/menu/SelectionMenu;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$1500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/mms/ui/DraftMessageManager;->access$2500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/Button;

    move-result-object v4

    invoke-direct {v1, v3, v4, p0}, Lcom/android/mms/menu/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;)V

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/DraftMessageListAdapter;->setMessageListMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/mms/ui/DraftMessageManager;->access$1702(Lcom/android/mms/ui/DraftMessageManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$2400(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$2400(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Lcom/android/mms/ui/DraftMessageManager$ModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback$1;-><init>(Lcom/android/mms/ui/DraftMessageManager$ModeCallback;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    invoke-static {v1, v3}, Lcom/android/mms/ui/DraftMessageManager;->access$2900(Lcom/android/mms/ui/DraftMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V

    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$2700(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1    # Landroid/view/ActionMode;

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2800(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgListSelectionAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/animation/MsgListSelectionAnimation;->setCheckBoxAnimation(Lcom/android/mms/ui/MsgSweepActionListView;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2300(Lcom/android/mms/ui/DraftMessageManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0, v3}, Lcom/android/mms/ui/DraftMessageManager;->access$2302(Lcom/android/mms/ui/DraftMessageManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v3}, Lcom/android/mms/ui/DraftMessageManager;->access$1702(Lcom/android/mms/ui/DraftMessageManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2700(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/DraftMessageListAdapter;->setMessageListMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/DraftMessageManager;->access$3000(Lcom/android/mms/ui/DraftMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$3100(Lcom/android/mms/ui/DraftMessageManager;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mListMultiMode:I
    invoke-static {v0, v2}, Lcom/android/mms/ui/DraftMessageManager;->access$3102(Lcom/android/mms/ui/DraftMessageManager;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageManager;->updateActionBarTitle()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 15
    .param p1    # Landroid/view/ActionMode;
    .param p2    # I
    .param p3    # J
    .param p5    # Z

    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v12, p2, v6

    if-ltz v12, :cond_0

    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v13

    if-ge v12, v13, :cond_0

    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f0b0094

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    if-gez v13, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v8, 0x0

    const/4 v7, 0x1

    :try_start_0
    const-string v13, "transport_type"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v13, "_id"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_1
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-wide v2, v9

    const-string v13, "mms"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    neg-long v2, v9

    :cond_3
    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v13

    invoke-virtual {v13, v9, v10, v11}, Lcom/android/mms/ui/DraftMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$2300(Lcom/android/mms/ui/DraftMessageManager;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v9, v10, v11, v14}, Lcom/android/mms/ui/DraftMessageListAdapter;->setCheckedItem(JLjava/lang/String;Z)V

    :goto_2
    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mIsSelectAllmode:Z
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$3200(Lcom/android/mms/ui/DraftMessageManager;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mIsLastItemOfSelectAll:Z
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$3300(Lcom/android/mms/ui/DraftMessageManager;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_4
    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    const/4 v14, 0x0

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mIsLastItemOfSelectAll:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/DraftMessageManager;->access$3302(Lcom/android/mms/ui/DraftMessageManager;Z)Z

    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    const/4 v14, 0x0

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mIsSelectAllmode:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/DraftMessageManager;->access$3202(Lcom/android/mms/ui/DraftMessageManager;Z)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->updateSelectionMenu()V

    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/ui/DraftMessageListAdapter;->notifyDataSetChanged()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v13, "colsMap"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$2300(Lcom/android/mms/ui/DraftMessageManager;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v13}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v9, v10, v11, v14}, Lcom/android/mms/ui/DraftMessageListAdapter;->setCheckedItem(JLjava/lang/String;Z)V

    goto :goto_2
.end method

.method public onPopupItemClick(I)Z
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->updateSelectionMenu()V

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->selectAllList()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->unSelectAllList()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b03fa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const v6, 0x7f0b03d2

    const v5, 0x7f0b03d7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$1500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0030

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2402(Lcom/android/mms/ui/DraftMessageManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2502(Lcom/android/mms/ui/DraftMessageManager;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    :cond_0
    iput-object p2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$3100(Lcom/android/mms/ui/DraftMessageManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2300(Lcom/android/mms/ui/DraftMessageManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :pswitch_1
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$2300(Lcom/android/mms/ui/DraftMessageManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$2300(Lcom/android/mms/ui/DraftMessageManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->clearCheckedList()V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mIsSelectAllmode:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/DraftMessageManager;->access$3202(Lcom/android/mms/ui/DraftMessageManager;Z)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # setter for: Lcom/android/mms/ui/DraftMessageManager;->mIsLastItemOfSelectAll:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/DraftMessageManager;->access$3302(Lcom/android/mms/ui/DraftMessageManager;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2300(Lcom/android/mms/ui/DraftMessageManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2300(Lcom/android/mms/ui/DraftMessageManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->clearCheckedList()V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$1700(Lcom/android/mms/ui/DraftMessageManager;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$1700(Lcom/android/mms/ui/DraftMessageManager;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void
.end method

.method public updateSelectionButtonHeight()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$2500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$2500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$2500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/DraftMessageManager"

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$2300(Lcom/android/mms/ui/DraftMessageManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$2300(Lcom/android/mms/ui/DraftMessageManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0440

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$2400(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/menu/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/menu/SelectionMenu;->updateSelectAllMode(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$2500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$2400(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$300(Lcom/android/mms/ui/DraftMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$300(Lcom/android/mms/ui/DraftMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateTitleTextSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2400(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2400(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
