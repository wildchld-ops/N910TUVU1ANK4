.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9AWLingComPrivate"
.end annotation


# instance fields
.field public ALdb:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdb;

.field public ASpc:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASpc;

.field public LeftHandWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWPrivWordInfo;

.field public bContextWordSize:B

.field public bDefaultIndex:B

.field public bExactIndex:B

.field public bHasRealWord:Z

.field public bLangSupported:[B

.field public bLastBuildLen:B

.field public bLastBuildShrinking:Z

.field public bListSize:B

.field public bPreviousContextWordSize:B

.field public bPrimaryFence:B

.field public bRequiredFound:Z

.field public bSecondaryFence:B

.field public bSpcDuringBuild:Z

.field public bStemsAllowed:Z

.field public bTotalCompletionWords:B

.field public bTotalExpTermPuncts:B

.field public bTotalSpcWords:B

.field public bTotalSymbInputs:B

.field public bTotalWords:B

.field public bWordList:[B

.field public dwDevStateBits:I

.field public dwStateBits:I

.field public eCurrSelectionListMode:B

.field public eSelectionListMode:B

.field public pASDBGetEntry:[B

.field public pLastCompletionWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWPrivWordInfo;

.field public pLastSpcWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWPrivWordInfo;

.field public pLastWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWPrivWordInfo;

.field public pUDBGetEntry:[B

.field public pWordList:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWPrivWordInfo;

.field public sBuildInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;

.field public sContextWord:[S

.field public sExpEmbeddedPunct:S

.field public sExpTermPuncts:[S

.field public sLDBAutoSub:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALDBAutoSub;

.field public sPreviousContextWord:[S

.field public snLinSearchCount:I

.field public wCurrBuildLang:S

.field public wCurrBuildSecondLanguage:S

.field public wCurrLockPoint:S

.field public wInfoInitOK:S

.field public wLdbASGetEntryRec:S

.field public wMaxCompletionCount:S

.field public wMaxWordLength:S

.field public wPreviousWordLanguage:S

.field public wTotalWordInserts:S

.field public wWordCompletionPoint:S

.field public wWordStemsPoint:S


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x10

    const/16 v1, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;->sExpTermPuncts:[S

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdb;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdb;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;->ALdb:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdb;

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALDBAutoSub;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALDBAutoSub;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;->sLDBAutoSub:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALDBAutoSub;

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;->bWordList:[B

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;->sContextWord:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;->sPreviousContextWord:[S

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASpc;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASpc;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;->ASpc:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASpc;

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;->sBuildInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWPrivWordInfo;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWPrivWordInfo;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;->LeftHandWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWPrivWordInfo;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;->bLangSupported:[B

    return-void
.end method
