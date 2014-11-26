.class Lcom/android/launcher2/CellLayoutChildren$1;
.super Ljava/lang/Object;
.source "CellLayoutChildren.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayoutChildren;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutChildren;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutChildren;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren$1;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;

    check-cast p1, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutChildren$1;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/WorkspacePages;->itemAddedToPage(ILandroid/content/Context;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren$1;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2, p2}, Lcom/android/launcher2/CellLayoutChildren;->onViewAddedInCLC(Landroid/view/View;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidgetView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren$1;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2, p2}, Lcom/android/launcher2/CellLayoutChildren;->onViewRemovedInCLC(Landroid/view/View;)V

    return-void
.end method
