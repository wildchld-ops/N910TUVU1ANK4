.class Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;
.super Landroid/widget/LinearLayout;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTabLayout"
.end annotation


# instance fields
.field private firstMoving:Z

.field private handled:Z

.field private interporation:I

.field private lastMoveX:I

.field private lastMoveY:I

.field public longPressed:Z

.field public moving:Z

.field private sipHiding:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->interporation:I

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->longPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->firstMoving:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->sipHiding:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomTabLayout::dispatchTouchEvent action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    if-eqz v2, :cond_8

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomTabLayout::handled ev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1

    :pswitch_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->longPressed:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->sipHiding:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->sipHiding:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->longPressed:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->tab_action_move(II)V

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->sipHiding:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->sipHiding:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->init()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/GuideView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/GuideView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/GuideView;->setType(I)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->tab_action_down(II)V

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveX:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->interporation:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveY:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->interporation:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->tab_action_move(II)V

    :cond_6
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->longPressed:Z

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->tab_action_up(II)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->tab_action_up(II)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomTabLayout::not handled ev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public tab_action_down(II)V
    .locals 2

    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveX:I

    iput p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveY:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public tab_action_move(II)V
    .locals 8

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveX:I

    sub-int v2, p1, v5

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveY:I

    sub-int v3, p2, v5

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->updateZone(II)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static {v5, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    :goto_1
    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveX:I

    iput p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveY:I

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public tab_action_up(II)V
    .locals 6

    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveX:I

    sub-int v0, p1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveY:I

    sub-int v1, p2, v2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->longPressed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->getTabFocusedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v4

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundByStackId(ILandroid/graphics/Rect;)V
    invoke-static {v3, v2, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6000(Lcom/android/internal/policy/impl/MultiPhoneWindow;ILandroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getZone()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method
