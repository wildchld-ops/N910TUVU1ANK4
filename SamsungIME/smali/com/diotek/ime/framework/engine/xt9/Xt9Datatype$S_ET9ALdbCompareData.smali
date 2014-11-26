.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9ALdbCompareData"
.end annotation


# instance fields
.field public bActiveCmpLength:B

.field public bFirstPosSetOpt:Z

.field public bPosHi:B

.field public bPosLo:B

.field public bSpcActive:Z

.field public bSpcExactCompare:Z

.field public bSpcExactFilter:Z

.field public bSpcFilteredCompare:Z

.field public bSpcLengthOffset:B

.field public bSpcMaxEdits:B

.field public pbLocked:[B

.field public ppbActive:[[B

.field public ppbExact:[[B

.field public ppbFreq:[[B

.field public pppbActiveSpc:[[[B

.field public wLength:S


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v9, 0x88

    const/16 v8, 0xb

    const/4 v7, 0x7

    const/16 v6, 0x11

    const/16 v5, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbActive:[[B

    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbExact:[[B

    filled-new-array {v7, v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[B

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->pppbActiveSpc:[[[B

    filled-new-array {v8, v9}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbFreq:[[B

    new-array v2, v5, [B

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->pbLocked:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbActive:[[B

    new-array v3, v6, [B

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbExact:[[B

    new-array v3, v6, [B

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->pppbActiveSpc:[[[B

    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    aput-object v2, v3, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->pppbActiveSpc:[[[B

    aget-object v2, v2, v0

    new-array v3, v6, [B

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v8, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbFreq:[[B

    new-array v3, v9, [B

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method
