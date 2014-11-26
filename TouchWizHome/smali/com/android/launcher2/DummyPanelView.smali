.class Lcom/android/launcher2/DummyPanelView;
.super Landroid/view/View;
.source "DummyPanelView.java"


# instance fields
.field layout:Lcom/android/launcher2/CellLayout;

.field private mMat:Landroid/graphics/Matrix;

.field panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DummyPanelView;->mMat:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/DummyPanelView;->layout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DummyPanelView;->layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DummyPanelView;->layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DummyPanelView;->layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DummyPanelView;->layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->updatePageTransforms()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher2/DummyPanelView;->layout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/DummyPanelView;->mMat:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->getAbsMatrix(Landroid/graphics/Matrix;Landroid/view/ViewParent;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    iget-object v0, p0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method
