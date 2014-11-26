.class public Lcom/android/launcher2/CellLayoutNoGap;
.super Lcom/android/launcher2/CellLayout;
.source "CellLayoutNoGap.java"


# static fields
.field static final REORDER_ANIMATION_DURATION:I = 0xe6


# instance fields
.field protected isFolderPage:Z

.field private mCloseLayoutGapPosted:Z

.field protected mDisabled:Z

.field mDragOutline:Landroid/graphics/Bitmap;

.field mFolder:Lcom/android/launcher2/Folder;

.field private mForceReorder:Z

.field protected mHiddenItem:Lcom/android/launcher2/BaseItem;

.field private mPreviousTargetCell:I

.field private mReOrderingEnabled:Z

.field private mReorderAlarm:Lcom/android/launcher2/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field protected mReorderImmediately:Z

.field mTargetCell:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/launcher2/Alarm;

    invoke-direct {v0}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iput v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    iput v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->isFolderPage:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    new-instance v0, Lcom/android/launcher2/CellLayoutNoGap$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutNoGap$2;-><init>(Lcom/android/launcher2/CellLayoutNoGap;)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayoutNoGap;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/CellLayoutNoGap;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    return p1
.end method

.method private forceRealTimeReorder()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    return-void
.end method

.method private updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V
    .locals 8
    .param p1    # Lcom/android/launcher2/BaseItem;
    .param p2    # I

    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/PagedView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedView;

    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v0

    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    if-eq v0, v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v3

    instance-of v0, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_4
    const/16 v4, 0xe6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZ)Z

    goto :goto_1
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .param p1    # Lcom/android/launcher2/BaseItem;

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher2/FolderItem;->contains(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-interface {v0, p1, v1}, Lcom/android/launcher2/FolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelAllFolderAnimations()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method cancelRealTimeReorder()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    return-void
.end method

.method cellToPosition(II)I
    .locals 1
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method protected closeLayoutGap()V
    .locals 9

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->hasAnimatingChild()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    new-instance v6, Lcom/android/launcher2/CellLayoutNoGap$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/CellLayoutNoGap$1;-><init>(Lcom/android/launcher2/CellLayoutNoGap;)V

    const-wide/16 v7, 0x14

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v1

    if-ne v1, v7, :cond_4

    :cond_3
    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    iget-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findAllOccupiedCells()[Z

    move-result-object v4

    const/4 v5, -0x1

    add-int/lit8 v3, v1, 0x1

    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-boolean v6, v4, v3

    if-eqz v6, :cond_6

    move v5, v3

    :cond_5
    if-eq v5, v1, :cond_3

    if-eq v5, v7, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v2, v1}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method existsEmptyCell()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method existsEmptyCellIgnoreHidden()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findAllOccupiedCells()[Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v6

    mul-int v0, v5, v6

    new-array v3, v0, [Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    if-ltz v4, :cond_0

    if-ge v4, v0, :cond_0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public findDropLocation(IIILjava/lang/Object;)V
    .locals 14
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/Object;

    if-eqz p4, :cond_1

    check-cast p4, Lcom/android/launcher2/DragState;

    move-object/from16 v7, p4

    :goto_0
    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v7, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v12, v1, [I

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v1

    invoke-virtual {p0, v11}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v2

    invoke-virtual {p0, v1, v2, v12}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    :try_start_0
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v10

    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v2, 0x0

    aget v2, v10, v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v2

    add-int p1, v1, v2

    const/4 v1, 0x1

    aget v1, v12, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getHeightGap()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int p2, v1, v2

    :goto_2
    :pswitch_1
    const/4 v1, 0x2

    new-array v4, v1, [I

    move/from16 v0, p2

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPosition(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v9

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-nez v1, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_2
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-ge v1, v9, :cond_3

    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-gez v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-gez v1, :cond_7

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    :goto_3
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v2

    aput v2, v4, v1

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    if-nez v13, :cond_9

    const/4 v1, 0x0

    :goto_4
    iput-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    :cond_5
    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/FolderItem;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/FolderIconView;

    if-nez v1, :cond_0

    :cond_6
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto/16 :goto_1

    :catch_0
    move-exception v8

    const/4 v1, 0x0

    aget v1, v12, v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v2

    add-int p1, v1, v2

    const/4 v1, 0x1

    aget v1, v12, v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v2

    add-int p2, v1, v2

    goto/16 :goto_2

    :cond_7
    if-nez v9, :cond_8

    :goto_5
    iput v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    goto :goto_3

    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    sget v3, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {v13, v1, v2, v3}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findDropLocation(Landroid/view/DragEvent;)V
    .locals 4
    .param p1    # Landroid/view/DragEvent;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(IIILjava/lang/Object;)V

    return-void
.end method

.method public findFirstEmptySpace()I
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findAllOccupiedCells()[Z

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getCellXFromPos(I)I
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    return v0
.end method

.method getCellYFromPos(I)I
    .locals 4
    .param p1    # I

    int-to-double v0, p1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getContainerType()J
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getContainerType()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method hasAnimatingChild()Z
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v3, v5, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    return v3

    :cond_2
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/BaseItem;

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->hide(Lcom/android/launcher2/BaseItem;)V

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method isDraggingOverIcon()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReOrderingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    return v0
.end method

.method newCellPositioner()Lcom/android/launcher2/CellPositioner;
    .locals 1

    new-instance v0, Lcom/android/launcher2/CellPositionerNoGap;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellPositionerNoGap;-><init>(Lcom/android/launcher2/CellLayout;)V

    return-object v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 14
    .param p1    # Landroid/view/DragEvent;

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    move-object v0, v1

    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_5

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eq v1, p0, :cond_5

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v1, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_5

    iget-object v10, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v10, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(Landroid/view/DragEvent;)V

    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-ne v1, p0, :cond_7

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v1

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-eq v1, v4, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eq v9, v1, :cond_9

    invoke-virtual {v9}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_a
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    iget v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    if-eq v1, v4, :cond_10

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    iget v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v11

    if-eqz v11, :cond_d

    iget-object v1, v11, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-eq v1, p0, :cond_d

    invoke-virtual {v11}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget v4, v11, Lcom/android/launcher2/Folder;->mExpandDuration:I

    add-int/lit16 v4, v4, 0x320

    add-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    :goto_3
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    :cond_b
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/PagedView;

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    iget v5, v1, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    iget-object v1, v1, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->timePassed()I

    move-result v1

    sub-int v1, v5, v1

    add-int/lit16 v1, v1, 0xc8

    int-to-long v12, v1

    invoke-virtual {v4, v12, v13}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_3

    :cond_e
    instance-of v1, v8, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_3

    :cond_f
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_3

    :cond_10
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelAllFolderAnimations()V

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f00e9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_11
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_12

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutNoGap;->forceRealTimeReorder()V

    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v2

    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v4

    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onDrop()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onEnd()V

    sget-object v1, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    :cond_14
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_15
    iget-boolean v1, v0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-ne p0, v1, :cond_16

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->hide(Lcom/android/launcher2/BaseItem;)V

    iget v1, v0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->show(Lcom/android/launcher2/BaseItem;)V

    :goto_5
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/BaseItem;

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    :cond_0
    return-void
.end method

.method public onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V
    .locals 9
    .param p1    # Landroid/view/DragEvent;
    .param p2    # Lcom/android/launcher2/FolderIconView;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p2, v6, v6}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(IIILjava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    return-void

    :cond_0
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ne v2, v3, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    goto :goto_0
.end method

.method realTimeReorder()V
    .locals 7

    const/4 v6, -0x1

    iget-boolean v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->hasAnimatingChild()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v5, 0x14

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    if-eqz v2, :cond_0

    iget v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-eq v3, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v4

    if-eqz v4, :cond_0

    if-ne v0, v6, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find empty cell. This should never happen! Cell Occupancy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findAllOccupiedCells()[Z

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " item count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v6, v6, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    if-ne v3, v6, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Couldn\'t find target cell. This should never happen!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v3, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item in < was null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    add-int/lit8 v0, v0, 0x1

    :cond_6
    if-le v3, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item in > was null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    goto/16 :goto_0
.end method

.method public realTimeReorder(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .param p1    # Lcom/android/launcher2/BaseItem;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_3

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v1, p1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    :cond_3
    return v0
.end method

.method final setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V
    .locals 1
    .param p1    # Lcom/android/launcher2/CellLayout$LayoutParams;
    .param p2    # I

    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    return-void
.end method

.method public setEnableReOrdering(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    return-void
.end method

.method protected setItemLocation(Lcom/android/launcher2/BaseItem;II)V
    .locals 9
    .param p1    # Lcom/android/launcher2/BaseItem;
    .param p2    # I
    .param p3    # I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid position"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p1, p2}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v7, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v8, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    move v4, p2

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    :cond_1
    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 9
    .param p1    # Lcom/android/launcher2/BaseItem;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # J

    iput p6, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPosition(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    move-wide/from16 v2, p7

    move v4, p6

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    :cond_2
    return-void
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/BaseItem;

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->show(Lcom/android/launcher2/BaseItem;)V

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method updateCustomViewToCellLayout()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected updateViewToCellLayout(I)V
    .locals 8
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v1

    if-lez p1, :cond_0

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    mul-int/2addr v6, p1

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int v2, v6, v7

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateViewsToTheirItemPositions()V
    .locals 7

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v0

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v1

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v6, v0, :cond_2

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eq v6, v1, :cond_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    goto :goto_1

    :cond_3
    return-void
.end method
