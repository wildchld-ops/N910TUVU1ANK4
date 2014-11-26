.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdb;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9ALdb"
.end annotation


# instance fields
.field public compare:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;

.field public header:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;

.field public pCursors:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCursorData;

.field public search:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbSearchData;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdb;->header:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;

    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdb;->compare:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;

    new-array v1, v3, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCursorData;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdb;->pCursors:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCursorData;

    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbSearchData;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbSearchData;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdb;->search:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbSearchData;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdb;->pCursors:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCursorData;

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCursorData;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCursorData;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
