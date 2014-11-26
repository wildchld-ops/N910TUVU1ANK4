.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9KDBPrivate"
.end annotation


# instance fields
.field public PageHeader:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPageHdr;

.field public RegionHeader:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBRegionHdr;

.field public bCurrDiacriticState:B

.field public bKDBLoaded:Z

.field public bMTLastShiftState:B

.field public bMTLastSymbIndex:B

.field public bMTSymbCount:B

.field public bMTSymbCountSrc:B

.field public dwPageHdrOffset:I

.field public sKdbAction:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBAction;

.field public sMTSymbs:[S

.field public sMTSymbsCnv:[S

.field public sMTSymbsSrc:[S

.field public wInfoInitOK:S

.field public wKDBInitOK:S

.field public wKeyLayoutType:S

.field public wLayoutHeight:S

.field public wLayoutWidth:S

.field public wMTLastInput:S

.field public wPageArrayOffset:S

.field public wPageKeyNum:S

.field public wPageNum:S


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPageHdr;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPageHdr;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;->PageHeader:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPageHdr;

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBRegionHdr;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBRegionHdr;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;->RegionHeader:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBRegionHdr;

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;->sMTSymbs:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;->sMTSymbsSrc:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;->sMTSymbsCnv:[S

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBAction;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBAction;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;->sKdbAction:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBAction;

    return-void
.end method
