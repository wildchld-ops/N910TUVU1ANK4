.class Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Lcom/android/phone/callsettings/LGTPhotoRingRejectList$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p2    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList$1;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

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
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->callMatchCriteriaToEditNum()V
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0148 -> :sswitch_1
        0x7f0a0235 -> :sswitch_0
        0x7f0a0236 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2800(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->createLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->createLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$902(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const v1, 0x7f110001

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0a0017

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2702(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback$1;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2402(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1    # Landroid/view/ActionMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$902(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2402(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionModeType:I
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$3000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->setActionMode(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->createLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->createLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2800(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2800(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEditModeFromMenu:Z
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$3102(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1602(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->makeScreen()V
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 2
    .param p1    # Landroid/view/ActionMode;
    .param p2    # I
    .param p3    # J
    .param p5    # Z

    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsSelectAllmode:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$3200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->updatePopupMenuItemsVisibility()V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const v5, 0x7f0a0236

    const v4, 0x7f0a0235

    const v3, 0x7f0a0148

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionModeType:I
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$3000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEditModeFromMenu:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$3100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a37

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method
