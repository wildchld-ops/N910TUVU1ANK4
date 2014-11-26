.class abstract Lcom/android/launcher2/MenuAppsGrid$StateObj;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "StateObj"
.end annotation


# instance fields
.field protected mHasEntered:Z

.field protected mLastStatesSavedCurrentPage:I

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    return-void
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
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
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
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
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

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

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateObj::getAppsList() item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onAppModelUpdated()V
    .locals 0

    return-void
.end method

.method public abstract onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/FolderItem;
    .param p2    # Lcom/android/launcher2/Folder;

    return-void
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 1
    .param p1    # Landroid/os/Bundle;

    const/4 v0, 0x1

    return v0
.end method

.method protected restoreLastStatesCurrentPage()V
    .locals 3

    const/high16 v2, -0x80000000

    iget v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->initCurrentPage(I)V

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    :cond_0
    return-void
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    return-void
.end method

.method protected saveLastStatesCurrentPage()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    return-void
.end method
