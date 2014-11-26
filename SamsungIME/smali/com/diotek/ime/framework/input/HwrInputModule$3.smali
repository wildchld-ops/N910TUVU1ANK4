.class Lcom/diotek/ime/framework/input/HwrInputModule$3;
.super Lcom/diotek/ime/framework/input/InputModule$Timer;
.source "HwrInputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/HwrInputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/input/HwrInputModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/input/HwrInputModule;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/InputModule$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;
    invoke-static {v3}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$200(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->runRecongnize:Lcom/diotek/ime/framework/input/InputModule$Timer;
    invoke-static {v3}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$400(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I
    invoke-static {v2}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$500(Lcom/diotek/ime/framework/input/HwrInputModule;)I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v1

    const/16 v2, 0xbbb

    if-eq v1, v2, :cond_2

    const/16 v2, 0xbbc

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v3, v3, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v2

    const/high16 v3, 0x74680000

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isThaiAcceptable()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v3, v3, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$600(Lcom/diotek/ime/framework/input/HwrInputModule;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$600(Lcom/diotek/ime/framework/input/HwrInputModule;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I
    invoke-static {v2, v5}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$502(Lcom/diotek/ime/framework/input/HwrInputModule;I)I

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1
.end method
