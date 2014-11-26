.class Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;
.super Ljava/lang/Object;
.source "CompleteHwrInputModule.java"

# interfaces
.implements Lcom/diotek/ime/framework/engine/dhwr/AddStroke;


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

    iput-object p1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndAddStroke(Z)V
    .locals 8
    .param p1    # Z

    const/16 v7, 0x7d7

    const/16 v5, 0x7d1

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I
    invoke-static {v3}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$300(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I
    invoke-static {v3}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$300(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v3, v3, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v6, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v2

    if-eq v2, v5, :cond_1

    const/16 v3, 0x7d2

    if-eq v2, v3, :cond_1

    if-ne v2, v7, :cond_4

    :cond_1
    if-eq v2, v7, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;
    invoke-static {v3}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$700(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v3, v3, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v3, v3, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v3, v3, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # setter for: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I
    invoke-static {v3, v6}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$302(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;I)I

    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v3, v3, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v3, v3, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    const/16 v5, 0xbbb

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    iget-object v3, v3, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;->this$0:Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    # invokes: Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->startRecogThreadTimer()V
    invoke-static {v3}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->access$800(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    goto :goto_0
.end method

.method public onStartAddStroke(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method
