.class public Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"

# interfaces
.implements Lcom/android/launcher2/QuickView$QuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatePageEdit"
.end annotation


# instance fields
.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic allowCustomizeGrid()Z
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic appBadgeUpdated(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    return-void
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    const v8, 0x7f0f00e6

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$5300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v7, :cond_3

    move v3, v5

    :goto_0
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4, v8}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    :cond_0
    if-ne v3, v5, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4, v8}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/PagedView;->setHideItems(Z)V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->getPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/QuickView;->setSecretQuickViewMode(Z)V

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnly(Z)V

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewMainMenu;->drawOpenAnimation()V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v6, p1}, Lcom/android/launcher2/MenuTitleBarManager;->slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V

    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean v5, v4, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewMainMenu;->open()V

    return-void

    :cond_3
    move v3, v6

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/QuickView;->setSecretQuickViewMode(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->getCurrentPage()I

    move-result v1

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getSecretPageCnt()I

    move-result v4

    sub-int/2addr v1, v4

    :cond_5
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/QuickView;->setSecretQuickViewMode(Z)V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickView;->openInstantly()V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    const/16 v7, 0x8

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V

    goto :goto_2
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    invoke-static {v0, v1, p1}, Lcom/android/launcher2/MenuAppsGrid;->access$5500(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V

    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v1, :cond_0

    const-string v1, "Launcher.MenuAppsGrid"

    const-string v2, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->setHideItems(Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->setDirtyFlags()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->close()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickView;->isSecretQuickViewMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getSecretPageCnt()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->showPageIndicator(Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean v2, v1, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/QuickView;->setSecretQuickViewMode(Z)V

    goto :goto_0
.end method

.method public bridge synthetic exitItemViews(Ljava/lang/Iterable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exitWithAnimaton()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public exitWithoutAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$5500(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public bridge synthetic getAppsList()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNumSecretPages()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getMenuSecretPageCnt()I

    move-result v0

    return v0
.end method

.method public getPage(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageHorizontalOffset()I
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getPageSpacing()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    return-void
.end method

.method public getPagesTop()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getTitleBarHight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isFolderPage(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->isFolderPage(I)Z

    move-result v0

    return v0
.end method

.method public isQuickViewOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public movePage(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0, p1, p2}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public onAppModelUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    :cond_0
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_0
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$5200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuStateAnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PagedView;->showPageIndicator(Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    invoke-static {v0, v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5500(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V

    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V
    invoke-static {v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$5600(Lcom/android/launcher2/MenuAppsGrid;Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x1

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5600(Lcom/android/launcher2/MenuAppsGrid;Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public bridge synthetic preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public refreshQuickView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickView;->setSecretQuickViewMode(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickView;->setSecretQuickViewMode(Z)V

    goto :goto_1
.end method

.method public bridge synthetic restore(Landroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restore(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic save(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->save(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveCurrentPageOrder()V
    .locals 5

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iput v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    return-void
.end method

.method public setPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method updateQuickView()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->loadLayoutParameters()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
