.class public Lcom/touchtype_fluency/KeyShape;
.super Ljava/lang/Object;
.source "KeyShape.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/touchtype_fluency/KeyShape;",
        ">;"
    }
.end annotation


# instance fields
.field private featureThresholdMultiplier:F

.field private initialScaleMultiplier:F

.field private points:[Lcom/touchtype_fluency/Point;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lcom/touchtype_fluency/Point;

    iput-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    return-void
.end method

.method public static lineKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;
    .locals 4

    const/high16 v3, 0x3f800000

    new-instance v0, Lcom/touchtype_fluency/KeyShape;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iput v3, v0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    iput v3, v0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    return-object v0
.end method

.method public static lineKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;FF)Lcom/touchtype_fluency/KeyShape;
    .locals 3

    new-instance v0, Lcom/touchtype_fluency/KeyShape;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iput p2, v0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    iput p3, v0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    return-object v0
.end method

.method public static pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;
    .locals 4

    const/high16 v3, 0x3f800000

    new-instance v0, Lcom/touchtype_fluency/KeyShape;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    iput v3, v0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    iput v3, v0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    return-object v0
.end method

.method public static pointKey(Lcom/touchtype_fluency/Point;FF)Lcom/touchtype_fluency/KeyShape;
    .locals 3

    new-instance v0, Lcom/touchtype_fluency/KeyShape;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/KeyShape;-><init>(I)V

    iget-object v1, v0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    iput p1, v0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    iput p2, v0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/touchtype_fluency/KeyShape;)I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v2, v2

    iget-object v3, p1, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Point;->compareTo(Lcom/touchtype_fluency/Point;)I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v2

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v0, v0

    iget-object v2, p1, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v0, v0

    iget-object v2, p1, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v2, v2

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/touchtype_fluency/KeyShape;

    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/KeyShape;->compareTo(Lcom/touchtype_fluency/KeyShape;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/touchtype_fluency/KeyShape;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/touchtype_fluency/KeyShape;

    iget-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    iget-object v1, p1, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFeatureThresholdMultiplier()F
    .locals 1

    iget v0, p0, Lcom/touchtype_fluency/KeyShape;->featureThresholdMultiplier:F

    return v0
.end method

.method public getInitialScaleMultiplier()F
    .locals 1

    iget v0, p0, Lcom/touchtype_fluency/KeyShape;->initialScaleMultiplier:F

    return v0
.end method

.method public getPoints()[Lcom/touchtype_fluency/Point;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v1, ""

    iget-object v0, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v0, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/touchtype_fluency/Point;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    iget-object v2, p0, Lcom/touchtype_fluency/KeyShape;->points:[Lcom/touchtype_fluency/Point;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/touchtype_fluency/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method
