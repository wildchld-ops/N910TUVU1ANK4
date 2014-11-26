.class public Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/animation/MsgDeleteActionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransDelAnim"
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerDuration:F

.field protected mHandlerInterval:I

.field protected mHandlerTick:F

.field protected mIsRunningHandler:Z

.field protected mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

.field final synthetic this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;


# direct methods
.method public constructor <init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerInterval:I

    const/high16 v0, 0x42480000

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerDuration:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mIsRunningHandler:Z

    iput-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancelTransAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->stopTransAnimation()V

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    invoke-interface {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;->onCancelTransDeleteAnimation()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    const/high16 v4, 0x3f800000

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerInterval:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    iget v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerDuration:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerDuration:F

    iput v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    :cond_2
    iget v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerDuration:F

    div-float v0, v2, v3

    mul-float v1, v0, v0

    cmpg-float v2, v1, v4

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    invoke-interface {v2, v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;->onApplyTransformation(F)V

    :cond_3
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidate()V

    goto :goto_0

    :cond_4
    cmpl-float v2, v1, v4

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mIsRunningHandler:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mIsRunningHandler:Z

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    invoke-interface {v2, v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;->onApplyTransformation(F)V

    :cond_5
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidate()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    invoke-interface {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;->onEndTransDeleteAnimation()V

    goto :goto_0
.end method

.method protected setOnTransDelAnimListener(Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;)V
    .locals 0
    .param p1    # Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    return-void
.end method

.method public startTransAnimation(I)V
    .locals 3
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->stopTransAnimation()V

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    invoke-interface {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;->onBeginTransDeleteAnimation()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mIsRunningHandler:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    int-to-float v0, p1

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerDuration:F

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public startTransDeleteAnimation()V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->startTransAnimation(I)V

    return-void
.end method

.method public stopTransAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mIsRunningHandler:Z

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public userRelease()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->stopTransAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    return-void
.end method
