.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mOnScaleEndCalled:Z

.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 1

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->mOnScaleEndCalled:Z

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .param p1    # Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$700(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/view/ScaleGestureDetector;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mUseScaleGestureDetector:Z
    invoke-static {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$700(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/view/ScaleGestureDetector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    :cond_0
    const v3, 0x3f333333

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    const v3, 0x3e99999a

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->cancelAllPointers(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllMessages()V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissAllPreview(J)V

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->mOnScaleEndCalled:Z

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1    # Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1    # Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->mOnScaleEndCalled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->mOnScaleEndCalled:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z

    goto :goto_0
.end method
