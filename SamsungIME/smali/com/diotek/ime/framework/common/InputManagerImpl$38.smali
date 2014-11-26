.class Lcom/diotek/ime/framework/common/InputManagerImpl$38;
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

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$38;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$38;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v1

    iget-object v2, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;->mInput:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isContainInLanguageDB(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;->mMissSpell:Z

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;->mCheckedDone:Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;->mMissSpell:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
