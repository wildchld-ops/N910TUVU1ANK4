.class public Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TwGLGridList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLGridList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwGLListGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLGridList;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLGridList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/high16 v3, 0x42c80000

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    # getter for: Lcom/sec/android/glview/TwGLGridList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLGridList;->access$100(Lcom/sec/android/glview/TwGLGridList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    div-float v1, p4, v3

    # setter for: Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLGridList;->access$202(Lcom/sec/android/glview/TwGLGridList;F)F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    # invokes: Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z
    invoke-static {v0}, Lcom/sec/android/glview/TwGLGridList;->access$400(Lcom/sec/android/glview/TwGLGridList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    # setter for: Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F
    invoke-static {v0, v2}, Lcom/sec/android/glview/TwGLGridList;->access$202(Lcom/sec/android/glview/TwGLGridList;F)F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    # getter for: Lcom/sec/android/glview/TwGLGridList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLGridList;->access$100(Lcom/sec/android/glview/TwGLGridList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    div-float v1, p3, v3

    # setter for: Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLGridList;->access$302(Lcom/sec/android/glview/TwGLGridList;F)F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    # invokes: Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z
    invoke-static {v0}, Lcom/sec/android/glview/TwGLGridList;->access$400(Lcom/sec/android/glview/TwGLGridList;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    # setter for: Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F
    invoke-static {v0, v2}, Lcom/sec/android/glview/TwGLGridList;->access$302(Lcom/sec/android/glview/TwGLGridList;F)F

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLGridList;->showScrollBar()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v0, 0x1

    const/high16 v6, 0x41200000

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    # getter for: Lcom/sec/android/glview/TwGLGridList;->mScroll:I
    invoke-static {v1}, Lcom/sec/android/glview/TwGLGridList;->access$100(Lcom/sec/android/glview/TwGLGridList;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    mul-float v1, p4, v6

    neg-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    # setter for: Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLGridList;->access$202(Lcom/sec/android/glview/TwGLGridList;F)F

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    # getter for: Lcom/sec/android/glview/TwGLGridList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLGridList;->access$100(Lcom/sec/android/glview/TwGLGridList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    mul-float v1, p3, v6

    neg-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    # setter for: Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLGridList;->access$302(Lcom/sec/android/glview/TwGLGridList;F)F

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLGridList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLGridList;->showScrollBar()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method
