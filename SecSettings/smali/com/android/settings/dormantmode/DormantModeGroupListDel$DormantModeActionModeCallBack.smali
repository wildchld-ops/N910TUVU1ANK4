.class Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;
.super Ljava/lang/Object;
.source "DormantModeGroupListDel.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dormantmode/DormantModeGroupListDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DormantModeActionModeCallBack"
.end annotation


# instance fields
.field private mActionBack:Landroid/widget/LinearLayout;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field popup:Landroid/widget/PopupMenu;

.field final synthetic this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;


# direct methods
.method private constructor <init>(Lcom/android/settings/dormantmode/DormantModeGroupListDel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dormantmode/DormantModeGroupListDel;Lcom/android/settings/dormantmode/DormantModeGroupListDel$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/dormantmode/DormantModeGroupListDel;
    .param p2    # Lcom/android/settings/dormantmode/DormantModeGroupListDel$1;

    invoke-direct {p0, p1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;-><init>(Lcom/android/settings/dormantmode/DormantModeGroupListDel;)V

    return-void
.end method


# virtual methods
.method public createPopup()V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x6

    const v2, 0x7f090b71

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090028

    invoke-interface {v0, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$5;

    invoke-direct {v1, p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$5;-><init>(Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-void
.end method

.method public initOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    # setter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$102(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 11
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    const v10, 0x7f090b6d

    const/4 v9, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v9

    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$200()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    if-ne v2, v9, :cond_0

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    const v5, 0x7f0919f8

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$1;

    invoke-direct {v4, p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$1;-><init>(Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;)V

    invoke-virtual {v1, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$2;

    invoke-direct {v5, p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$2;-><init>(Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    const v5, 0x7f0919f9

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->stopMultiActionMode()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    iput-boolean v5, v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->actionModeControl:Z

    invoke-static {}, Lcom/android/settings/Utils;->isNoteModel()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040069

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$3;

    invoke-direct {v2, p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$3;-><init>(Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mTitle:Landroid/widget/TextView;

    :goto_1
    const v1, 0x7f0901ba

    invoke-interface {p2, v4, v6, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    # setter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_cancel:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$302(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    const v1, 0x7f0916b5

    invoke-interface {p2, v4, v7, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    # setter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$102(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    # setter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$402(Lcom/android/settings/dormantmode/DormantModeGroupListDel;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v5

    :cond_0
    const v1, 0x7f0b0143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mActionBack:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mActionBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$4;

    invoke-direct {v2, p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$4;-><init>(Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->createPopup()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1    # Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$402(Lcom/android/settings/dormantmode/DormantModeGroupListDel;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    iget-boolean v0, v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->actionModeControl:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->actionModeControl:Z

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v0, 0x0

    return v0
.end method

.method public stopMultiActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    # getter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$400(Lcom/android/settings/dormantmode/DormantModeGroupListDel;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    # getter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$400(Lcom/android/settings/dormantmode/DormantModeGroupListDel;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x1

    # getter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$200()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isNoteModel()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$200()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    # getter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$200()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$200()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    if-lez v2, :cond_1

    # getter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$200()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    # getter for: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$200()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->mTitle:Landroid/widget/TextView;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
