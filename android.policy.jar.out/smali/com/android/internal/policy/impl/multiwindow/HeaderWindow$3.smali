.class Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;
.super Ljava/lang/Object;
.source "HeaderWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->show(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const v3, 0x108065a

    const/4 v2, 0x7

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->isInputMethodShowing()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mStatusBarHeight:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mConsumeTouchEvent:Z
    invoke-static {v0, v5}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1602(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->forceHideInputMethod()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1700(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x108065d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstX:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$702(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstY:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$902(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->init()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->validateGuideView()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTouchDownListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTouchDownListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;->onTouchDown()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastX:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastY:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v2, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mConsumeTouchEvent:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastX:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$602(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastY:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$802(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoving:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIsDockingCanceled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastX:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastY:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->updateZone(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/os/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIvt:[B
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$100(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/os/SystemVibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->validateGuideView()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    const v1, 0x1080681

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIIIZ)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIsDockingCanceled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingX:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingMargin:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2100(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v1

    if-gt v0, v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingY:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingMargin:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2100(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v1

    if-le v0, v1, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIsDockingCanceled:Z
    invoke-static {v0, v10}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1002(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    const v1, 0x108068a

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    const v1, 0x1080673

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastX:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$700(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastY:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstY:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismissGuide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mConsumeTouchEvent:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mConsumeTouchEvent:Z
    invoke-static {v0, v10}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1602(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIsDockingCanceled:Z
    invoke-static {v0, v10}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1002(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->clear()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoving:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoveListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "HeaderWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindow StyleChanaged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getZone()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkCenterBarPoint()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoveListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getZone()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;->onMove(Landroid/graphics/Rect;I)V

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoving:Z
    invoke-static {v0, v10}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2002(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstX:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$700(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstY:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    const-string v0, "HeaderWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindow StyleChanaged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoveListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$2300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;->onMove(Landroid/graphics/Rect;I)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
