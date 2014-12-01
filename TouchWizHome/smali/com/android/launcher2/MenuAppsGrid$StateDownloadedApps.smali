.class Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateDownloadedApps"
.end annotation


# instance fields
.field private mLastPageIndex:I

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mLastPageIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method private determineLastPageIndex()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mLastPageIndex:I

    goto :goto_0
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

    const v7, 0x7f09009a

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->saveLastStatesCurrentPage()V

    :cond_0
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f009c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f00ac

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v6, :cond_2

    :goto_0
    invoke-virtual {v5, p1, v2, v4}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v4

    if-nez v4, :cond_1

    const v4, 0x7f0900a3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v4, "all_apps_button_icon"

    invoke-virtual {v3, v4}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mLastPageIndex:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/PagedView;->initCurrentPage(I)V

    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
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

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mLastPageIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restoreLastStatesCurrentPage()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    goto :goto_0
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

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getUninstallableApps()Ljava/util/List;

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

    const-string v4, "StateDownloadedApps::getAppsList() item count = "

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

.method public getLastPageIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->determineLastPageIndex()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->handleDownloadedAppsStateChange()V

    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 3

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/launcher2/PagedView;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    return v1
.end method

.method public setLastPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mLastPageIndex:I

    return-void
.end method
