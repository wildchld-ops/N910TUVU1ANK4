.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBRegionHdr;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9KDBRegionHdr"
.end annotation


# instance fields
.field public bBlockX:B

.field public bBlockY:B

.field public bRegional:B

.field public bTotalBlockCols:B

.field public bTotalBlockRows:B

.field public bTotalRegions:B

.field public dwRegionHdrOffset:I

.field public wBlockHeight:S

.field public wBlockWidth:S

.field public wBottom:S

.field public wLeft:S

.field public wRight:S

.field public wTop:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
