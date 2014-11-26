.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9KDBInfo"
.end annotation


# instance fields
.field public Private:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;

.field public dwStateBits:I

.field public wFirstKdbNum:S

.field public wFirstPageNum:S

.field public wKdbNum:S

.field public wSecondKdbNum:S

.field public wSecondPageNum:S

.field public wTotalPages:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBInfo;->Private:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;

    return-void
.end method
