.class public Lcom/samsung/javaomp/runtime/__OMPICV;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/javaomp/runtime/__OMPICV$1;
    }
.end annotation


# static fields
.field static final DEF_SCHED_VAR:Lcom/samsung/javaomp/runtime/OMPSched;

.field static volatile maxActiveLevels:I


# instance fields
.field volatile inParallel:Z

.field volatile maxThreads:I

.field volatile nested:Z

.field volatile nestedActiveLevel:I

.field volatile nestedLevel:I

.field volatile runChunkSize:I

.field volatile runSchedVar:Lcom/samsung/javaomp/runtime/OMPSched;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    sput v0, Lcom/samsung/javaomp/runtime/__OMPICV;->maxActiveLevels:I

    sget-object v0, Lcom/samsung/javaomp/runtime/OMPSched;->STATIC:Lcom/samsung/javaomp/runtime/OMPSched;

    sput-object v0, Lcom/samsung/javaomp/runtime/__OMPICV;->DEF_SCHED_VAR:Lcom/samsung/javaomp/runtime/OMPSched;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumProcs()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->maxThreads:I

    iput-boolean v1, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->nested:Z

    iput v1, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedActiveLevel:I

    iput v1, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedLevel:I

    sget-object v0, Lcom/samsung/javaomp/runtime/OMPSched;->STATIC:Lcom/samsung/javaomp/runtime/OMPSched;

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->runSchedVar:Lcom/samsung/javaomp/runtime/OMPSched;

    iput v1, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->runChunkSize:I

    iput-boolean v1, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->inParallel:Z

    return-void
.end method

.method constructor <init>(Lcom/samsung/javaomp/runtime/__OMPICV;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/samsung/javaomp/runtime/__OMPICV;->inParallel:Z

    iput-boolean v0, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->inParallel:Z

    iget v0, p1, Lcom/samsung/javaomp/runtime/__OMPICV;->maxThreads:I

    iput v0, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->maxThreads:I

    iget-boolean v0, p1, Lcom/samsung/javaomp/runtime/__OMPICV;->nested:Z

    iput-boolean v0, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->nested:Z

    iget-object v0, p1, Lcom/samsung/javaomp/runtime/__OMPICV;->runSchedVar:Lcom/samsung/javaomp/runtime/OMPSched;

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->runSchedVar:Lcom/samsung/javaomp/runtime/OMPSched;

    iget v0, p1, Lcom/samsung/javaomp/runtime/__OMPICV;->runChunkSize:I

    iput v0, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->runChunkSize:I

    iget v0, p1, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedActiveLevel:I

    iput v0, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedActiveLevel:I

    iget v0, p1, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedLevel:I

    iput v0, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->nestedLevel:I

    return-void
.end method


# virtual methods
.method setSchedule(Lcom/samsung/javaomp/runtime/OMPSched;I)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/javaomp/runtime/OMPSched;->RUNTIME:Lcom/samsung/javaomp/runtime/OMPSched;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Scheduling cannot be set at runtime to runtime."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->runSchedVar:Lcom/samsung/javaomp/runtime/OMPSched;

    if-ge p2, v2, :cond_1

    sget-object v0, Lcom/samsung/javaomp/runtime/__OMPICV$1;->$SwitchMap$com$samsung$javaomp$runtime$OMPSched:[I

    iget-object v1, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->runSchedVar:Lcom/samsung/javaomp/runtime/OMPSched;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->runChunkSize:I

    goto :goto_0

    :pswitch_1
    iput v2, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->runChunkSize:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/samsung/javaomp/runtime/__OMPICV;->runChunkSize:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
