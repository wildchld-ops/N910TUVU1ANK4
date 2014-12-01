.class Lcom/android/systemui/recent/RecentsPanelView$26;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12

    const/4 v1, 0x4

    const/4 v10, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x3

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->setRecentPanelBackground(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$5600(Lcom/android/systemui/recent/RecentsPanelView;I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v0, v10}, Lcom/android/systemui/recent/RecentsPanelView;->access$8302(Lcom/android/systemui/recent/RecentsPanelView;I)I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mTriggerBy:I
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$7900(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v10

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v11}, Lcom/android/systemui/recent/RecentsPanelView;->access$8500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v5, v10, v4, v0}, Lcom/android/systemui/recent/multiwindow/AppListController;->isFullGuideLine(IZLcom/android/systemui/recent/TaskDescription;)Z

    move-result v0

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mFullGuideRect:Z
    invoke-static {v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8402(Lcom/android/systemui/recent/RecentsPanelView;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/recent/multiwindow/AppListController;->isFullGuideLine(I)Z

    move-result v1

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mFullGuideRect:Z
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$8402(Lcom/android/systemui/recent/RecentsPanelView;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsSupportMultiWindow:Z
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$7100(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mFullGuideRect:Z
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8400(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recent/multiwindow/AppListController;->getCurrentGuideRect(II)Landroid/graphics/Rect;

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayOrientation:I
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8600(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget v1, v9, Landroid/graphics/Rect;->top:I

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$8302(Lcom/android/systemui/recent/RecentsPanelView;I)I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v5, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/systemui/recent/multiwindow/AppListController;->getRectByZone(I)Landroid/graphics/Rect;

    move-result-object v9

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget v1, v9, Landroid/graphics/Rect;->left:I

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$8302(Lcom/android/systemui/recent/RecentsPanelView;I)I

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsSupportMultiWindow:Z
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$7100(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mFullGuideRect:Z
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8400(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recent/multiwindow/AppListController;->getCurrentGuideRect(II)Landroid/graphics/Rect;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayOrientation:I
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8600(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v0

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8300(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v0

    iget v1, v9, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget v1, v9, Landroid/graphics/Rect;->top:I

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$8302(Lcom/android/systemui/recent/RecentsPanelView;I)I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIvt:[B
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$8100(Lcom/android/systemui/recent/RecentsPanelView;)[B

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v5, v5, Lcom/android/systemui/recent/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v5}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v5, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/systemui/recent/multiwindow/AppListController;->getRectByZone(I)Landroid/graphics/Rect;

    move-result-object v9

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8300(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v0

    iget v1, v9, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget v1, v9, Landroid/graphics/Rect;->left:I

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$8302(Lcom/android/systemui/recent/RecentsPanelView;I)I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIvt:[B
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$8100(Lcom/android/systemui/recent/RecentsPanelView;)[B

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v5, v5, Lcom/android/systemui/recent/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v5}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto :goto_4

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$8000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mPenWindowLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$7200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsMultiWindow:Z
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$5500(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x2

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->setRecentPanelBackground(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$5600(Lcom/android/systemui/recent/RecentsPanelView;I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->startAppListShowAnimation()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6000(Lcom/android/systemui/recent/RecentsPanelView;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->setRecentPanelBackground(I)V
    invoke-static {v0, v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$5600(Lcom/android/systemui/recent/RecentsPanelView;I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->startRecentListShowAnimation()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6200(Lcom/android/systemui/recent/RecentsPanelView;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mTriggerBy:I
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$7900(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v0

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$8500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v10, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v10}, Lcom/android/systemui/recent/RecentsPanelView;->access$8500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recent/multiwindow/AppListController;->startActivity(IIIZLcom/android/systemui/recent/TaskDescription;)Z

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissAndGoBack()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/multiwindow/AppListController;->startActivity(III)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$5900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$26;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissAndGoBack()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
