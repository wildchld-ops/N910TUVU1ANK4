.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfoPrivate;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9WordSymbInfoPrivate"
.end annotation


# instance fields
.field public bCompoundingDownshift:B

.field public bCurrSelListIndex:B

.field public bInputRestarted:Z

.field public bLastShiftState:B

.field public bPreventWhiteSpaceInput:Z

.field public bRequiredLastShiftState:B

.field public bRequiredLocate:Z

.field public bRequiredVerifyInput:Z

.field public bSwitchLanguage:B

.field public eAutocapWord:B

.field public eCurrPostShiftMode:B

.field public ppEditionsList:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9BaseLingInfo;

.field public sRequiredWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

.field public sSavedInputWords:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWords;

.field public szIDBVersion:[S

.field public wAutocapCast:S

.field public wIDBVersionStrSize:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfoPrivate;->sRequiredWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWords;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWords;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfoPrivate;->sSavedInputWords:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWords;

    const/16 v0, 0x64

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfoPrivate;->szIDBVersion:[S

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9BaseLingInfo;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfoPrivate;->ppEditionsList:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9BaseLingInfo;

    return-void
.end method
