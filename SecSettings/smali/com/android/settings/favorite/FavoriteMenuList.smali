.class public Lcom/android/settings/favorite/FavoriteMenuList;
.super Landroid/preference/PreferenceActivity;
.source "FavoriteMenuList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnTwMultiSelectedListener;
.implements Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;
.implements Lcom/android/settings/favorite/FavoriteActionModeCallback$OnDoneListner;
.implements Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;
.implements Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;
    }
.end annotation


# static fields
.field private static final MAX:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected isGridView:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field protected mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

.field private mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

.field protected mListView:Landroid/widget/ListView;

.field public mOnDoneListner:Lcom/android/settings/favorite/FavoriteActionModeCallback$OnDoneListner;

.field private mSaveButton:Landroid/widget/Button;

.field private mcancelButton:Landroid/widget/Button;

.field private toastStatus:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/favorite/FavoriteMenuList;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getMaxFavoriteItemNumber()I

    move-result v0

    sput v0, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/settings/favorite/FavoriteMenuList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/favorite/FavoriteMenuList$1;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;)V

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mOnDoneListner:Lcom/android/settings/favorite/FavoriteActionModeCallback$OnDoneListner;

    return-void
.end method


# virtual methods
.method public OnTwMultiSelectStart(II)V
    .locals 2

    sget-object v0, Lcom/android/settings/favorite/FavoriteMenuList;->TAG:Ljava/lang/String;

    const-string v1, "OnTwMultiSelectStart"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    return-void
.end method

.method public OnTwMultiSelectStop(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateSelectionItem()V

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090026

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public displayGridView(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/grid/GridSettingsFragment;

    invoke-direct {v1}, Lcom/android/settings/grid/GridSettingsFragment;-><init>()V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public displayListView()V
    .locals 2

    const v0, 0x7f0400b5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public getGridType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGiditemChecked(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    const-string v4, "favoriteList"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "favoriteList"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v4, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-direct {v4, p0, p0, v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateState()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_gridui"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->isGridView:Z

    iget-boolean v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->isGridView:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/settings/favorite/FavoriteMenuList;->displayGridView(Ljava/util/ArrayList;)V

    :goto_1
    new-instance v3, Lcom/android/settings/favorite/FavoriteActionModeCallback;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/settings/favorite/FavoriteActionModeCallback;-><init>(Landroid/content/Context;Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;)V

    iput-object v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

    iget-object v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

    invoke-virtual {v3, p0}, Lcom/android/settings/favorite/FavoriteActionModeCallback;->setOnDoneListner(Lcom/android/settings/favorite/FavoriteActionModeCallback$OnDoneListner;)V

    iget-object v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionMode:Landroid/view/ActionMode;

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->displayListView()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/favorite/FavoriteMenuList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/favorite/FavoriteMenuList$2;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f091858

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/favorite/FavoriteMenuList$3;

    invoke-direct {v2, p0}, Lcom/android/settings/favorite/FavoriteMenuList$3;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getChecked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v1, :cond_0

    sget v2, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    if-lt v0, v2, :cond_0

    const v2, 0x7f090026

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateSelectionItem()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getChecked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v1, :cond_0

    sget v2, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    if-lt v0, v2, :cond_0

    const v2, 0x7f090026

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateSelectionItem()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->saveState()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b013b -> :sswitch_1
        0x7f0b013c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateSelectionItem()V

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setEnableDragBlock(Z)V

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V

    :cond_0
    return-void
.end method

.method public onTwMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/GridSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getChecked()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->saveState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public saveState()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v1

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.settings"

    const-string v7, "DQST"

    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    iget v4, v4, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v7, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->removeFavorite(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.settings"

    const-string v7, "AQST"

    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    iget v4, v4, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v7, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->saveFavorite(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public stopActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public updateSelectionItem()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getChecked()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/favorite/FavoriteActionModeCallback;->updateSelectionMenu(I)V

    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
