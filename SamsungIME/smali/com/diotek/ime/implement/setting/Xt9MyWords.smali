.class public Lcom/diotek/ime/implement/setting/Xt9MyWords;
.super Landroid/app/Activity;
.source "Xt9MyWords.java"


# instance fields
.field private mArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyLayout:Landroid/widget/LinearLayout;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMainListView:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

.field private minputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/Xt9MyWords;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private addMyWord()V
    .locals 3

    const v0, 0x7f0e009e

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "CURRENT_MODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private deleteMyWord()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private generateWordUserModel()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Trainer;->getTermCounts()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Term;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v4

    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->staticModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9MyWords$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords$2;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWords;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private setDeleteMenuItemEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

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

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f100000

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->setDeleteMenuItemEnabled(Z)V

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

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DBController()Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f03009c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v1, 0x7f0800d1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
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

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    const/4 v1, 0x3

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

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->addMyWord()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->deleteMyWord()V

    goto :goto_0

    nop

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

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->setDeleteMenuItemEnabled(Z)V

    return v1
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 11

    const/16 v10, 0x8

    const/4 v0, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0800d2

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v8, 0x7f0300a0

    const v9, 0x7f0800d8

    invoke-direct {v6, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->minputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v6, v5, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->getMyWordsList(Ljava/util/ArrayList;Z)I

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v6, v5, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->getMyWordsList(Ljava/util/ArrayList;Z)I

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    if-nez v0, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->setDeleteMenuItemEnabled(Z)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v7, Lcom/diotek/ime/implement/setting/Xt9MyWords$1;

    invoke-direct {v7, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords$1;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWords;)V

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    const/high16 v7, 0x100000

    invoke-virtual {v6, v7}, Landroid/view/View;->setDrawingCacheQuality(I)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->generateWordUserModel()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
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
