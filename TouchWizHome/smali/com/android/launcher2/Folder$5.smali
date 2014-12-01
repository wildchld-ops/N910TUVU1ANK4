.class Lcom/android/launcher2/Folder$5;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mFolderAddItemButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v6, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v6, v6, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuAppsGrid;->setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V

    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v5, v2, v2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5, v4}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    :goto_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonFromHomeView(Z)V

    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuAppsGrid;->setFolderTitletoAddButton(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher2/MenuAppsGrid;->setFolderColorToAddButton(I)V

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v5}, Lcom/android/launcher2/Folder;->access$200(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/HomeView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v6, v6, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/HomeView;->setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_3

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_3
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->resetPreCheckedItems()V

    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v6, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v6, v6, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6, v1}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v6

    # setter for: Lcom/android/launcher2/Folder;->child:Lcom/android/launcher2/BaseItem;
    invoke-static {v5, v6}, Lcom/android/launcher2/Folder;->access$302(Lcom/android/launcher2/Folder;Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/BaseItem;

    iget-object v5, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->child:Lcom/android/launcher2/BaseItem;
    invoke-static {v5}, Lcom/android/launcher2/Folder;->access$300(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/BaseItem;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonState(Lcom/android/launcher2/BaseItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    sput-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->showAllApps()V

    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {}, Lcom/android/launcher2/FolderIconView;->getMenuAppsGridFragment()Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v5

    # setter for: Lcom/android/launcher2/Folder;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v4, v5}, Lcom/android/launcher2/Folder;->access$402(Lcom/android/launcher2/Folder;Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGridFragment;

    iget-object v4, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v4}, Lcom/android/launcher2/Folder;->access$400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v4}, Lcom/android/launcher2/Folder;->access$400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v4}, Lcom/android/launcher2/Folder;->access$400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v4}, Lcom/android/launcher2/Folder;->access$400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_0
.end method
