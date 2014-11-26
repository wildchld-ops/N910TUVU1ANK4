.class public Lcom/android/settings/dormantmode/DormantModeGroupListDel;
.super Landroid/app/ListFragment;
.source "DormantModeGroupListDel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;
.implements Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dormantmode/DormantModeGroupListDel$1;,
        Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;",
        "Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;"
    }
.end annotation


# static fields
.field static final GROUPS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

.field private static mItem_cancel:Landroid/view/MenuItem;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mItem_trash:Landroid/view/MenuItem;

.field private static mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private static mSelect_mode:Ljava/lang/Boolean;

.field private static mlistView:Landroid/widget/ListView;

.field private static pen_selected_id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static selected_id:I


# instance fields
.field public actionModeControl:Z

.field contactPakcage:Ljava/lang/String;

.field private mActionMode:Landroid/view/ActionMode;

.field private mButtonSellectAll:Landroid/view/View;

.field private mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

.field private mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

.field private mEmptyScreen:Landroid/view/View;

.field private mGroupListDel:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelect_mode:Ljava/lang/Boolean;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sec_custom_dormant_group"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->GROUPS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->actionModeControl:Z

    const-string v0, "com.android.contacts"

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->contactPakcage:Ljava/lang/String;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 4
    .param p1    # Z

    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    sget-object v3, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/common/DeleteModeCallback;->updateSelectionMenu(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    invoke-virtual {v2}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->updateSelectionMenu()V

    :cond_3
    return-void
.end method

.method static synthetic access$102(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0    # Landroid/view/MenuItem;

    sput-object p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_trash:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$200()Landroid/widget/ListView;
    .locals 1

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$302(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0    # Landroid/view/MenuItem;

    sput-object p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_cancel:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/dormantmode/DormantModeGroupListDel;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/dormantmode/DormantModeGroupListDel;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/settings/dormantmode/DormantModeGroupListDel;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/dormantmode/DormantModeGroupListDel;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/dormantmode/DormantModeGroupListDel;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->ToggleAllCheck(Z)V

    return-void
.end method

.method public static checkDeleteButtonstate()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_trash:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelect_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f02024d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f090b6d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_cancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/common/DeleteModeCallback;->refreshTrashState(I)V

    :cond_4
    return-void

    :cond_5
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelect_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_7

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f02024e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_7
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public static newInstance(ILjava/lang/Boolean;)Lcom/android/settings/dormantmode/DormantModeGroupListDel;
    .locals 4
    .param p0    # I
    .param p1    # Ljava/lang/Boolean;

    new-instance v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    invoke-direct {v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "selected_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "selectMode"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static newInstance(Ljava/util/ArrayList;Ljava/lang/Boolean;)Lcom/android/settings/dormantmode/DormantModeGroupListDel;
    .locals 4
    .param p1    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/android/settings/dormantmode/DormantModeGroupListDel;"
        }
    .end annotation

    new-instance v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    invoke-direct {v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "selected_ids"

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "selectMode"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private setMultiSelectCheck()V
    .locals 4

    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->pen_selected_id:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setSelectCheck()V
    .locals 3

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    sget v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->selected_id:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updatListView()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/common/DeleteModeCallback;->initOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/common/DeleteModeCallback;->updateSelectionMenu(I)V

    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->initOptionsMenu(Landroid/view/Menu;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->updateSelectionMenu()V

    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->finish()V

    return-void
.end method

.method public convertContactGroupTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "system_group_id_friend"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Friends"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "system_group_id_family"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Family"

    goto :goto_0

    :cond_1
    const-string v1, "system_group_id_coworker"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Coworkers"

    goto :goto_0

    :cond_2
    const-string v1, "system_group_id_my_contacts"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "My Contacts"

    goto :goto_0

    :cond_3
    const-string v1, "system_group_id_ice"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "ICE"

    goto :goto_0

    :cond_4
    const-string v1, "contactsFavoritesLabel"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "Favorites"

    goto :goto_0

    :cond_5
    const-string v1, "not_assigned"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "Not Assigned"

    goto :goto_0

    :cond_6
    move-object v0, p1

    goto :goto_0

    :cond_7
    const-string v1, "system_group_friend"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "Friends"

    goto :goto_0

    :cond_8
    const-string v1, "system_group_family"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "Family"

    goto :goto_0

    :cond_9
    const-string v1, "system_group_coworker"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "Coworkers"

    goto/16 :goto_0

    :cond_a
    const-string v1, "system_group_my_contacts"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "My Contacts"

    goto/16 :goto_0

    :cond_b
    const-string v1, "emergency_contacts"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "ICE"

    goto/16 :goto_0

    :cond_c
    const-string v1, "contactsFavoritesLabel"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "Favorites"

    goto/16 :goto_0

    :cond_d
    const-string v1, "not_assigned"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, "Not Assigned"

    goto/16 :goto_0

    :cond_e
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public delete()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->grouplistdelete()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->stopActionMode()V

    return-void
.end method

.method public finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public getContactString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.contacts"

    iput-object v3, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->contactPakcage:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "string"

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->contactPakcage:Ljava/lang/String;

    invoke-static {v3, p1, v4, v5}, Lcom/android/settings/Utils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->contactPakcage:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public grouplistdelete()V
    .locals 11

    sget-object v7, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "title IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    sget-object v7, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    sget-object v9, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    sget-object v10, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-interface {v7, v8, v9, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v7, 0x1020014

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->convertContactGroupTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "\'"

    const-string v8, "\'\'"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "sec_custom_dormant_group"

    const-string v8, "0"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v2, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x1020004

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mEmptyScreen:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isNoteModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isOSUpgrade()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mGroupListDel:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mButtonSellectAll:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mGroupListDel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v2, 0x7f040231

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_5

    const v2, 0x7f040231

    :goto_0
    new-instance v0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v6

    new-array v5, v9, [I

    const v8, 0x1020014

    aput v8, v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/common/CheckedGroupListCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v9}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->setHasOptionsMenu(Z)V

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isNoteModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mButtonSellectAll:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;-><init>(Lcom/android/settings/dormantmode/DormantModeGroupListDel;Lcom/android/settings/dormantmode/DormantModeGroupListDel$1;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/common/DeleteModeCallback;->updateSelectionMenu(I)V

    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->updateSelectionMenu()V

    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    :cond_4
    return-void

    :cond_5
    const v2, 0x7f040233

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isNoteModel()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/common/DeleteModeCallback;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/common/DeleteModeCallback;-><init>(Landroid/content/Context;Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    invoke-virtual {v0, p0}, Lcom/android/settings/common/DeleteModeCallback;->setOnDeleteListner(Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;)V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->ToggleAllCheck(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->selected_id:I

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->pen_selected_id:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selectMode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelect_mode:Ljava/lang/Boolean;

    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelect_mode:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "content://com.android.contacts/groups_list/aggregated"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->GROUPS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v4, "sec_custom_dormant_group=1"

    const/4 v5, 0x0

    const-string v6, "title COLLATE LOCALIZED ASC"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const v5, 0x7f0901ba

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2, v3, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f090b6d

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_cancel:Landroid/view/MenuItem;

    :goto_0
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    return-void

    :cond_0
    const v0, 0x7f120001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f090b6d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_cancel:Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f040097

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f040096

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->actionModeControl:Z

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1    # Landroid/widget/ListView;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/common/DeleteModeCallback;->updateSelectionMenu(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->updateSelectionMenu()V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    sget v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->selected_id:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->pen_selected_id:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->setMultiSelectCheck()V

    :goto_0
    sput v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->selected_id:I

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    :cond_1
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/common/DeleteModeCallback;->updateSelectionMenu(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBackNew:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->updateSelectionMenu()V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->setSelectCheck()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/Loader;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->grouplistdelete()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_1
        0x7f0b013b -> :sswitch_1
        0x7f0b07e3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1    # Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->updatListView()V

    :cond_0
    return-void
.end method

.method public stopActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
