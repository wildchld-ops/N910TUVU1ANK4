.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9AWBuildInfo"
.end annotation


# instance fields
.field public bCaptureInvalidated:B

.field public bCurrCapture:B

.field public bLanguageSource:[B

.field public pCaptureActions:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;

.field public pCaptures:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;

.field public pbDefaultCompLen:[B

.field public pbDefaultLen:[B

.field public pbFlushLen:[B

.field public pbFlushPos:[B

.field public psDefaultSymbs:[S

.field public psFlushedSymbs:[S

.field public pwDefaultPos:[S


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x6

    const/16 v3, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v3, [B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pbFlushPos:[B

    new-array v1, v3, [B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pbFlushLen:[B

    new-array v1, v3, [S

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pwDefaultPos:[S

    new-array v1, v3, [B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pbDefaultLen:[B

    new-array v1, v3, [B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pbDefaultCompLen:[B

    new-array v1, v3, [S

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->psFlushedSymbs:[S

    const/16 v1, 0x200

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->psDefaultSymbs:[S

    new-array v1, v3, [B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->bLanguageSource:[B

    new-array v1, v4, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pCaptures:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;

    new-array v1, v3, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pCaptureActions:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pCaptures:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pCaptureActions:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
