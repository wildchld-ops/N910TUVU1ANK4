.class Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetStateSearch"
.end annotation


# instance fields
.field private mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method


# virtual methods
.method public closeKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsSearch;->closeKeyboard()V

    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 7
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

    new-instance v4, Lcom/android/launcher2/MenuWidgetsSearch;

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;
    invoke-static {v5}, Lcom/android/launcher2/MenuWidgets;->access$100(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgetsFragment;->getTabHost()Lcom/android/launcher2/MenuView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {v4, v5, v6}, Lcom/android/launcher2/MenuWidgetsSearch;-><init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuWidgets;)V

    iput-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v4, p1, p2}, Lcom/android/launcher2/MenuWidgetsSearch;->enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x7f0900a3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v4, "all_apps_button_icon"

    invoke-virtual {v2, v4}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/MenuWidgetsSearch;->exit(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    :cond_0
    return-void
.end method

.method public getSearchState()Lcom/android/launcher2/MenuWidgetsSearch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    return-object v0
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 1

    instance-of v0, p2, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    check-cast p2, Lcom/android/launcher2/WidgetFolderView;

    # invokes: Lcom/android/launcher2/MenuWidgets;->openWidgetFolder(Lcom/android/launcher2/WidgetFolderView;)V
    invoke-static {v0, p2}, Lcom/android/launcher2/MenuWidgets;->access$1800(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    # invokes: Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V

    goto :goto_0
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->restore(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->save(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
