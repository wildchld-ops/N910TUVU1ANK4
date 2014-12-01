.class Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;
.super Ljava/lang/Object;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;
.implements Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/template/TextTemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mIsFirstEnter:Z

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOptionMenu:Landroid/view/Menu;

.field private mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

.field final synthetic this$0:Lcom/android/mms/template/TextTemplateListActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mIsFirstEnter:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/template/TextTemplateListActivity;Lcom/android/mms/template/TextTemplateListActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->getChbTransX()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method

.method private getChbTransX()I
    .locals 4

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0374

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    return v2
.end method

.method private setEditMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsInEditMode:Z
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$2100(Lcom/android/mms/template/TextTemplateListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsInEditMode:Z
    invoke-static {v0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$2102(Lcom/android/mms/template/TextTemplateListActivity;Z)Z

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->showCheckBox()V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsInEditMode:Z
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$2100(Lcom/android/mms/template/TextTemplateListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsInEditMode:Z
    invoke-static {v0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$2102(Lcom/android/mms/template/TextTemplateListActivity;Z)Z

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->hideCheckBox()V

    :cond_1
    return-void
.end method


# virtual methods
.method public hideCheckBox()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsInEditMode:Z
    invoke-static {v0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$2102(Lcom/android/mms/template/TextTemplateListActivity;Z)Z

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$3;

    invoke-direct {v1, p0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$3;-><init>(Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

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
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListActivity;->onClickDone()V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListActivity;->checkTemplateEditTMO()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b03d2 -> :sswitch_0
        0x7f0b03d7 -> :sswitch_0
        0x7f0b03fd -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1700(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$500(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->setEditMode(Z)V

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, v2, Lcom/android/mms/template/TextTemplateListActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->twSetCustomMultiChoiceMode(Z)V

    iput-boolean v4, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mIsFirstEnter:Z

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$902(Lcom/android/mms/template/TextTemplateListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f040000

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0031

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1602(Lcom/android/mms/template/TextTemplateListActivity;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0030

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1502(Lcom/android/mms/template/TextTemplateListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1500(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1600(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/mms/menu/SelectionMenu;

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$1300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1600(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/mms/menu/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;)V

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    :cond_2
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateListAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/mms/template/TextTemplateListAdapter;->setMessageListMode(Z)V

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/mms/template/TextTemplateListActivity;->access$302(Lcom/android/mms/template/TextTemplateListActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1500(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1500(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$1;-><init>(Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iput v4, v1, Lcom/android/mms/template/TextTemplateListActivity;->mScreenType:I

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # invokes: Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$200(Lcom/android/mms/template/TextTemplateListActivity;)V

    return v4

    :cond_4
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1600(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->setEditMode(Z)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$900(Lcom/android/mms/template/TextTemplateListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$900(Lcom/android/mms/template/TextTemplateListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$902(Lcom/android/mms/template/TextTemplateListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$302(Lcom/android/mms/template/TextTemplateListActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, v0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, v0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$700(Lcom/android/mms/template/TextTemplateListActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mListMultiMode:I
    invoke-static {v0, v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$702(Lcom/android/mms/template/TextTemplateListActivity;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/template/TextTemplateListAdapter;->setMessageListMode(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1700(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # invokes: Lcom/android/mms/template/TextTemplateListActivity;->updateActionBarTitle()V
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$100(Lcom/android/mms/template/TextTemplateListActivity;)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListActivity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iput v2, v0, Lcom/android/mms/template/TextTemplateListActivity;->mScreenType:I

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # invokes: Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$200(Lcom/android/mms/template/TextTemplateListActivity;)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v2, p2, v1

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0374

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    if-eqz p5, :cond_6

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$900(Lcom/android/mms/template/TextTemplateListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsSelectAllmode:Z
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1900(Lcom/android/mms/template/TextTemplateListActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mIsFirstEnter:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListMultiMode:I
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$700(Lcom/android/mms/template/TextTemplateListActivity;)I

    move-result v3

    if-ne v3, v6, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v3, v3, Lcom/android/mms/template/TextTemplateListActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsLastItemOfSelectAll:Z
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$2000(Lcom/android/mms/template/TextTemplateListActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v3, v3, Lcom/android/mms/template/TextTemplateListActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mIsFirstEnter:Z

    if-eqz v3, :cond_3

    iput-boolean v5, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mIsFirstEnter:Z

    :cond_3
    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsSelectAllmode:Z
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1900(Lcom/android/mms/template/TextTemplateListActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsLastItemOfSelectAll:Z
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$2000(Lcom/android/mms/template/TextTemplateListActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsLastItemOfSelectAll:Z
    invoke-static {v3, v5}, Lcom/android/mms/template/TextTemplateListActivity;->access$2002(Lcom/android/mms/template/TextTemplateListActivity;Z)Z

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsSelectAllmode:Z
    invoke-static {v3, v5}, Lcom/android/mms/template/TextTemplateListActivity;->access$1902(Lcom/android/mms/template/TextTemplateListActivity;Z)Z

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->updateSelectionMenu()V

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/template/TextTemplateListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_5
    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$900(Lcom/android/mms/template/TextTemplateListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPopupItemClick(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->updateSelectionMenu()V

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListActivity;->selectAllList()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListActivity;->unSelectAllList()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b03fa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    const v7, 0x7f0b03fd

    const v6, 0x7f0b03d2

    const v5, 0x7f0b03d7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1602(Lcom/android/mms/template/TextTemplateListActivity;Landroid/widget/Button;)Landroid/widget/Button;

    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$700(Lcom/android/mms/template/TextTemplateListActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$700(Lcom/android/mms/template/TextTemplateListActivity;)I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0030

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1502(Lcom/android/mms/template/TextTemplateListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$900(Lcom/android/mms/template/TextTemplateListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_3
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$900(Lcom/android/mms/template/TextTemplateListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$900(Lcom/android/mms/template/TextTemplateListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/android/mms/template/TextTemplateListActivity;->setTextTemplateSelector(I)V
    invoke-static {v1, v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1800(Lcom/android/mms/template/TextTemplateListActivity;I)V

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTexttemplatTMOMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_4
    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :pswitch_1
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_5
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$700(Lcom/android/mms/template/TextTemplateListActivity;)I

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_7
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCheckBox()V
    .locals 5

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const/4 v4, 0x1

    # setter for: Lcom/android/mms/template/TextTemplateListActivity;->mIsInEditMode:Z
    invoke-static {v3, v4}, Lcom/android/mms/template/TextTemplateListActivity;->access$2102(Lcom/android/mms/template/TextTemplateListActivity;Z)Z

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$2;

    invoke-direct {v4, p0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback$2;-><init>(Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0374

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public updateSelectionButtonHeight()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1600(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1600(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$1600(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/TextTemplateListActivity"

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$900(Lcom/android/mms/template/TextTemplateListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$1300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0440

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/menu/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/menu/SelectionMenu;->updateSelectAllMode(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$1500(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$500(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$500(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateTitleTextSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1500(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$1500(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v2}, Lcom/android/mms/template/TextTemplateListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
