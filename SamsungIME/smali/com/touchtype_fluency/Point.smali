.class public Lcom/touchtype_fluency/Point;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/touchtype_fluency/Point;",
        ">;"
    }
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/touchtype_fluency/Point;->x:F

    iput v0, p0, Lcom/touchtype_fluency/Point;->y:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/touchtype_fluency/Point;->x:F

    iput p2, p0, Lcom/touchtype_fluency/Point;->y:F

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/touchtype_fluency/Point;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lcom/touchtype_fluency/Point;->y:F

    iget v3, p1, Lcom/touchtype_fluency/Point;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p1, Lcom/touchtype_fluency/Point;->y:F

    iget v3, p0, Lcom/touchtype_fluency/Point;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/touchtype_fluency/Point;->x:F

    iget v3, p1, Lcom/touchtype_fluency/Point;->x:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v0, p1, Lcom/touchtype_fluency/Point;->x:F

    iget v2, p0, Lcom/touchtype_fluency/Point;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/touchtype_fluency/Point;

    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/Point;->compareTo(Lcom/touchtype_fluency/Point;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/touchtype_fluency/Point;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/touchtype_fluency/Point;

    iget v1, p0, Lcom/touchtype_fluency/Point;->x:F

    iget v2, p1, Lcom/touchtype_fluency/Point;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/touchtype_fluency/Point;->y:F

    iget v2, p1, Lcom/touchtype_fluency/Point;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/touchtype_fluency/Point;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/touchtype_fluency/Point;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lcom/touchtype_fluency/Point;->x:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/Float;

    iget v2, p0, Lcom/touchtype_fluency/Point;->y:F

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    mul-int/lit16 v1, v1, 0x95

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x95

    mul-int/lit16 v0, v0, 0x95

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%f,%f"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/touchtype_fluency/Point;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/touchtype_fluency/Point;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
