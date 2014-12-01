.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;->initScaleGestureDetector()V
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

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$700(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/view/ScaleGestureDetector;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mUseScaleGestureDetector:Z
    invoke-static {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$700(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/view/ScaleGestureDetector;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    :cond_0
    const v4, 0x3fa66666

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->cancelAllPointers(Z)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllMessages()V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4, v7, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissAllPreview(J)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "SETTINGS_DEFAULT_ONE_HAND"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->updateSytemOneHandOperationSetting(Z)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->setOneHandLayoutShown()V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # setter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureEvents:Z
    invoke-static {v4, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$902(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Z)Z

    :cond_1
    :goto_0
    return v6

    :cond_2
    const v4, 0x3f333333

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-boolean v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsSupportOneHanded:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v4

    if-nez v4, :cond_1

    iput-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->cancelAllPointers(Z)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllMessages()V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4, v7, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissAllPreview(J)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "SETTINGS_DEFAULT_ONE_HAND"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->updateSytemOneHandOperationSetting(Z)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->setOneHandLayoutShown()V

    const-string v4, "first_one_handed_execution"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->showOneHandedGuideDialog()V

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # setter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureEvents:Z
    invoke-static {v4, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$902(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Z)Z

    goto/16 :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    return-void
.end method
