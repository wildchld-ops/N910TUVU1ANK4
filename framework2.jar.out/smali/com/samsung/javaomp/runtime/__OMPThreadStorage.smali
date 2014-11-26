.class Lcom/samsung/javaomp/runtime/__OMPThreadStorage;
.super Ljava/lang/Object;


# instance fields
.field private volatile childStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

.field private volatile comparator:Ljava/lang/Object;

.field private volatile copyprivateVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile icv:Lcom/samsung/javaomp/runtime/__OMPICV;

.field private volatile id:I

.field private volatile masterStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

.field private volatile oldStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

.field private volatile reducers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/javaomp/runtime/__OMPReducer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile taskItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

.field private volatile team:Lcom/samsung/javaomp/runtime/__OMPTeam;

.field private volatile workItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

.field public volatile workshare:Lcom/samsung/javaomp/runtime/__OMPWorkshare;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->workshare:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->workItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->taskItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->copyprivateVariables:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->comparator:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->reducers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method addReducer(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->reducers:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/javaomp/runtime/__OMPReducer;

    invoke-direct {v1}, Lcom/samsung/javaomp/runtime/__OMPReducer;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAncestorStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->oldStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    return-object v0
.end method

.method getAndRemoveCopyPrivate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->copyprivateVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getComparator()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->comparator:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentTaskItem()Lcom/samsung/javaomp/runtime/__OMPWorkItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->taskItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    return-object v0
.end method

.method public getDescendantStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->childStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    return-object v0
.end method

.method getICV()Lcom/samsung/javaomp/runtime/__OMPICV;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->icv:Lcom/samsung/javaomp/runtime/__OMPICV;

    return-object v0
.end method

.method getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->id:I

    return v0
.end method

.method public getMasterStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->masterStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    return-object v0
.end method

.method getReducer(Ljava/lang/String;)Lcom/samsung/javaomp/runtime/__OMPReducer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->reducers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPReducer;

    return-object v0
.end method

.method getTeam()Lcom/samsung/javaomp/runtime/__OMPTeam;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->team:Lcom/samsung/javaomp/runtime/__OMPTeam;

    return-object v0
.end method

.method getTeamSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->team:Lcom/samsung/javaomp/runtime/__OMPTeam;

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPTeam;->threads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getThread(I)Lcom/samsung/javaomp/runtime/__OMPThread;
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->team:Lcom/samsung/javaomp/runtime/__OMPTeam;

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPTeam;->threads:Ljava/util/LinkedList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPThread;

    return-object v0
.end method

.method getThreads()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/javaomp/runtime/__OMPThread;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->team:Lcom/samsung/javaomp/runtime/__OMPTeam;

    iget-object v0, v0, Lcom/samsung/javaomp/runtime/__OMPTeam;->threads:Ljava/util/LinkedList;

    return-object v0
.end method

.method getWorkItem()Lcom/samsung/javaomp/runtime/__OMPWorkItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->workItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    return-object v0
.end method

.method getWorkshare()Lcom/samsung/javaomp/runtime/__OMPWorkshare;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->workshare:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    return-object v0
.end method

.method putCopyPrivate(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->copyprivateVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removeReducer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->reducers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAncestorStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->oldStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    return-void
.end method

.method public setComparator(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->comparator:Ljava/lang/Object;

    return-void
.end method

.method public setCurrentTaskItem(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->taskItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    return-void
.end method

.method public setDescendantStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->childStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    return-void
.end method

.method setICV(Lcom/samsung/javaomp/runtime/__OMPICV;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->icv:Lcom/samsung/javaomp/runtime/__OMPICV;

    return-void
.end method

.method setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->id:I

    return-void
.end method

.method public setMasterStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->masterStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    return-void
.end method

.method setTeam(Lcom/samsung/javaomp/runtime/__OMPTeam;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->team:Lcom/samsung/javaomp/runtime/__OMPTeam;

    return-void
.end method

.method setWorkItem(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->workItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    return-void
.end method

.method setWorkshare(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->workshare:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    return-void
.end method
