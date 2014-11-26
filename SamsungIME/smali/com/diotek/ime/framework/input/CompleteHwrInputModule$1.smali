.class Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;
.super Landroid/os/Handler;
.source "CompleteHwrInputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/CompleteHwrInputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const/4 v5, -0x5

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SamsungIME"

    const-string v1, "MSG_RECOGNIZE_THREAD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # invokes: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->runTheadRecognize()V
    invoke-static {v0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$000(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_GESTURE_DO - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    :goto_1
    :pswitch_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # invokes: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->clearHwrPath()V
    invoke-static {v0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$200(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I
    invoke-static {v0, v3}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$302(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;I)I

    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrRect()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v5, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    const/4 v1, 0x1

    # invokes: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->processEnterInput(Z)Z
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$100(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;Z)Z

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v1, 0x20

    invoke-interface {v0, v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v5, v4}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_1

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I
    invoke-static {v0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$300(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # invokes: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->startRecognizeAllTimer()V
    invoke-static {v0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$400(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I
    invoke-static {v0, v3}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$302(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;I)I

    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # invokes: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->clearHwrPath()V
    invoke-static {v0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$200(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I
    invoke-static {v0, v3}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$302(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;I)I

    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # invokes: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->clearHwrPath()V
    invoke-static {v0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$200(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    goto/16 :goto_0

    :pswitch_b
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "SamsungIME"

    const-string v1, "MSG_RECOGALL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # invokes: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->recognizeAll()V
    invoke-static {v0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$500(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xbb9
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
