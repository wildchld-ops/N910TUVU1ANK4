.class public Lcom/samsung/javaomp/runtime/OMP;
.super Ljava/lang/Object;


# static fields
.field private static volatile criticalSections:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static isFinish:Z

.field private static loopScheduler:Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;

.field private static threadStorage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/samsung/javaomp/runtime/__OMPThreadStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/javaomp/runtime/OMP;->isFinish:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/javaomp/runtime/OMP;->criticalSections:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;

    invoke-direct {v0}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;-><init>()V

    sput-object v0, Lcom/samsung/javaomp/runtime/OMP;->loopScheduler:Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/samsung/javaomp/runtime/OMP;->threadStorage:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static __addAndGetReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->addReducer(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;

    move-result-object v0

    return-object v0
.end method

.method public static __addTaskToQueueOrDoIt(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V
    .locals 5

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__parentTask:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeam()Lcom/samsung/javaomp/runtime/__OMPTeam;

    move-result-object v2

    iget-object v3, v2, Lcom/samsung/javaomp/runtime/__OMPTeam;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/samsung/javaomp/runtime/OMP;->__doTask(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__isUndefferedRegion()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeamSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x40

    if-le v4, v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/samsung/javaomp/runtime/OMP;->__doTask(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__isFinalTask()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__finalExpression:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/samsung/javaomp/runtime/OMP;->__doTask(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/javaomp/runtime/__OMPTeam;->barrier:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string v1, "Unhandled exception"

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static __broadcastCopyPrivate(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->putCopyPrivate(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getMasterStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->putCopyPrivate(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static __createMasterStorage()V
    .locals 2

    new-instance v0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    invoke-direct {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;-><init>()V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/javaomp/runtime/__OMPTeam;

    invoke-direct {v1}, Lcom/samsung/javaomp/runtime/__OMPTeam;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setTeam(Lcom/samsung/javaomp/runtime/__OMPTeam;)V

    new-instance v1, Lcom/samsung/javaomp/runtime/__OMPICV;

    invoke-direct {v1}, Lcom/samsung/javaomp/runtime/__OMPICV;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setICV(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setId(I)V

    new-instance v1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    invoke-direct {v1}, Lcom/samsung/javaomp/runtime/__OMPWorkshare;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setWorkshare(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V

    invoke-virtual {v0, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setMasterStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V

    return-void
.end method

.method public static __createTask(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V
    .locals 3

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v1

    new-instance v0, Lcom/samsung/javaomp/runtime/__OMPICV;

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/javaomp/runtime/__OMPICV;-><init>(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__masterICV:Lcom/samsung/javaomp/runtime/__OMPICV;

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getCurrentTaskItem()Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkItem()Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__childrenTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__parentTask:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string v1, "Unhandled interruption"

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static __determineNumberOfThreads(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)I
    .locals 6

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getActiveLevel()I

    move-result v3

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNested()Z

    move-result v4

    sget v5, Lcom/samsung/javaomp/runtime/__OMPICV;->maxActiveLevels:I

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__ifExpression:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__ifExpression:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__numThreads:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__numThreads:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    if-nez v0, :cond_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v2

    iget v2, v2, Lcom/samsung/javaomp/runtime/__OMPICV;->maxThreads:I

    goto :goto_1

    :cond_3
    if-lt v3, v1, :cond_4

    if-eqz v4, :cond_0

    :cond_4
    if-eq v3, v5, :cond_0

    move v1, v2

    goto :goto_2
.end method

.method public static __doBarrier()V
    .locals 0

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__doSpinLockBarrier()V

    return-void
.end method

.method public static __doParallel(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    sput-boolean v12, Lcom/samsung/javaomp/runtime/OMP;->isFinish:Z

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/javaomp/runtime/__OMPICV;->inParallel:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__createMasterStorage()V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setDescendantStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V

    move-object v2, v1

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/samsung/javaomp/runtime/__OMPICV;

    invoke-direct {v0, v4}, Lcom/samsung/javaomp/runtime/__OMPICV;-><init>(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    invoke-virtual {v2, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setICV(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    invoke-static {p0}, Lcom/samsung/javaomp/runtime/OMP;->__determineNumberOfThreads(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)I

    move-result v5

    if-le v5, v13, :cond_0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iput-boolean v13, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->inParallel:Z

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iget v3, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedActiveLevel:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedActiveLevel:I

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iget v3, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedLevel:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedLevel:I

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeam()Lcom/samsung/javaomp/runtime/__OMPTeam;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    move-result-object v8

    :goto_1
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v3, v5, -0x1

    if-le v0, v3, :cond_1

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0, v12}, Lcom/samsung/javaomp/runtime/__OMPThread;->setRunning(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    move v0, v3

    :goto_2
    if-ge v0, v5, :cond_2

    new-instance v9, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-direct {v9, v0}, Lcom/samsung/javaomp/runtime/__OMPThread;-><init>(I)V

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v13}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v9, v8}, Lcom/samsung/javaomp/runtime/__OMPThread;->setWorkshare(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V

    new-instance v10, Lcom/samsung/javaomp/runtime/__OMPICV;

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/javaomp/runtime/__OMPICV;-><init>(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    invoke-virtual {v9, v10}, Lcom/samsung/javaomp/runtime/__OMPThread;->setIcv(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    invoke-virtual {v9, v7}, Lcom/samsung/javaomp/runtime/__OMPThread;->setTeam(Lcom/samsung/javaomp/runtime/__OMPTeam;)V

    invoke-virtual {v9, v2}, Lcom/samsung/javaomp/runtime/__OMPThread;->setMasterStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V

    new-instance v10, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    invoke-direct {v10}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;-><init>()V

    invoke-virtual {v9, v10}, Lcom/samsung/javaomp/runtime/__OMPThread;->setThreadStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V

    invoke-virtual {v9, v1}, Lcom/samsung/javaomp/runtime/__OMPThread;->setAncestorStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V

    invoke-virtual {v9, p0}, Lcom/samsung/javaomp/runtime/__OMPThread;->setFirstWorkItem(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setAncestorStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setCurrentTaskItem(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    invoke-virtual {v2, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setWorkItem(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    invoke-virtual {v6}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getOmpId()I

    move-result v6

    if-lt v6, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_4
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->wakeUpThread()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_3
    iget-object v6, v7, Lcom/samsung/javaomp/runtime/__OMPTeam;->workItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6, p0}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getComparator()Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v3}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setComparator(Ljava/lang/Object;)V

    invoke-virtual {p0, v12}, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__doWork(I)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__doBarrier()V

    invoke-virtual {v2, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setComparator(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->finalizeThreads()V

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_5
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setICV(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    return-void

    :cond_6
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public static __doSemaphoreBarrier()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeam()Lcom/samsung/javaomp/runtime/__OMPTeam;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeamSize()I

    move-result v2

    iget-object v3, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->mutex:Ljava/util/concurrent/Semaphore;

    iget-object v4, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->barrier:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    iget v5, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->numWaiting:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->numWaiting:I

    iget v5, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->numWaiting:I

    if-ne v5, v2, :cond_0

    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v6}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->barrier:Ljava/util/concurrent/Semaphore;

    iput v6, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->numWaiting:I

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeam()Lcom/samsung/javaomp/runtime/__OMPTeam;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPTeam;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    :goto_0
    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->__tryGetTaskAndDoIt(Ljava/util/concurrent/LinkedBlockingQueue;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_2
    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->__tryGetTaskAndDoIt(Ljava/util/concurrent/LinkedBlockingQueue;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void
.end method

.method private static __doSpinLockBarrier()V
    .locals 4

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeam()Lcom/samsung/javaomp/runtime/__OMPTeam;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeamSize()I

    move-result v0

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->spinLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget v3, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->numWaiting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->numWaiting:I

    iget v3, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->numWaiting:I

    if-ne v0, v3, :cond_2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->spinLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->numWaiting:I

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->__tryGetTaskAndDoIt(Ljava/util/concurrent/LinkedBlockingQueue;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->__tryGetTaskAndDoIt(Ljava/util/concurrent/LinkedBlockingQueue;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method private static __doTask(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V
    .locals 5

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getCurrentTaskItem()Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v2

    invoke-virtual {v0, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setCurrentTaskItem(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    iget-object v3, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__masterICV:Lcom/samsung/javaomp/runtime/__OMPICV;

    invoke-virtual {v0, v3}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setICV(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getComparator()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setComparator(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getThreadNum()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__doWork(I)V

    iget-object v4, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__parentTask:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__parentTask:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    iget-object v4, v4, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__childrenTasks:Ljava/util/concurrent/BlockingQueue;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__parentTask:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    iget-object v4, v4, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__childrenTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, p0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0, v3}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setComparator(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setICV(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setCurrentTaskItem(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    return-void
.end method

.method public static __final(Lcom/samsung/javaomp/runtime/__OMPWorkItem;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__finalExpression:Ljava/lang/Boolean;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__finalExpression:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static __final(Lcom/samsung/javaomp/runtime/__OMPWorkItem;Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__finalExpression:Ljava/lang/Boolean;

    return-void
.end method

.method public static __finishOrdered()V
    .locals 2

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    move-result-object v0

    iget-object v1, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getThreadNum()I

    move-result v1

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method

.method public static __getCopyPrivate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getAndRemoveCopyPrivate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static __getCriticalSection(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/samsung/javaomp/runtime/OMP;->criticalSections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static __getReducer()Lcom/samsung/javaomp/runtime/__OMPReducer;
    .locals 1

    new-instance v0, Lcom/samsung/javaomp/runtime/__OMPReducer;

    invoke-direct {v0}, Lcom/samsung/javaomp/runtime/__OMPReducer;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized __getSingle()Z
    .locals 4

    const-class v1, Lcom/samsung/javaomp/runtime/OMP;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->next:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    if-nez v3, :cond_0

    new-instance v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    invoke-direct {v0}, Lcom/samsung/javaomp/runtime/__OMPWorkshare;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    move-result-object v3

    iput-object v0, v3, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->next:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->next:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    invoke-virtual {v2, v3}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setWorkshare(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static __getThreadLocal()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/samsung/javaomp/runtime/__OMPThreadStorage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/javaomp/runtime/OMP;->threadStorage:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static __getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__createMasterStorage()V

    :cond_0
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    return-object v0
.end method

.method public static __if(Lcom/samsung/javaomp/runtime/__OMPWorkItem;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__ifExpression:Ljava/lang/Boolean;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__ifExpression:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static __if(Lcom/samsung/javaomp/runtime/__OMPWorkItem;Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__ifExpression:Ljava/lang/Boolean;

    return-void
.end method

.method public static __isCanceledWorkshare()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->__cancelWork:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static __loopNext(Lcom/samsung/javaomp/runtime/__OMPLoop;)Z
    .locals 2

    sget-object v0, Lcom/samsung/javaomp/runtime/OMP;->loopScheduler:Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->scheduleNext(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z

    move-result v0

    return v0
.end method

.method public static __numThreads(Lcom/samsung/javaomp/runtime/__OMPWorkItem;I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of threads must be positive, but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__numThreads:Ljava/lang/Integer;

    return-void
.end method

.method public static __setCancelWorkshare(Ljava/lang/Boolean;)V
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    move-result-object v0

    iput-object p0, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->__cancelWork:Ljava/lang/Boolean;

    return-void
.end method

.method public static __stop()V
    .locals 3

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/javaomp/runtime/__OMPThread;->setRunning(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public static __taskwait()V
    .locals 3

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getCurrentTaskItem()Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkItem()Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__childrenTasks:Ljava/util/concurrent/BlockingQueue;

    if-nez v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeam()Lcom/samsung/javaomp/runtime/__OMPTeam;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/javaomp/runtime/__OMPTeam;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    :goto_0
    iget-object v2, v0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__childrenTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->yield()V

    invoke-static {v1}, Lcom/samsung/javaomp/runtime/OMP;->__tryGetTaskAndDoIt(Ljava/util/concurrent/LinkedBlockingQueue;)Z

    goto :goto_0
.end method

.method public static __taskyield()V
    .locals 0

    return-void
.end method

.method private static __tryGetTaskAndDoIt(Ljava/util/concurrent/LinkedBlockingQueue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/samsung/javaomp/runtime/__OMPWorkItem;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->__doTask(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static __waitForOrdered()V
    .locals 2

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    move-result-object v0

    iget-object v1, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getThreadNum()I

    move-result v1

    :try_start_0
    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string v1, "Unhandled exception"

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static __workshareStart(Lcom/samsung/javaomp/runtime/__OMPLoop;)V
    .locals 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    move-result-object v3

    iget-object v0, v3, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->encounteredNext:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    :goto_0
    iget-object v0, v3, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->next:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    invoke-direct {v4}, Lcom/samsung/javaomp/runtime/__OMPWorkshare;-><init>()V

    iget-wide v5, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    iput-wide v5, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    iget-wide v5, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->start:J

    iput-wide v5, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    iget-wide v5, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    iput-wide v5, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    iget-boolean v0, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->isOrdered:Z

    iput-boolean v0, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->isOrdered:Z

    iget-boolean v0, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->isOrdered:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumThreads()I

    move-result v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->lastChunk:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_1

    iget-object v6, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->lastChunk:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v6, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v5, -0x1

    iput v6, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->schedule:Lcom/samsung/javaomp/runtime/OMPSched;

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/javaomp/runtime/__OMPICV;->DEF_SCHED_VAR:Lcom/samsung/javaomp/runtime/OMPSched;

    iput-object v0, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->sched:Lcom/samsung/javaomp/runtime/OMPSched;

    :goto_2
    iput-object v4, v3, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->next:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    :cond_2
    iget-object v0, v3, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->next:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    invoke-virtual {v2, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setWorkshare(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->schedule:Lcom/samsung/javaomp/runtime/OMPSched;

    sget-object v1, Lcom/samsung/javaomp/runtime/OMPSched;->RUNTIME:Lcom/samsung/javaomp/runtime/OMPSched;

    if-ne v0, v1, :cond_4

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->runSchedVar:Lcom/samsung/javaomp/runtime/OMPSched;

    iput-object v0, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->sched:Lcom/samsung/javaomp/runtime/OMPSched;

    invoke-virtual {v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iget v0, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->runChunkSize:I

    int-to-long v0, v0

    iput-wide v0, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->chunkSize:J

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->schedule:Lcom/samsung/javaomp/runtime/OMPSched;

    iput-object v0, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->sched:Lcom/samsung/javaomp/runtime/OMPSched;

    iget-wide v0, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->chunkSize:J

    iput-wide v0, v4, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->chunkSize:J

    goto :goto_2
.end method

.method public static destroyLock(Lcom/samsung/javaomp/runtime/OMPLock;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/OMPLock;->destroyLock()V

    return-void
.end method

.method public static destroyNestLock(Lcom/samsung/javaomp/runtime/OMPNestLock;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/OMPNestLock;->destroyLock()V

    return-void
.end method

.method public static finalizeThreads()V
    .locals 5

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNested()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getLevel()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->finalizeThreads(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getComparator()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    move-result-object v2

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setComparator(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setWorkshare(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V

    invoke-virtual {v3, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setICV(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static finalizeThreads(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getThreads()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThread;->finalizeThread()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getActiveLevel()I
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iget v0, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedActiveLevel:I

    return v0
.end method

.method public static getAncestorThreadNum(I)I
    .locals 2

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getLevel()I

    move-result v0

    if-ltz p0, :cond_0

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v1

    iget v1, v1, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedLevel:I

    if-ne v1, p0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getId()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getAncestorStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string v1, "Unreachable code!"

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getCPUNumFromSystem()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/javaomp/runtime/OMPInvalidStringFormatException;,
            Lcom/samsung/javaomp/runtime/OMPZeroOrNegativeCPUDetectedException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/present"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_2
    throw v0

    :cond_1
    :try_start_3
    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->parseNumProc(Ljava/lang/StringBuilder;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_3
    return v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static getDynamic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getLevel()I
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iget v0, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedLevel:I

    return v0
.end method

.method public static getMaxActiveLevels()I
    .locals 1

    sget v0, Lcom/samsung/javaomp/runtime/__OMPICV;->maxActiveLevels:I

    return v0
.end method

.method public static getMaxThreads()I
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iget v0, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->maxThreads:I

    return v0
.end method

.method public static getNested()Z
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->nested:Z

    return v0
.end method

.method public static getNumProcs()I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getCPUNumFromSystem()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    goto :goto_0
.end method

.method public static getNumThreads()I
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeamSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getSchedule()Lcom/samsung/javaomp/runtime/OMPSchedInfo;
    .locals 3

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPSchedInfo;

    invoke-direct {v0}, Lcom/samsung/javaomp/runtime/OMPSchedInfo;-><init>()V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/javaomp/runtime/__OMPICV;->runSchedVar:Lcom/samsung/javaomp/runtime/OMPSched;

    iput-object v2, v0, Lcom/samsung/javaomp/runtime/OMPSchedInfo;->kind:Lcom/samsung/javaomp/runtime/OMPSched;

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v1

    iget v1, v1, Lcom/samsung/javaomp/runtime/__OMPICV;->runChunkSize:I

    iput v1, v0, Lcom/samsung/javaomp/runtime/OMPSchedInfo;->modifier:I

    return-object v0
.end method

.method public static getTeamSize(I)I
    .locals 2

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getLevel()I

    move-result v0

    if-ltz p0, :cond_0

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v1

    iget v1, v1, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedLevel:I

    if-ne v1, p0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeamSize()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getAncestorStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string v1, "Unreachable code!"

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getThreadNum()I
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getId()I

    move-result v0

    return v0
.end method

.method public static getWtick()D
    .locals 2

    const-wide v0, 0x3f847ae147ae147bL

    return-wide v0
.end method

.method public static getWtime()D
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static get_thread_limit()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public static inFinal()Z
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getCurrentTaskItem()Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__isFinalTask()Z

    move-result v0

    goto :goto_0
.end method

.method public static inParallel()Z
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->inParallel:Z

    return v0
.end method

.method public static initLock(Lcom/samsung/javaomp/runtime/OMPLock;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/OMPLock;->initLock()V

    return-void
.end method

.method public static initNestLock(Lcom/samsung/javaomp/runtime/OMPNestLock;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/OMPNestLock;->initLock()V

    return-void
.end method

.method public static parseNumProc(Ljava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/javaomp/runtime/OMPInvalidStringFormatException;,
            Lcom/samsung/javaomp/runtime/OMPZeroOrNegativeCPUDetectedException;
        }
    .end annotation

    const/4 v2, 0x0

    move v4, v2

    move v3, v2

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v3, v0, :cond_4

    move v0, v2

    move v1, v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    add-int/lit8 v5, v1, 0x1

    const-string v6, "\u0000"

    invoke-virtual {p0, v1, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_2
    if-nez v0, :cond_3

    add-int/lit8 v0, v4, 0x1

    :goto_2
    move v4, v0

    move v3, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/Scanner;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v3, "\\D+"

    invoke-virtual {v0, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v4

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPInvalidStringFormatException;

    invoke-direct {v0}, Lcom/samsung/javaomp/runtime/OMPInvalidStringFormatException;-><init>()V

    throw v0

    :cond_4
    if-gtz v4, :cond_5

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPZeroOrNegativeCPUDetectedException;

    invoke-direct {v0}, Lcom/samsung/javaomp/runtime/OMPZeroOrNegativeCPUDetectedException;-><init>()V

    throw v0

    :cond_5
    return v4
.end method

.method public static setDynamic(Z)V
    .locals 0

    return-void
.end method

.method public static setLock(Lcom/samsung/javaomp/runtime/OMPLock;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/OMPLock;->setLock()V

    return-void
.end method

.method public static setMaxActiveLevels(I)V
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->inParallel()Z

    move-result v0

    if-nez v0, :cond_0

    sput p0, Lcom/samsung/javaomp/runtime/__OMPICV;->maxActiveLevels:I

    :cond_0
    return-void
.end method

.method public static setNestLock(Lcom/samsung/javaomp/runtime/OMPNestLock;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/OMPNestLock;->setLock()V

    return-void
.end method

.method public static setNested(Z)V
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iput-boolean p0, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->nested:Z

    return-void
.end method

.method public static setNumThreads(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of threads must be positive, but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iput p0, v0, Lcom/samsung/javaomp/runtime/__OMPICV;->maxThreads:I

    return-void
.end method

.method public static setSchedule(Lcom/samsung/javaomp/runtime/OMPSched;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/javaomp/runtime/__OMPICV;->setSchedule(Lcom/samsung/javaomp/runtime/OMPSched;I)V

    return-void
.end method

.method public static setSchedule(Lcom/samsung/javaomp/runtime/OMPSchedInfo;)V
    .locals 3

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/javaomp/runtime/OMPSchedInfo;->kind:Lcom/samsung/javaomp/runtime/OMPSched;

    iget v2, p0, Lcom/samsung/javaomp/runtime/OMPSchedInfo;->modifier:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/javaomp/runtime/__OMPICV;->setSchedule(Lcom/samsung/javaomp/runtime/OMPSched;I)V

    return-void
.end method

.method public static testLock(Lcom/samsung/javaomp/runtime/OMPLock;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/OMPLock;->testLock()I

    move-result v0

    return v0
.end method

.method public static testNestLock(Lcom/samsung/javaomp/runtime/OMPNestLock;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/OMPNestLock;->testLock()I

    move-result v0

    return v0
.end method

.method public static unsetLock(Lcom/samsung/javaomp/runtime/OMPLock;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/OMPLock;->unsetLock()V

    return-void
.end method

.method public static unsetNestLock(Lcom/samsung/javaomp/runtime/OMPNestLock;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/OMPNestLock;->unsetLock()V

    return-void
.end method
