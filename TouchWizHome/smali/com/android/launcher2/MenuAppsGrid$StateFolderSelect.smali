.class public Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateFolderSelect"
.end annotation


# static fields
.field private static final SELECTED_FOLDER_ID:Ljava/lang/String; = "SELECTED_FOLDER_ID"

.field private static final UNSPECIFIED:J = -0x1L


# instance fields
.field private ModifyAppsList:Z

.field public mActionCancel:Z

.field public mEnterPage:I

.field private mOriginPage:I

.field private mPageZoom:F

.field private mTargetFolderId:J

.field private needToSyncAppsList:Z

.field private prevState:Lcom/android/launcher2/MenuAppsGrid$State;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->needToSyncAppsList:Z

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mPageZoom:F

    return-void
.end method

.method static synthetic access$5702(Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;J)J
    .locals 0
    .param p0    # Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    return-wide p1
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
    .param p1    # Ljava/util/List;

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    return-void
.end method

.method public backState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->complete()V

    return-void
.end method

.method protected complete()V
    .locals 15

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v11, v11, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->getCheckedItems()Ljava/util/List;

    move-result-object v7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    const/4 v1, 0x0

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$4300(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AppItem;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    if-nez v11, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    sget-boolean v11, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    iget-object v11, v11, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11, v3}, Lcom/android/launcher2/HomeView;->addShortcutItemsIntoNewFolder(Ljava/util/List;)V

    :goto_2
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v11

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$4300(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->clear()V

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    :cond_4
    :goto_3
    return-void

    :cond_5
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    iget-object v11, v11, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11, v3}, Lcom/android/launcher2/HomeView;->addShortcutItemsIntoExistingFolder(Ljava/util/List;)V

    goto :goto_2

    :cond_6
    sget-boolean v11, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppsGrid;->getFolderTitletoAddButton()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v14, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getFolderColorToAddButton()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/launcher2/MenuAppsGrid;->preCreateFolder(Ljava/lang/String;Lcom/android/launcher2/MenuAppsGrid$State;I)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v7, 0x0

    iget-boolean v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$4300(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;

    move-result-object v7

    :goto_4
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    invoke-interface {v10, v6}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$5300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/launcher2/BaseItem;->mDirty:Z

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->getCheckedItems()Ljava/util/List;

    move-result-object v7

    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    const-wide/16 v11, -0x1

    iput-wide v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    sget-object v11, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    move-object v6, v10

    check-cast v6, Lcom/android/launcher2/AppItem;

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    sget-boolean v11, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v11, :cond_b

    iget-boolean v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    if-eqz v11, :cond_b

    sget-object v11, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    :cond_b
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    sget-object v11, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v11, v12, :cond_c

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    sget-object v11, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    :goto_6
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$5300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v11, v12, :cond_d

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-wide v12, v6, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher2/PagedView;->getPageIndexForItemId(J)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_4

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v11

    if-eq v8, v11, :cond_4

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11, v8}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto/16 :goto_3

    :cond_c
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_6

    :cond_d
    iget v11, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mOriginPage:I

    if-ne v11, v12, :cond_e

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v12, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v12, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto/16 :goto_3

    :cond_e
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v12, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v11, v12}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto/16 :goto_3
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 8
    .param p2    # Lcom/android/launcher2/MenuAppsGrid$State;
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

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mEnterPage:I

    iput v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mOriginPage:I

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getPageZoom()F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mPageZoom:F

    iget v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mPageZoom:F

    const/high16 v6, 0x3f800000

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4000()Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v5

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4100()Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v3, v3, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    if-eq v3, v4, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/android/launcher2/MenuAppsGrid;->setStartEditNormalPage(Z)V

    :cond_1
    :goto_1
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->needToSyncAppsList:Z

    :cond_2
    return-void

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    if-eq v3, v4, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Lcom/android/launcher2/MenuAppsGrid;->setStartEditNormalPage(Z)V

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mEnterPage:I

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getSecretPageCnt()I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mEnterPage:I

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2
.end method

.method public bridge synthetic enterItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .param p1    # Ljava/lang/Iterable;

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enterItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 4
    .param p2    # Lcom/android/launcher2/MenuAppsGrid$State;
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

    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mActionCancel:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    :cond_0
    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mPageZoom:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V
    invoke-static {v1, p1, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3800(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V

    iput v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mPageZoom:F

    :cond_1
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    :cond_2
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v1, v1, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-nez v1, :cond_3

    sput-boolean v2, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    :cond_3
    # setter for: Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3402(Z)Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v1, v1, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    return-void
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exitItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->needToSyncAppsList:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStartEditNormalPage()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/MenuAppModel;->getNormalItems(Z)Ljava/util/List;

    move-result-object v1

    :goto_0
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->needToSyncAppsList:Z

    :goto_1
    return-object v1

    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getSecretItems()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method public getTargetFolder()Lcom/android/launcher2/FolderItem;
    .locals 5

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/FolderItem;

    :cond_0
    return-object v1
.end method

.method public onAppModelUpdated()V
    .locals 5

    iget-wide v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 1
    .param p1    # Lcom/android/launcher2/AppItem;
    .param p2    # Landroid/view/View;

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onResume()V

    return-void
.end method

.method public bridge synthetic preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/AppItem;
    .param p2    # Landroid/view/View;

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/FolderItem;
    .param p2    # Lcom/android/launcher2/Folder;

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "SELECTED_FOLDER_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->restore(Landroid/os/Bundle;)Z

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->save(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "SELECTED_FOLDER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
