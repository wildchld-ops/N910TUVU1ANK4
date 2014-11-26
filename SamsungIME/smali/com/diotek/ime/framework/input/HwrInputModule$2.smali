.class Lcom/diotek/ime/framework/input/HwrInputModule$2;
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

    iput-object p1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/InputModule$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;
    invoke-static {v3}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$200(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeFail:Lcom/diotek/ime/framework/input/InputModule$Timer;
    invoke-static {v3}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$300(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v1

    const/16 v2, 0xbb9

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$2;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
