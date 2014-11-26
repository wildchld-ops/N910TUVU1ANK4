.class Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;
.super Ljava/lang/Object;
.source "HeaderWindow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$1;)V
    .locals 0
    .param p1    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p2    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$1;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoving:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2002(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/MotionEvent;
    .param p3    # F
    .param p4    # F

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoving:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2002(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    const v1, 0x108068a

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    const v1, 0x1080673

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/MotionEvent;
    .param p3    # F
    .param p4    # F

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoving:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2002(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z

    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->showMenu(Z)V

    return v1
.end method
