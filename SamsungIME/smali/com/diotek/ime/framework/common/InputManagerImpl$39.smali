.class Lcom/diotek/ime/framework/common/InputManagerImpl$39;
.super Landroid/os/Handler;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$39;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    iget v0, v6, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mAction:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$39;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iget-object v1, v6, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mInput:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, v6, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mInput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->DLMAddWord([CS)S

    goto :goto_0

    :cond_1
    iget v0, v6, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, v6, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mIsSentenceBased:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$39;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iget-object v1, v6, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mInput:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, v6, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mInput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->writeWordToDLM([CIIZZ)S

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$39;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iget-object v1, v6, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mInput:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, v6, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;->mInput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move v5, v3

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->writeWordToDLM([CIIZZ)S

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
