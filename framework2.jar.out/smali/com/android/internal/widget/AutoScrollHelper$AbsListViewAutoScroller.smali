.class public Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
.super Lcom/android/internal/widget/AutoScrollHelper;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbsListViewAutoScroller"
.end annotation


# instance fields
.field private final mTarget:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 10

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    add-int v4, v1, v0

    if-lez p1, :cond_1

    if-lt v4, v3, :cond_2

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    if-gt v8, v9, :cond_2

    :cond_0
    :goto_0
    return v7

    :cond_1
    if-gez p1, :cond_0

    if-gtz v1, :cond_2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    if-gez v8, :cond_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public scrollTargetBy(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    return-void
.end method
