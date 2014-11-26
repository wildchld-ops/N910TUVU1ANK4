.class Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack$1;
.super Ljava/lang/Thread;
.source "FreeMessageBubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->createThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;


# direct methods
.method constructor <init>(Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x0

    :goto_0
    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->sInstance:Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;
    invoke-static {}, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->access$1000()Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->access$1100(Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->sInstance:Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;
    invoke-static {}, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->access$1000()Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->access$1100(Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;

    iget v3, v3, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->mRunningState:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->sInstance:Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;
    invoke-static {}, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->access$1000()Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;

    move-result-object v4

    monitor-enter v4

    :try_start_3
    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->sInstance:Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;
    invoke-static {}, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->access$1000()Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    :cond_2
    :try_start_6
    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->access$1100(Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :pswitch_1
    return-void

    :catch_1
    move-exception v3

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
