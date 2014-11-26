.class public Lcom/samsung/javaomp/runtime/__OMPLoop;
.super Ljava/lang/Object;


# instance fields
.field public chunkSize:J

.field public end:J

.field public incr:J

.field public isOrdered:Z

.field public myEnd:J

.field public myStart:J

.field public schedule:Lcom/samsung/javaomp/runtime/OMPSched;

.field public start:J

.field public staticTrip:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->chunkSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->schedule:Lcom/samsung/javaomp/runtime/OMPSched;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/javaomp/runtime/__OMPLoop;->isOrdered:Z

    return-void
.end method
