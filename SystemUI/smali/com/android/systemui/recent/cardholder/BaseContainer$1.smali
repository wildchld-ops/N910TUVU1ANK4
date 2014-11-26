.class Lcom/android/systemui/recent/cardholder/BaseContainer$1;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/cardholder/BaseContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialPos:F

.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollDistance(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->initialPos:F

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iput-boolean v3, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mFingerOnDisplay:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/MotionEvent;
    .param p3    # F
    .param p4    # F

    const v6, 0x7fffffff

    const/4 v10, 0x1

    const/high16 v5, -0x80000000

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    # getter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissDimLayerAnimating:Z
    invoke-static {v0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$100(Lcom/android/systemui/recent/cardholder/BaseContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    # getter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissScrollAnimating:Z
    invoke-static {v0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$200(Lcom/android/systemui/recent/cardholder/BaseContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-virtual {v0, p3, p4}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollVelocity(FF)F

    move-result v9

    const/high16 v0, 0x467a0000

    cmpl-float v0, v9, v0

    if-lez v0, :cond_3

    const/high16 v9, 0x467a0000

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    float-to-int v4, v9

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->mover:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/high16 v0, -0x39860000

    cmpg-float v0, v9, v0

    if-gez v0, :cond_2

    const/high16 v9, -0x39860000

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/MotionEvent;
    .param p3    # F
    .param p4    # F

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    # getter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissDimLayerAnimating:Z
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$100(Lcom/android/systemui/recent/cardholder/BaseContainer;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    # getter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissScrollAnimating:Z
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$200(Lcom/android/systemui/recent/cardholder/BaseContainer;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-virtual {v3, p3, p4}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollDistance(FF)F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-boolean v3, v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->mScrolling:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollDistance(FF)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->initialPos:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    # getter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mPagingTouchSlop:I
    invoke-static {v4}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$300(Lcom/android/systemui/recent/cardholder/BaseContainer;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iput-boolean v2, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->mScrolling:Z

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    neg-float v3, v0

    invoke-virtual {v1, v3}, Lcom/android/systemui/recent/cardholder/BaseContainer;->doScroll(F)Z

    move v1, v2

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$1;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    # getter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mCallback:Lcom/android/systemui/recent/cardholder/RecentsCallback;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$000(Lcom/android/systemui/recent/cardholder/BaseContainer;)Lcom/android/systemui/recent/cardholder/RecentsCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/recent/cardholder/RecentsCallback;->dismiss()V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
