.class public Lcom/android/launcher2/PagedViewGridLayout;
.super Landroid/widget/GridLayout;
.source "PagedViewGridLayout.java"

# interfaces
.implements Lcom/android/launcher2/Page;


# instance fields
.field private mBitmapLoaderRunnable:Ljava/lang/Runnable;

.field private mCellCountX:I

.field private mCellCountY:I

.field private mPageType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mPageType:I

    iput p2, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountX:I

    iput p3, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountY:I

    iput-object v1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mBitmapLoaderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    check-cast v1, Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/PagedViewWidget;->drawShadow(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public disableHardwareLayers()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getBitmapLoaderRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mBitmapLoaderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method getCellCountX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountX:I

    return v0
.end method

.method getCellCountY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountY:I

    return v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageItemCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageType()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mPageType:I

    return v0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getPageItemCount()I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewGridLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeAllViewsOnPage()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->disableHardwareLayers()V

    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    instance-of v4, v3, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/PagedViewWidget;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    check-cast v3, Lcom/android/launcher2/PagedViewWidget;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setBitmapLoaderRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mBitmapLoaderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setPageType(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mPageType:I

    return-void
.end method
