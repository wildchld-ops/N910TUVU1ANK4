.class Lcom/android/launcher2/CellLayoutMenu$1;
.super Ljava/lang/Object;
.source "CellLayoutMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutMenu;->onDragEvent(Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutMenu;

.field final synthetic val$appItem:Lcom/android/launcher2/AppItem;

.field final synthetic val$mv:Lcom/android/launcher2/MenuView;

.field final synthetic val$parent:Landroid/view/ViewParent;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutMenu;Lcom/android/launcher2/MenuView;Landroid/view/ViewParent;Lcom/android/launcher2/AppItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutMenu$1;->this$0:Lcom/android/launcher2/CellLayoutMenu;

    iput-object p2, p0, Lcom/android/launcher2/CellLayoutMenu$1;->val$mv:Lcom/android/launcher2/MenuView;

    iput-object p3, p0, Lcom/android/launcher2/CellLayoutMenu$1;->val$parent:Landroid/view/ViewParent;

    iput-object p4, p0, Lcom/android/launcher2/CellLayoutMenu$1;->val$appItem:Lcom/android/launcher2/AppItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v3, "CellLayoutMenu"

    const-string v4, "item removed from folder; appModelUpdated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMenu$1;->val$mv:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->closeFolders()V

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMenu$1;->val$mv:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMenu$1;->val$parent:Landroid/view/ViewParent;

    instance-of v3, v3, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutMenu$1;->val$parent:Landroid/view/ViewParent;

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid;

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutMenu$1;->val$appItem:Lcom/android/launcher2/AppItem;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getMaxItemsPerScreen()I

    move-result v4

    div-int v2, v3, v4

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    :cond_0
    return-void
.end method
