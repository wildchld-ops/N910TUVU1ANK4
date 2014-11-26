.class public abstract Lcom/samsung/javaomp/runtime/__OMPWorkItem;
.super Ljava/lang/Object;


# instance fields
.field public __childrenTasks:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/javaomp/runtime/__OMPWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field volatile __finalExpression:Ljava/lang/Boolean;

.field __ifExpression:Ljava/lang/Boolean;

.field volatile __masterICV:Lcom/samsung/javaomp/runtime/__OMPICV;

.field __numThreads:Ljava/lang/Integer;

.field volatile __parentTask:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

.field private volatile cancel:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__ifExpression:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__numThreads:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__finalExpression:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__childrenTasks:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public __cancelWorkItem()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public abstract __doWork(I)V
.end method

.method public __isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method __isFinalTask()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__finalExpression:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__finalExpression:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method __isUndefferedRegion()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__ifExpression:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__ifExpression:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
