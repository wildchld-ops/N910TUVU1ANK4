.class public Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"

# interfaces
.implements Lcom/android/launcher2/QuickView$QuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetStatePageEdit"
.end annotation


# instance fields
.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method private isQuickViewOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

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


# virtual methods
.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 7
    .param p1    # Lcom/android/launcher2/MenuWidgets$WidgetState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewGridLayout;->getPageType()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/QuickView;->setSecretQuickViewMode(Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const v3, 0x7f0f00e7

    invoke-virtual {v2, v3}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnly(Z)V

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewMainMenu;->drawOpenAnimation()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v3, p2}, Lcom/android/launcher2/MenuTitleBarManager;->slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V

    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2, v6}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewMainMenu;->open()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v2, v6}, Lcom/android/launcher2/QuickView;->setSecretQuickViewMode(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickView;->openInstantly()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V

    goto :goto_1
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 3
    .param p1    # Lcom/android/launcher2/MenuWidgets$WidgetState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->setDirtyFlags()V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->exitWithoutAnimation()V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->resetTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/QuickView;->setSecretQuickViewMode(Z)V

    return-void
.end method

.method public exitWithAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public exitWithoutAnimation()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->close()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNumSecretPages()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getSecretWidgetPageCount()I

    move-result v0

    return v0
.end method

.method public getPage(I)Landroid/view/View;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageHorizontalOffset()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # invokes: Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageWidth()I
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$2300(Lcom/android/launcher2/MenuWidgets;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .param p1    # [I

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    return-void
.end method

.method public getPagesTop()I
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public isFolderPage(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public movePage(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/HomePendingItem;
    .param p2    # Landroid/view/View;

    return-void
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->isQuickViewOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->exitWithoutAnimation()V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->changeToWidgetStateNormal()V

    :cond_0
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuStateAnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # invokes: Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V
    invoke-static {v0, v2}, Lcom/android/launcher2/MenuWidgets;->access$2500(Lcom/android/launcher2/MenuWidgets;Z)V

    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x1

    # invokes: Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuWidgets;->access$2500(Lcom/android/launcher2/MenuWidgets;Z)V

    return-void
.end method

.method public refreshModel()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    :cond_0
    return-void
.end method

.method public refreshQuickView(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickView;->setSecretQuickViewMode(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickView;->setSecretQuickViewMode(Z)V

    goto :goto_1
.end method

.method public refreshView()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic restore(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveCurrentPageOrder()V
    .locals 0

    return-void
.end method

.method public setPage(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method updateQuickView()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->loadLayoutParameters()V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    :cond_0
    return-void
.end method
