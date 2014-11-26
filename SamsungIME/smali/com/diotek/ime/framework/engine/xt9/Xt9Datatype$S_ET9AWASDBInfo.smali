.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWASDBInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9AWASDBInfo"
.end annotation


# instance fields
.field public bDataArea:[B

.field public dwOffsetSaver:I

.field public dwRecordNumSaver:I

.field public sLdbASRecord:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9LdbASRecMap;

.field public wDataCheck:S

.field public wDataSize:S

.field public wEntryCount:S

.field public wLDBUseTracker:[S

.field public wRemainingMemory:S

.field public wSavedOffset:S

.field public wSavedRecordNum:S

.field public wSizeOffset:[S


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWASDBInfo;->wSizeOffset:[S

    new-array v1, v3, [S

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWASDBInfo;->wLDBUseTracker:[S

    new-array v1, v3, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9LdbASRecMap;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWASDBInfo;->sLdbASRecord:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9LdbASRecMap;

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWASDBInfo;->bDataArea:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWASDBInfo;->sLdbASRecord:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9LdbASRecMap;

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9LdbASRecMap;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9LdbASRecMap;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
