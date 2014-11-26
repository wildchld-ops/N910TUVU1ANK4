.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbSearchData;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9ALdbSearchData"
.end annotation


# instance fields
.field public bCurrWordLength:B

.field public bExhausted:Z

.field public bRegCmpLength:B

.field public bSpcCompare:Z

.field public bSpcControlPos:B

.field public bSpcNonZeroPos:B

.field public dwCurrItem:I

.field public dwRegNonMatchEndPos:I

.field public dwSpcControlEndPos:I

.field public dwWordLengthEndPos:I

.field public pbRegPosCurrOrder:[B

.field public psTarget:[S

.field public pwLength:[S

.field public wTargetLength:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbSearchData;->pbRegPosCurrOrder:[B

    return-void
.end method
