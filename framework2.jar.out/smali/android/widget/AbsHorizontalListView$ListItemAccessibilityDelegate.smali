.class Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View$AccessibilityDelegate;->createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/os/Bundle;

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    if-eq v3, v7, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    sparse-switch p2, :sswitch_data_0

    move v4, v5

    goto :goto_0

    :sswitch_0
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v3, :cond_5

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5, v7}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-eq v6, v3, :cond_6

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, p1, v3, v1, v2}, Landroid/widget/AbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_7
    move v4, v5

    goto :goto_0

    :sswitch_3
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, p1, v3, v1, v2}, Landroid/widget/AbsHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_8
    move v4, v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
