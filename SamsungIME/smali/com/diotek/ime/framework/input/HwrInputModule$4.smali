.class Lcom/diotek/ime/framework/input/HwrInputModule$4;
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

    iput-object p1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/InputModule$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, -0x5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeFail:Lcom/diotek/ime/framework/input/InputModule$Timer;
    invoke-static {v2}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$300(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I
    invoke-static {v1}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$500(Lcom/diotek/ime/framework/input/HwrInputModule;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v3, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v0

    if-eqz v0, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/input/HwrInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I
    invoke-static {v1, v3}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$502(Lcom/diotek/ime/framework/input/HwrInputModule;I)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$600(Lcom/diotek/ime/framework/input/HwrInputModule;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v2, 0x20

    invoke-interface {v1, v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I
    invoke-static {v1, v3}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$502(Lcom/diotek/ime/framework/input/HwrInputModule;I)I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$600(Lcom/diotek/ime/framework/input/HwrInputModule;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v5, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I
    invoke-static {v1, v3}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$502(Lcom/diotek/ime/framework/input/HwrInputModule;I)I

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/input/HwrInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$600(Lcom/diotek/ime/framework/input/HwrInputModule;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v2, 0xa

    invoke-interface {v1, v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I
    invoke-static {v1, v3}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$502(Lcom/diotek/ime/framework/input/HwrInputModule;I)I

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$600(Lcom/diotek/ime/framework/input/HwrInputModule;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v5, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$4;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I
    invoke-static {v1, v3}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$502(Lcom/diotek/ime/framework/input/HwrInputModule;I)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
