.class public Lcom/samsung/javaomp/runtime/__OMPWorkshare;
.super Ljava/lang/Object;


# instance fields
.field volatile __cancelWork:Ljava/lang/Boolean;

.field public volatile chunkSize:J

.field volatile encounteredNext:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile end:J

.field public volatile incr:J

.field public volatile isOrdered:Z

.field volatile lastChunk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public volatile next:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

.field orderedOwner:I

.field volatile orderedSemaphore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field

.field volatile preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/samsung/javaomp/runtime/__OMPChunk;",
            ">;"
        }
    .end annotation
.end field

.field volatile sched:Lcom/samsung/javaomp/runtime/OMPSched;

.field public volatile start:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->next:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->__cancelWork:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v1, p0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->sched:Lcom/samsung/javaomp/runtime/OMPSched;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->encounteredNext:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    return-void
.end method
