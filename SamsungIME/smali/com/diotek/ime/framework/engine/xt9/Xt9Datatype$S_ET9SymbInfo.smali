.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SymbInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9SymbInfo"
.end annotation


# instance fields
.field public DataPerBaseSym:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9DataPerBaseSym;

.field public bAmbigType:B

.field public bAutoDowncase:B

.field public bForcedLowercase:B

.field public bLockLanguageSource:B

.field public bLocked:B

.field public bNumBaseSyms:B

.field public bSymbType:B

.field public eInputType:B

.field public eShiftState:B

.field public sLockedSymb:S

.field public wInputIndex:S

.field public wKeyIndex:S

.field public wKeyLayoutType:S

.field public wTapX:S

.field public wTapY:S


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v3, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9DataPerBaseSym;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SymbInfo;->DataPerBaseSym:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9DataPerBaseSym;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SymbInfo;->DataPerBaseSym:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9DataPerBaseSym;

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9DataPerBaseSym;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9DataPerBaseSym;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
