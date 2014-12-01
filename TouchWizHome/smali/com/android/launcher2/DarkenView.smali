.class public Lcom/android/launcher2/DarkenView;
.super Landroid/view/View;
.source "DarkenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DarkenView$Drawer;
    }
.end annotation


# instance fields
.field final mDrawer:Lcom/android/launcher2/DarkenView$Drawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DarkenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/launcher2/DarkenView$Drawer;

    invoke-direct {v0}, Lcom/android/launcher2/DarkenView$Drawer;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DarkenView;->mDrawer:Lcom/android/launcher2/DarkenView$Drawer;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DarkenView;->mDrawer:Lcom/android/launcher2/DarkenView$Drawer;

    invoke-static {p1, v0}, Lcom/android/launcher2/DrawGLFunction;->call(Landroid/graphics/Canvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/android/launcher2/DarkenView;->mDrawer:Lcom/android/launcher2/DarkenView$Drawer;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DarkenView;->mDrawer:Lcom/android/launcher2/DarkenView$Drawer;

    # getter for: Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F
    invoke-static {v0}, Lcom/android/launcher2/DarkenView$Drawer;->access$000(Lcom/android/launcher2/DarkenView$Drawer;)F

    move-result v0

    return v0
.end method

.method public onSetAlpha(I)Z
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DarkenView;->mDrawer:Lcom/android/launcher2/DarkenView$Drawer;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000

    div-float/2addr v1, v2

    # setter for: Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F
    invoke-static {v0, v1}, Lcom/android/launcher2/DarkenView$Drawer;->access$002(Lcom/android/launcher2/DarkenView$Drawer;F)F

    goto :goto_0
.end method
