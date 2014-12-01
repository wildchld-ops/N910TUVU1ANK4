.class public Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;
.super Landroid/app/Activity;
.source "Xt9AutoSubstitutions.java"


# instance fields
.field private mArrayAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

.field private mEmptyLayout:Landroid/widget/LinearLayout;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMainListView:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;)Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mArrayAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    return-object v0
.end method

.method private addAutoSubstitution()V
    .locals 3

    const v0, 0x7f0e009e

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "CURRENT_MODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private addToAutoSubstitutionsData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v3, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v3, v1, v2}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private deleteAutoSubstitution()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions$1;-><init>(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private setDeleteMenuItemEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMenu:Landroid/view/Menu;

    const v1, 0x7f08012b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f100000

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMenu:Landroid/view/Menu;

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->setDeleteMenuItemEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DBController()Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const v1, 0x7f030097

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0800c8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->addAutoSubstitution()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->deleteAutoSubstitution()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08012a -> :sswitch_1
        0x7f08012b -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMenu:Landroid/view/Menu;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->setDeleteMenuItemEnabled(Z)V

    return v1
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 9

    const/16 v8, 0x8

    const/4 v5, 0x0

    const v4, 0x7f0800c9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMainListView:Landroid/widget/ListView;

    new-instance v4, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    const v6, 0x7f03009b

    invoke-direct {v4, p0, v6}, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mArrayAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mArrayAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v4, v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->getAutoSubstitutionsList(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    invoke-direct {p0, v0, v2, v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->addToAutoSubstitutionsData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Xt9AutoSubstitutions onResume size is not equal (shortcutList, substitutionList) : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->setDeleteMenuItemEnabled(Z)V

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mArrayAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    invoke-virtual {v4, v0}, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mArrayAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    new-instance v5, Lcom/diotek/ime/implement/setting/AutoSubstitutionsDataCompareator;

    invoke-direct {v5}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsDataCompareator;-><init>()V

    invoke-virtual {v4, v5}, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->sort(Ljava/util/Comparator;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMainListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mArrayAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMainListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMainListView:Landroid/widget/ListView;

    const/high16 v5, 0x100000

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheQuality(I)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
