.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWPrivWordInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9AWPrivWordInfo"
.end annotation


# instance fields
.field public Base:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

.field public bCDBTrigram:B

.field public bEditDistSpc:B

.field public bEditDistStem:B

.field public bGroupCount:B

.field public bHasPrimEditDist:Z

.field public bIsGroupBase:Z

.field public bIsUDBWord:Z

.field public bWordQuality:B

.field public bWordSrc:B

.field public nTotFreq:I

.field public wTapFreq:S

.field public wWordFreq:S

.field public wWordFreqIndex:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWPrivWordInfo;->Base:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    return-void
.end method
