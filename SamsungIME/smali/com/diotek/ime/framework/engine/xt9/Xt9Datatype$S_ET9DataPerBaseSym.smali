.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9DataPerBaseSym;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9DataPerBaseSym"
.end annotation


# instance fields
.field public bDefaultCharIndex:B

.field public bNumSymsToMatch:B

.field public bSymFreq:B

.field public sChar:[C

.field public sUpperCaseChar:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9DataPerBaseSym;->sChar:[C

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9DataPerBaseSym;->sUpperCaseChar:[C

    return-void
.end method
