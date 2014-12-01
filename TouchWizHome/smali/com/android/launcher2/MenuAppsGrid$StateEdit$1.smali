.class Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateEdit;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateEdit;

.field final synthetic val$folder:Lcom/android/launcher2/Folder;

.field final synthetic val$item:Lcom/android/launcher2/FolderItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateEdit;Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->val$folder:Lcom/android/launcher2/Folder;

    iput-object p3, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->val$item:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->val$folder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->val$item:Lcom/android/launcher2/FolderItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->val$folder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Folder;->close(ZZ)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->val$item:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, v2}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->val$folder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonFromHomeView(Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method
