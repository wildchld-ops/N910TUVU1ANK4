.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9ALdbHeaderData"
.end annotation


# instance fields
.field public bHasUppercase:Z

.field public bPosCount:B

.field public pbCharacterEncodeTable:[B

.field public pbOneByteCodes:[B

.field public pbOneByteLengths:[B

.field public pbPosOrder:[B

.field public pdwIntervalOffsets:[I

.field public psCharacterDecodeTable:[S

.field public sCharacterEncodeExtendFirstChar:S

.field public sCharacterEncodeExtendLastChar:S

.field public wCharacterDecodeCount:S

.field public wCharacterEncodeExtendCount:S

.field public wCodeIntervalEnd:S

.field public wCodeIntervalExtend:S

.field public wCodeIntervalJump:S

.field public wCodeNone:S

.field public wCodeZero:S


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;->pbCharacterEncodeTable:[B

    const/16 v0, 0x88

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;->psCharacterDecodeTable:[S

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;->pbOneByteCodes:[B

    const/16 v0, 0xff

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;->pbOneByteLengths:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;->pbPosOrder:[B

    const/16 v0, 0x21

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;->pdwIntervalOffsets:[I

    return-void
.end method
