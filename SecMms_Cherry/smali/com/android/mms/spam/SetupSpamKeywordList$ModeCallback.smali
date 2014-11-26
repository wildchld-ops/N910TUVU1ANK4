.class Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;
.implements Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;
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

.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method private constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mIsFirstEnter:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;Lcom/android/mms/spam/SetupSpamKeywordList$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/spam/SetupSpamKeywordList;
    .param p2    # Lcom/android/mms/spam/SetupSpamKeywordList$1;

    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;)I
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->getChbTransX()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;)Landroid/view/Menu;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method

.method private getChbTransX()I
    .locals 4

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b039d

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
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsInEditMode:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3400(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->showCheckBox()V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsInEditMode:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3400(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->hideCheckBox()V

    :cond_1
    return-void
.end method


# virtual methods
.method public hideCheckBox()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsInEditMode:Z
    invoke-static {v0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3402(Lcom/android/mms/spam/SetupSpamKeywordList;Z)Z

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback$3;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback$3;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

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
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f0b03d2 -> :sswitch_0
        0x7f0b03d7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v2, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2800(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->setEditMode(Z)V

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2300(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, v2, Lcom/android/mms/spam/SetupSpamKeywordList;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->twSetCustomMultiChoiceMode(Z)V

    iput-boolean v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mIsFirstEnter:Z

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCreate:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2900(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2502(Lcom/android/mms/spam/SetupSpamKeywordList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2300(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f040000

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0031

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2702(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0030

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2602(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2700(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/mms/menu/SelectionMenu;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2300(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2700(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/mms/menu/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;)V

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    :cond_2
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1602(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1602(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->notifyDataSetChanged()V

    return v4

    :cond_4
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2700(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1    # Landroid/view/ActionMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->setEditMode(Z)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2500(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2500(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2502(Lcom/android/mms/spam/SetupSpamKeywordList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3000(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3000(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3000(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3002(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1602(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_2
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$900(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListMultiMode:I
    invoke-static {v0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$902(Lcom/android/mms/spam/SetupSpamKeywordList;I)I

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2800(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCreate:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2900(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->invalidateOptionsMenu()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 3
    .param p1    # Landroid/view/ActionMode;
    .param p2    # I
    .param p3    # J
    .param p5    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mUpdateChecked:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3100(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_6

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2500(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsSelectAllmode:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3200(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mIsFirstEnter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$900(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamKeywordList;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLastItemOfSelectAll:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3300(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamKeywordList;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mIsFirstEnter:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mIsFirstEnter:Z

    :cond_3
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsSelectAllmode:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3200(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLastItemOfSelectAll:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3300(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLastItemOfSelectAll:Z
    invoke-static {v0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3302(Lcom/android/mms/spam/SetupSpamKeywordList;Z)Z

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsSelectAllmode:Z
    invoke-static {v0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3202(Lcom/android/mms/spam/SetupSpamKeywordList;Z)Z

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2500(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPopupItemClick(I)Z
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->updateSelectionMenu()V

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllList()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->unSelectAllList()V

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

    const/4 v5, 0x0

    const v4, 0x7f0b03d7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2300(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2702(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/widget/Button;)Landroid/widget/Button;

    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$900(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$900(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0030

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2602(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/widget/TextView;)Landroid/widget/TextView;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2500(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :pswitch_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$900(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCheckBox()V
    .locals 5

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const/4 v4, 0x1

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsInEditMode:Z
    invoke-static {v3, v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3402(Lcom/android/mms/spam/SetupSpamKeywordList;Z)Z

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback$2;

    invoke-direct {v4, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback$2;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b039d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public updateSelectionButtonHeight()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2700(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2700(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2700(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/SetupSpamKeywordList"

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2500(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2300(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0440

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/menu/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/menu/SelectionMenu;->updateSelectAllMode(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateTitleTextSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
