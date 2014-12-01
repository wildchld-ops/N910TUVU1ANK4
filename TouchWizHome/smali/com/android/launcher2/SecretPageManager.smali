.class public Lcom/android/launcher2/SecretPageManager;
.super Ljava/lang/Object;
.source "SecretPageManager.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final DEBUGGABLE:Z

.field public static final TAG:Ljava/lang/String; = "SecretPageManager"


# instance fields
.field private mCompleteShowHidedPage:Z

.field private mHidedPage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPageSwitchBySecretMode:Z

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/SecretPageManager;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SecretPageManager;->mPageSwitchBySecretMode:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/launcher2/SecretPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method private checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v7, :cond_1

    move-object v2, v6

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_2

    invoke-virtual {v2, v5}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    instance-of v7, v6, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_2

    move-object v4, v6

    check-cast v4, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public ShowEqualPageWithItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/Workspace$State;)V
    .locals 11

    const/4 v10, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v8, :cond_0

    const/4 v0, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/SecretPageManager;->setCompleteShowHidedPage(Z)V

    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v8

    if-ne v8, v10, :cond_2

    iget-boolean v8, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v8, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v8

    if-eq v8, v10, :cond_4

    iget-boolean v8, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_9

    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v8

    if-ne v8, v10, :cond_6

    iget-boolean v8, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v8, :cond_7

    :cond_6
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v8

    if-eq v8, v10, :cond_8

    iget-boolean v8, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v8, :cond_8

    :cond_7
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    iput-boolean v10, p0, Lcom/android/launcher2/SecretPageManager;->mPageSwitchBySecretMode:Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    const-string v8, "SecretPageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ShowEqualPageWithItem - (isSecret:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pages removed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v6, v3, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getPendingSnapToPage()I

    move-result v7

    sget-object v8, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p2, v8, :cond_d

    if-ltz v7, :cond_d

    iget-boolean v8, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v7}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :goto_4
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->setPendingSnapToPage(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {v8, v9}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto :goto_4

    :cond_d
    sub-int v5, v6, v4

    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lt v5, v8, :cond_e

    const/4 v5, 0x0

    :cond_e
    iget-object v8, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v5}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_4
.end method

.method public ShowHidedPage()V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_6

    const-string v5, "SecretPageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShowHidedPage - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pages will be added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v6

    add-int v3, v5, v6

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-gez v2, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v5

    if-ne v5, v8, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v5

    add-int/2addr v2, v5

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-boolean v8, p0, Lcom/android/launcher2/SecretPageManager;->mPageSwitchBySecretMode:Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->destroyDummyPanel()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0, v8}, Lcom/android/launcher2/SecretPageManager;->setCompleteShowHidedPage(Z)V

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->removeCreatedPageForDrag()V

    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getPendingSnapToPage()I

    move-result v4

    if-ltz v4, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_6
    return-void
.end method

.method public getCompleteShowHidedPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/SecretPageManager;->mCompleteShowHidedPage:Z

    return v0
.end method

.method public getHomeViewItemListByPackageName(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/SecretPageManager;->checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/SecretPageManager;->checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPageSwitchBySecretMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/SecretPageManager;->mPageSwitchBySecretMode:Z

    return v0
.end method

.method public getSecretPageCount()I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public initSecretPage(Lcom/android/launcher2/HomeView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v0, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-void
.end method

.method public printWorkspaceInfo()V
    .locals 6

    const-string v2, "|"

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "N|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v3, "SecretPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WorkspaceInfo - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SecretPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HidedPage size - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCompleteShowHidedPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/SecretPageManager;->mCompleteShowHidedPage:Z

    return-void
.end method

.method public setPageSwitchBySecretMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/SecretPageManager;->mPageSwitchBySecretMode:Z

    return-void
.end method
