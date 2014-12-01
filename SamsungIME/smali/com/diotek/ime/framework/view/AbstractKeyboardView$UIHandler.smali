.class public Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;
.super Landroid/os/Handler;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIHandler"
.end annotation


# instance fields
.field private mInKeyRepeat:Z

.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAllDismissPreview()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public cancelAllMessages()V
    .locals 0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyTimers()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllDismissPreview()V

    return-void
.end method

.method public cancelDismissPreview(Lcom/diotek/ime/framework/view/tracker/PointerTracker;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public cancelKeyRepeatTimer()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # setter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKeyRepeating:Z
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1602(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Z)Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->mInKeyRepeat:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->initDelteCount()V

    return-void
.end method

.method public cancelKeyTimers()V
    .locals 0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyRepeatTimer()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressSplitMoveTimer()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelTextDeleteAllTimer()V

    return-void
.end method

.method public cancelLongPressKnobRepeatKey()V
    .locals 1

    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public cancelLongPressSplitMoveTimer()V
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public cancelLongPressTimer()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public cancelTextDeleteAllTimer()V
    .locals 1

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public dismissAllPreview(J)V
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInvisiblePreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInvisiblePreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public dismissPreview(JLcom/diotek/ime/framework/view/tracker/PointerTracker;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->drawHoverKey(I)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mHoverView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1100(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1200(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewKeyTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1300(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/TextView;

    move-result-object v21

    if-eqz v21, :cond_1

    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v22, :cond_0

    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz v23, :cond_0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->preview:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->keyPressed:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1200(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPreviewKeyTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1300(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/widget/TextView;

    move-result-object v21

    const/16 v24, 0x8

    move-object/from16 v0, v23

    iget v2, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointerId:I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->IsMultiTouchPreviewEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/16 v24, 0x4

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->IsMultiTouchPreviewEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPointingAction()Z
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/trace/KeyboardPointing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getMultiDirection()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/trace/KeyboardPointing;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->onDownKeyEvent(I)V

    const/16 v20, 0x78

    const/16 v2, 0x13

    if-eq v12, v2, :cond_8

    const/16 v2, 0x14

    if-ne v12, v2, :cond_9

    :cond_8
    const/16 v20, 0xfa

    :cond_9
    move/from16 v0, v20

    int-to-long v2, v0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isBackspaceKey(I)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKeyRepeating:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1600(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_VIBETONZ"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, -0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->playVibrateEffect(IZ)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v3, 0x1

    # setter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKeyRepeating:Z
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1602(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Z)Z

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->repeatKey(I)V

    const-wide/16 v2, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v3, v15, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentKey:Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v3, -0x3ee

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    const/16 v2, 0x36

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, -0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    const/16 v2, 0x36

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x96

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v3, -0x3e9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    const/16 v2, 0x36

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v3, -0x3ea

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    const/16 v2, 0x36

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v3, -0x3ed

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    const/16 v2, 0x36

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressSplitMoveTimer()V

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isHwrTracker()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getHwrDownPointX()I

    move-result v4

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getHwrDownPointY()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->onHwrPanelLongPressed(Landroid/graphics/Point;)Z

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPointingAction()Z
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/trace/KeyboardPointing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getMultiDirection()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/trace/KeyboardPointing;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->onDownKeyEvent(I)V

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->noUseUpdateKey()V

    const-wide/16 v2, 0x32

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v23

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->openMultiTouchPopupIfRequired(ILcom/diotek/ime/framework/view/tracker/PointerTracker;)Z
    invoke-static {v2, v3, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1700(Lcom/diotek/ime/framework/view/AbstractKeyboardView;ILcom/diotek/ime/framework/view/tracker/PointerTracker;)Z

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    if-ltz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v14, v2, v16

    iget-object v2, v14, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, v14, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissPreview(JLcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressedstate:Z

    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/diotek/ime/framework/view/Keyboard$Key;->focusstate:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(Lcom/diotek/ime/framework/view/Keyboard$Key;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object v14, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mQwertyKey:Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v0, v16

    invoke-virtual {v2, v14, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showPopupMiniKeyboard(Lcom/diotek/ime/framework/view/Keyboard$Key;I)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-boolean v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateKeyIndex(Ljava/util/List;)V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->focusstate:Z

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressedstate:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v2, v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentKey:Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-virtual {v3, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(Lcom/diotek/ime/framework/view/Keyboard$Key;)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setMovableMode(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->cancelAllPointers(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllMessages()V

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissAllPreview(J)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressKnobRepeatKey()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->deleteAllTextInEditor()V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getIndexOfFirstVisibleTrace()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    const/16 v2, 0x31

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->setInTraceAnimation(Z)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mUpXcordinate:J
    invoke-static {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1900(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mUpYcordinate:J
    invoke-static {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2000(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mUpKeyIndex:I
    invoke-static {v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2100(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mUpKeyCode:I
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2200(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mlastDown:Z
    invoke-static {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2300(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual/range {v2 .. v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->releaseTrace(JJIIZJ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->setInTraceAnimation(Z)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_a
        0x12 -> :sswitch_c
        0x1e -> :sswitch_0
        0x1f -> :sswitch_1
        0x2a -> :sswitch_d
        0x31 -> :sswitch_e
        0x34 -> :sswitch_b
        0x36 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3ee -> :sswitch_5
        -0x3ed -> :sswitch_9
        -0x3ea -> :sswitch_8
        -0x3e9 -> :sswitch_7
        -0x5 -> :sswitch_6
    .end sparse-switch
.end method

.method public invalidateHoverKey(I)V
    .locals 3

    const/16 v2, 0x1e

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPointingAction()Z
    invoke-static {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$1400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public invisibleHoverPopup()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mHoverPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public isInKeyRepeat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->mInKeyRepeat:Z

    return v0
.end method

.method public restartLongPressSplitMoveTimer()V
    .locals 2

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressSplitMoveTimer(J)V

    :cond_0
    return-void
.end method

.method public startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->mInKeyRepeat:Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startKnobLongPressTimer(JI)V
    .locals 3

    const/16 v2, 0x34

    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public startLongPressKnobRepeatKey(J)V
    .locals 1

    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startLongPressSplitMoveTimer(J)V
    .locals 2

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiTouch:Z
    invoke-static {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public startTextDeleteAllTimer(J)V
    .locals 1

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
