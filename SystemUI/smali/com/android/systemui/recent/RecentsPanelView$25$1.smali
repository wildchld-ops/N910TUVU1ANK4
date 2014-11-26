.class Lcom/android/systemui/recent/RecentsPanelView$25$1;
.super Landroid/view/View$DragShadowBuilder;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView$25;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recent/RecentsPanelView$25;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView$25;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$25$1;->this$1:Lcom/android/systemui/recent/RecentsPanelView$25;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$25$1;->this$1:Lcom/android/systemui/recent/RecentsPanelView$25;

    iget-object v1, v1, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListGridView:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayGridView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$7800(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$25$1;->this$1:Lcom/android/systemui/recent/RecentsPanelView$25;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1    # Landroid/graphics/Point;
    .param p2    # Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$25$1;->this$1:Lcom/android/systemui/recent/RecentsPanelView$25;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mShadowWidth:I
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$7602(Lcom/android/systemui/recent/RecentsPanelView;I)I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$25$1;->this$1:Lcom/android/systemui/recent/RecentsPanelView$25;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mShadowHeight:I
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$7702(Lcom/android/systemui/recent/RecentsPanelView;I)I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$25$1;->this$1:Lcom/android/systemui/recent/RecentsPanelView$25;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mShadowWidth:I
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$7600(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$25$1;->this$1:Lcom/android/systemui/recent/RecentsPanelView$25;

    iget-object v1, v1, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mShadowHeight:I
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$7700(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$25$1;->this$1:Lcom/android/systemui/recent/RecentsPanelView$25;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mShadowWidth:I
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$7600(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$25$1;->this$1:Lcom/android/systemui/recent/RecentsPanelView$25;

    iget-object v1, v1, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mShadowHeight:I
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$7700(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
