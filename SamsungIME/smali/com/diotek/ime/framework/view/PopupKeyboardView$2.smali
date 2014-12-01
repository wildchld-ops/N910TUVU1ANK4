.class Lcom/diotek/ime/framework/view/PopupKeyboardView$2;
.super Ljava/lang/Object;
.source "PopupKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingMoveButtonTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/PopupKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->updateCtrlState()V

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    const/4 v4, 0x1

    # setter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z
    invoke-static {v3, v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$502(Lcom/diotek/ime/framework/view/PopupKeyboardView;Z)Z

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$600(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f02096a

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$700(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020a98

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$800(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020a9f

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setMovingDownPoint(Landroid/graphics/Point;)V

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$500(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object v2, v3

    check-cast v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->moveUpPopupKeyboard(Landroid/view/MotionEvent;)V

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->releaseDownPoint()V

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # setter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z
    invoke-static {v3, v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$502(Lcom/diotek/ime/framework/view/PopupKeyboardView;Z)Z

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$600(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020969

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$700(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020a97

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$800(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020a9e

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$500(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object v2, v3

    check-cast v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->movePopupKeyboard(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
