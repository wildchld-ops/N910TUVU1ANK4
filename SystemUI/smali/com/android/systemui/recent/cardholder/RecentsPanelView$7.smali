.class Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/cardholder/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 24

    new-instance v16, Landroid/util/DisplayMetrics;

    invoke-direct/range {v16 .. v16}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual/range {v15 .. v16}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    # setter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3202(Lcom/android/systemui/recent/cardholder/RecentsPanelView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    # setter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3302(Lcom/android/systemui/recent/cardholder/RecentsPanelView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v4, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v5, v2

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    const v22, 0x3f333333

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v22

    float-to-int v0, v2

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v22

    float-to-int v0, v2

    move/from16 v17, v0

    div-int/lit8 v2, v23, 0x2

    sub-int v8, v4, v2

    div-int/lit8 v2, v17, 0x2

    sub-int v9, v5, v2

    packed-switch v14, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x108068a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v17

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    div-int/lit8 v3, v23, 0x2

    sub-int v3, v4, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    div-int/lit8 v3, v17, 0x2

    sub-int v3, v5, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    const/4 v3, 0x0

    # setter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3602(Lcom/android/systemui/recent/cardholder/RecentsPanelView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mTriggerBy:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3700(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v7

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v11}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-virtual {v6, v7, v10, v2}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isFullGuideLine(IZLcom/android/systemui/recent/cardholder/TaskDescription;)Z

    move-result v2

    # setter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mFullGuideRect:Z
    invoke-static {v3, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3802(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Z)Z

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isFullGuideLine(I)Z

    move-result v3

    # setter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mFullGuideRect:Z
    invoke-static {v2, v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3802(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Z)Z

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mFullGuideRect:Z
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getCurrentGuideRect(II)Landroid/graphics/Rect;

    move-result-object v21

    :goto_1
    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayOrientation:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->top:I

    # setter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3602(Lcom/android/systemui/recent/cardholder/RecentsPanelView;I)I

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getRectByZone(I)Landroid/graphics/Rect;

    move-result-object v21

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->left:I

    # setter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3602(Lcom/android/systemui/recent/cardholder/RecentsPanelView;I)I

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    div-int/lit8 v3, v23, 0x2

    sub-int v3, v4, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    div-int/lit8 v3, v17, 0x2

    sub-int v3, v5, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mFullGuideRect:Z
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getCurrentGuideRect(II)Landroid/graphics/Rect;

    move-result-object v21

    :goto_2
    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayOrientation:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3600(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->top:I

    # setter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3602(Lcom/android/systemui/recent/cardholder/RecentsPanelView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    iget-object v2, v2, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mIvt:[B
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    iget-object v6, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayOrientation:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    int-to-float v2, v5

    const v3, 0x3d8f5c29

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5

    int-to-float v2, v5

    const v3, 0x3f6e147b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7$1;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x108068a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->getRectByZone(I)Landroid/graphics/Rect;

    move-result-object v21

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3600(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->left:I

    # setter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineTopPos:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3602(Lcom/android/systemui/recent/cardholder/RecentsPanelView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    iget-object v2, v2, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mIvt:[B
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    iget-object v6, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    int-to-float v2, v4

    const v3, 0x3d8f5c29

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_a

    int-to-float v2, v4

    const v3, 0x3f6e147b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7$2;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x108068a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mPositionGuideline:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayOrientation:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    int-to-float v2, v5

    const v3, 0x3d8f5c29

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_c

    int-to-float v2, v5

    const v3, 0x3f6e147b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v3

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v10}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivity(IIIZLcom/android/systemui/recent/cardholder/TaskDescription;)Z

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismissAndGoHome()V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mStatusBarHeight:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    if-ge v9, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mStatusBarHeight:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v9

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v7

    add-int v10, v8, v23

    add-int v11, v9, v17

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivity(IIIIIZLcom/android/systemui/recent/cardholder/TaskDescription;)Z

    goto :goto_4

    :cond_f
    int-to-float v2, v4

    const v3, 0x3d8f5c29

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_10

    int-to-float v2, v4

    const v3, 0x3f6e147b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v3

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v10}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivity(IIIZLcom/android/systemui/recent/cardholder/TaskDescription;)Z

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mStatusBarHeight:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    if-ge v9, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mStatusBarHeight:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$4400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v9

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v7

    add-int v10, v8, v23

    add-int v11, v9, v17

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->startActivity(IIIIIZLcom/android/systemui/recent/cardholder/TaskDescription;)Z

    goto/16 :goto_4

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
