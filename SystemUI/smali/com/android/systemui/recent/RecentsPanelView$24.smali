.class Lcom/android/systemui/recent/RecentsPanelView$24;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$24;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/16 v8, 0xca

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v5, 0x0

    return v5

    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$24;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v5, v5, Lcom/android/systemui/recent/RecentsPanelView;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$24;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mCurrentDownView:Landroid/view/View;
    invoke-static {v5, p1}, Lcom/android/systemui/recent/RecentsPanelView;->access$002(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$24;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$6702(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$24;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v5, v5, Lcom/android/systemui/recent/RecentsPanelView;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$24;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$6700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v5, v3, v5

    float-to-int v0, v5

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$24;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$6700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v5, v4, v5

    float-to-int v1, v5

    mul-int v5, v0, v0

    mul-int v6, v1, v1

    add-int v2, v5, v6

    const/16 v5, 0x3e8

    if-le v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$24;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v5, v5, Lcom/android/systemui/recent/RecentsPanelView;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$24;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v5, v5, Lcom/android/systemui/recent/RecentsPanelView;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
