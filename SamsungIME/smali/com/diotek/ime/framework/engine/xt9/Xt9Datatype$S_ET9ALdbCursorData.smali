.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCursorData;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9ALdbCursorData"
.end annotation


# instance fields
.field public dwCurrCacheStart:I

.field public dwEndPos:I

.field public dwJumpAddress:I

.field public dwJumpPos:I

.field public dwSourceDataLength:I

.field public dwSourceDataStart:I

.field public dwStartPos:I

.field public pbCache:[B

.field public pbCacheEnd:[B

.field public pbCurrData:[B

.field public wCode:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCursorData;->pbCache:[B

    return-void
.end method
