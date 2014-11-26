.class public Lcom/android/mms/rcs/RcsBubbleView$TaskStack;
.super Ljava/lang/Object;
.source "RcsBubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsBubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskStack"
.end annotation


# static fields
.field public static final PAUSE:I = 0x2

.field public static final RUN:I = 0x1

.field public static final STOP:I = 0x3

.field private static sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;


# instance fields
.field protected mRunningState:I

.field private mTaskTodo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mRunningState:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$100()Lcom/android/mms/rcs/RcsBubbleView$TaskStack;
    .locals 1

    sget-object v0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/rcs/RcsBubbleView$TaskStack;)Ljava/util/LinkedList;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;

    return-object v0
.end method

.method private createThread()Ljava/lang/Thread;
    .locals 2

    new-instance v0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack$1;

    const-string v1, "slide bitmap loader"

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/RcsBubbleView$TaskStack$1;-><init>(Lcom/android/mms/rcs/RcsBubbleView$TaskStack;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/android/mms/rcs/RcsBubbleView$TaskStack;
    .locals 1

    sget-object v0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;-><init>()V

    sput-object v0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    sget-object v0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->start()V

    :cond_0
    sget-object v0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;

    sget-object v1, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mRunningState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x2

    iget v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mRunningState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mRunningState:I

    goto :goto_0
.end method

.method public removeTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    sget-object v1, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mRunningState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mRunningState:I

    sget-object v1, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    iget v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mRunningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->resume()V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->createThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x3

    iget v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mRunningState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    iput v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mRunningState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    sget-object v0, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->sInstance:Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
