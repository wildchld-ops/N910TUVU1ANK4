.class public Lcom/samsung/javaomp/runtime/__OMPTeam;
.super Ljava/lang/Object;


# instance fields
.field volatile barrier:Ljava/util/concurrent/Semaphore;

.field volatile mutex:Ljava/util/concurrent/Semaphore;

.field volatile numWaiting:I

.field volatile spinLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/samsung/javaomp/runtime/__OMPWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field volatile threads:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/javaomp/runtime/__OMPThread;",
            ">;"
        }
    .end annotation
.end field

.field volatile workItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/samsung/javaomp/runtime/__OMPWorkItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPTeam;->threads:Ljava/util/LinkedList;

    iput v1, p0, Lcom/samsung/javaomp/runtime/__OMPTeam;->numWaiting:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPTeam;->spinLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPTeam;->mutex:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPTeam;->barrier:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPTeam;->workItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPTeam;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method
