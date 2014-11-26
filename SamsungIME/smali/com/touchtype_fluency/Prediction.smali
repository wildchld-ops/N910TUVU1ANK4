.class public Lcom/touchtype_fluency/Prediction;
.super Ljava/util/AbstractList;
.source "Prediction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/touchtype_fluency/Term;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final keys:[Ljava/lang/String;

.field private final prediction:[Lcom/touchtype_fluency/Term;

.field private final probability:D

.field private final separators:[Ljava/lang/String;

.field private final tags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final termBreaks:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/touchtype_fluency/Prediction;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;DLjava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/touchtype_fluency/Term;

    new-array v2, v8, [Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Integer;

    move-object v0, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/touchtype_fluency/Prediction;-><init>([Lcom/touchtype_fluency/Term;[Ljava/lang/String;DLjava/util/Set;[Ljava/lang/String;[Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    new-instance v1, Lcom/touchtype_fluency/Term;

    invoke-direct {v1, p1}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v8

    return-void
.end method

.method public constructor <init>([Lcom/touchtype_fluency/Term;[Ljava/lang/String;DLjava/util/Set;[Ljava/lang/Integer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/touchtype_fluency/Term;",
            "[",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/touchtype_fluency/Prediction;-><init>([Lcom/touchtype_fluency/Term;[Ljava/lang/String;DLjava/util/Set;[Ljava/lang/String;[Ljava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>([Lcom/touchtype_fluency/Term;[Ljava/lang/String;DLjava/util/Set;[Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/touchtype_fluency/Term;",
            "[",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    iput-object p2, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    iput-wide p3, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    iput-object p5, p0, Lcom/touchtype_fluency/Prediction;->tags:Ljava/util/Set;

    iput-object p6, p0, Lcom/touchtype_fluency/Prediction;->keys:[Ljava/lang/String;

    iput-object p7, p0, Lcom/touchtype_fluency/Prediction;->termBreaks:[Ljava/lang/Integer;

    return-void
.end method

.method private static approxEquals(DD)Z
    .locals 8

    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2eb1c432dL

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/touchtype_fluency/Prediction;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {p0}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    iget-wide v3, p1, Lcom/touchtype_fluency/Prediction;->probability:D

    invoke-static {v1, v2, v3, v4}, Lcom/touchtype_fluency/Prediction;->approxEquals(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/Prediction;->tags:Ljava/util/Set;

    iget-object v2, p1, Lcom/touchtype_fluency/Prediction;->tags:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public get(I)Lcom/touchtype_fluency/Term;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/Prediction;->get(I)Lcom/touchtype_fluency/Term;

    move-result-object v0

    return-object v0
.end method

.method public getPrediction()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    array-length v1, v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    array-length v1, v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/touchtype_fluency/Prediction;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProbability()D
    .locals 2

    iget-wide v0, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    return-wide v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, ""

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    aget-object v0, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSeparators()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->separators:[Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->tags:Ljava/util/Set;

    return-object v0
.end method

.method public getTermBreaks()[Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->termBreaks:[Ljava/lang/Integer;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->termBreaks:[Ljava/lang/Integer;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->termBreaks:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/touchtype_fluency/Prediction;->tags:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit16 v2, v2, 0x95

    mul-int/lit16 v2, v2, 0x95

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x95

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x95

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/Prediction;->prediction:[Lcom/touchtype_fluency/Term;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "%s : %e"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/touchtype_fluency/Prediction;->probability:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
