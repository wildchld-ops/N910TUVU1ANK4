.class public Lcom/android/mms/ui/TestVideoView;
.super Landroid/widget/VideoView;
.source "TestVideoView.java"


# instance fields
.field mLocation:[I

.field mParentScrollViewExists:Z

.field mParentScrollViewHeight:I

.field mParentScrollViewRect:Landroid/graphics/Rect;

.field mParentScrollViewWidth:I

.field final mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewWidth:I

    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    new-instance v0, Lcom/android/mms/ui/TestVideoView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TestVideoView$1;-><init>(Lcom/android/mms/ui/TestVideoView;)V

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewWidth:I

    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    new-instance v0, Lcom/android/mms/ui/TestVideoView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TestVideoView$1;-><init>(Lcom/android/mms/ui/TestVideoView;)V

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewWidth:I

    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    new-instance v0, Lcom/android/mms/ui/TestVideoView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TestVideoView$1;-><init>(Lcom/android/mms/ui/TestVideoView;)V

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/VideoView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/VideoView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewHeight:I

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    aget v4, v4, v5

    iget v5, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewWidth:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    aget v5, v5, v7

    iget v6, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewHeight:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    iput-boolean v7, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const-string v1, "TestVideoView"

    const-string v2, "Video View doesn\'t have a scrollView as a parent !! "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-boolean v5, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    goto :goto_1
.end method
