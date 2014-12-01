.class Landroid/widget/AbsHorizontalListView$CheckForLongPress;
.super Landroid/widget/AbsHorizontalListView$WindowRunnnable;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$CheckForLongPress;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v6, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v6, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v6, v6, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v7, v7, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v6, v6, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, v0, v4, v2, v3}, Landroid/widget/AbsHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v7, -0x1

    iput v7, v6, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, v8}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v7, 0x2

    iput v7, v6, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    goto :goto_0
.end method
