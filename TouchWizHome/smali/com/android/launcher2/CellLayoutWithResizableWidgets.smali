.class public Lcom/android/launcher2/CellLayoutWithResizableWidgets;
.super Lcom/android/launcher2/CellLayout;
.source "CellLayoutWithResizableWidgets.java"

# interfaces
.implements Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;
.implements Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;


# instance fields
.field private mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public canAcceptDrop(Lcom/android/launcher2/DragState;IIIZ)Z
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v16

    if-nez v16, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x1

    aget v7, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v12, 0x1

    :goto_1
    if-nez v12, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v14, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxSecretScreenCount()I

    move-result v2

    move/from16 v0, p4

    if-lt v0, v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    iget-boolean v2, v14, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v2, :cond_5

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    iget-boolean v2, v14, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v2, :cond_6

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    instance-of v2, v14, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    iput v6, v11, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v7, v11, Lcom/android/launcher2/HomeItem;->spanY:I

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aget v5, v2, v3

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    move-object/from16 v2, v18

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->onDrop()V

    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v17, v18

    check-cast v17, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget v3, v15, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v15, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual/range {v17 .. v17}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v8, v13, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v2, v3, v4, v5, v8}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public clearResizeFrame()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->realRemoveView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->setCurrentResizeWidgetItem(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    return v0
.end method

.method public findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z
    .locals 1

    invoke-super/range {p0 .. p6}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    return v0
.end method

.method public getDeltas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    new-instance v2, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v2, v1}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getNumColumns()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    return v0
.end method

.method public getNumRows()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v0

    return v0
.end method

.method public getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    return-object v0
.end method

.method protected invalidatePageIndicatorPreview()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iget-object v0, v1, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isPointInRegion(FF)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0
.end method

.method newCellPositioner()Lcom/android/launcher2/CellPositioner;
    .locals 1

    new-instance v0, Lcom/android/launcher2/CellPositionerWorkspace;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/launcher2/CellPositionerWorkspace;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;)V

    return-object v0
.end method

.method public noRoomForDrop(Lcom/android/launcher2/DragState;III)V
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    :goto_1
    const/high16 v10, -0x80000000

    const/4 v7, 0x1

    const/4 v11, 0x0

    add-int/lit8 v4, p2, 0x1

    :goto_2
    if-eqz v7, :cond_0

    if-lt v4, v9, :cond_0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :cond_0
    if-nez v7, :cond_5

    if-lt v4, p2, :cond_5

    if-nez v6, :cond_4

    :goto_3
    const/high16 v1, -0x80000000

    if-eq v1, v10, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage(Landroid/content/Context;)V

    if-nez v11, :cond_1

    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->removeCreatedPageForDrag()V

    :cond_1
    invoke-virtual {v12, v10}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :goto_4
    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    goto :goto_1

    :cond_4
    move v4, v9

    const/4 v6, 0x0

    const/4 v11, 0x1

    :cond_5
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_6

    instance-of v1, v8, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v1, :cond_6

    move-object v0, v8

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    const/4 v5, 0x0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->canAcceptDrop(Lcom/android/launcher2/DragState;IIIZ)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->commitDeltas()V

    move v10, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->showNoRoomAnyPageMessage(Landroid/content/Context;)V

    goto :goto_4
.end method

.method notifyWidgetsOfPageScroll(IIII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/launcher2/CellLayoutChildren;->notifyWidgetsOfPageScroll(IIII)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->onDragExit()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public onDragExit()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    return-void
.end method

.method public onPreDeltaVisualize(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->onPreDeltaVisualize(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method rearrangeWorkspaceForSpace(Lcom/android/launcher2/BaseItem;IIII)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v1, p1}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v1, p2}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    invoke-virtual {v1, p3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    invoke-virtual {v1, p4}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    invoke-virtual {v1, p5}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v2, 0x0

    move v3, p4

    move v4, p5

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/CellPositioner;->updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;Lcom/android/launcher2/WidgetSizes;IIZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v2}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DeltaVisualizer;->updateForDeltas(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositioner;->resetDragDelta()V

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method public setResizeFrame(Landroid/view/View;Ljava/lang/Runnable;Lcom/android/launcher2/Workspace$State;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq p3, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    new-instance v2, Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1, p0}, Lcom/android/launcher2/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher2/HomeItem;Landroid/view/View;Lcom/android/launcher2/CellLayoutWithResizableWidgets;)V

    iput-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    new-instance v3, Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;-><init>(Lcom/android/launcher2/CellLayoutWithResizableWidgets;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(Z)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/HomeView;->setCurrentResizeWidgetItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method
