.class Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return v8

    :pswitch_0
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v6, v8}, Landroid/widget/RemoteViews;->access$1202(Landroid/widget/RemoteViews;I)I

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mDownTouchX:F
    invoke-static {v6, v4}, Landroid/widget/RemoteViews;->access$1302(Landroid/widget/RemoteViews;F)F

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mDownTouchY:F
    invoke-static {v6, v5}, Landroid/widget/RemoteViews;->access$1402(Landroid/widget/RemoteViews;F)F

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_1

    # invokes: Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/widget/RemoteViews;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v7, v7, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1, v7, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto :goto_0

    :cond_1
    :pswitch_1
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v6}, Landroid/widget/RemoteViews;->access$1200(Landroid/widget/RemoteViews;)I

    move-result v6

    if-ne v6, v8, :cond_0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    if-lez v6, :cond_3

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchX:F
    invoke-static {v6}, Landroid/widget/RemoteViews;->access$1300(Landroid/widget/RemoteViews;)F

    move-result v6

    sub-float/2addr v6, v4

    iget-object v7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v7, v7, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    const/4 v3, 0x1

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v1, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    # invokes: Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/widget/RemoteViews;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v6, p1, v1, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v6, v9}, Landroid/widget/RemoteViews;->access$1202(Landroid/widget/RemoteViews;I)I

    goto :goto_0

    :cond_3
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    if-lez v6, :cond_4

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchY:F
    invoke-static {v6}, Landroid/widget/RemoteViews;->access$1400(Landroid/widget/RemoteViews;)F

    move-result v6

    sub-float/2addr v6, v5

    iget-object v7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v7, v7, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    const/4 v3, 0x1

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v1, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    goto :goto_1

    :cond_4
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    if-lez v6, :cond_5

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchX:F
    invoke-static {v6}, Landroid/widget/RemoteViews;->access$1300(Landroid/widget/RemoteViews;)F

    move-result v6

    sub-float v6, v4, v6

    iget-object v7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v7, v7, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    const/4 v3, 0x1

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v1, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    goto :goto_1

    :cond_5
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    if-lez v6, :cond_2

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchY:F
    invoke-static {v6}, Landroid/widget/RemoteViews;->access$1400(Landroid/widget/RemoteViews;)F

    move-result v6

    sub-float v6, v5, v6

    iget-object v7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v7, v7, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    const/4 v3, 0x1

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v1, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    goto :goto_1

    :pswitch_2
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v6, v9}, Landroid/widget/RemoteViews;->access$1202(Landroid/widget/RemoteViews;I)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
