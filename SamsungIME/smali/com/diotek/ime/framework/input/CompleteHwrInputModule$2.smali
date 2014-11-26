.class Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;
.super Lcom/diotek/ime/framework/input/InputModule$Timer;
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

    iput-object p1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/InputModule$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I
    invoke-static {v2}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$300(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)I

    move-result v2

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v5, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v3, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v1

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runThreadRecognize - retrunValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    packed-switch v1, :pswitch_data_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # invokes: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->startRecognizeAllTimer()V
    invoke-static {v2}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$400(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mThreadRunning:Z
    invoke-static {v2, v5}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$602(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;Z)Z

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # invokes: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->startRecognizeAllTimer()V
    invoke-static {v2}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$400(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mThreadRunning:Z
    invoke-static {v2, v5}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$602(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;Z)Z

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbb9
        :pswitch_1
    .end packed-switch
.end method
