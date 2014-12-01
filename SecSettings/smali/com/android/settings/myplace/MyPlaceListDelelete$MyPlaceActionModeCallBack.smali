.class Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;
.super Ljava/lang/Object;
.source "MyPlaceListDelelete.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/MyPlaceListDelelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPlaceActionModeCallBack"
.end annotation


# instance fields
.field private mActionBack:Landroid/widget/LinearLayout;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;


# direct methods
.method private constructor <init>(Lcom/android/settings/myplace/MyPlaceListDelelete;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/myplace/MyPlaceListDelelete;Lcom/android/settings/myplace/MyPlaceListDelelete$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;)V

    return-void
.end method


# virtual methods
.method public createPopup()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$200(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    new-instance v1, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$5;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$5;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public initOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    # setter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$402(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v9, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    return v9

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f091767

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    if-ne v2, v9, :cond_0

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    const v5, 0x7f0919fa

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f090b6d

    new-instance v5, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$1;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$1;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$2;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$2;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    const v5, 0x7f0919fb

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040069

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

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

    new-instance v2, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$3;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$3;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mTitle:Landroid/widget/TextView;

    :goto_1
    const v1, 0x7f090b6d

    invoke-interface {p2, v7, v8, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02024d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$402(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    return v6

    :cond_0
    const v1, 0x7f0b0143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    new-instance v2, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$202(Lcom/android/settings/myplace/MyPlaceListDelelete;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$200(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    const/16 v2, -0xc

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->select:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$302(Lcom/android/settings/myplace/MyPlaceListDelelete;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04015d

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mActionBack:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mActionBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$4;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$4;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$200(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$200(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$200(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04012a

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->select:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$300(Lcom/android/settings/myplace/MyPlaceListDelelete;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->createPopup()V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    goto/16 :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectionMenu()V
    .locals 10

    const v9, 0x7f090b71

    const v8, 0x7f090028

    const/4 v7, 0x1

    const/4 v6, 0x0

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v3

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    :goto_0
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$200(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f04012a

    invoke-direct {v4, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    return-void

    :cond_0
    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v3

    if-eqz v3, :cond_1

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$100()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_0

    :cond_1
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v3, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->mTitle:Landroid/widget/TextView;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
