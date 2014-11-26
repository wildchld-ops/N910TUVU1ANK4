.class public Lcom/voovio/geometry/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/geometry/Point;->y:F

    iput v0, p0, Lcom/voovio/geometry/Point;->x:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1    # F
    .param p2    # F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/voovio/geometry/Point;->x:F

    iput p2, p0, Lcom/voovio/geometry/Point;->y:F

    return-void
.end method

.method public static add(Lcom/voovio/geometry/Point;Lcom/voovio/geometry/Point;)Lcom/voovio/geometry/Point;
    .locals 4
    .param p0    # Lcom/voovio/geometry/Point;
    .param p1    # Lcom/voovio/geometry/Point;

    new-instance v0, Lcom/voovio/geometry/Point;

    iget v1, p0, Lcom/voovio/geometry/Point;->x:F

    iget v2, p1, Lcom/voovio/geometry/Point;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/geometry/Point;->y:F

    iget v3, p1, Lcom/voovio/geometry/Point;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public static interpolate(Lcom/voovio/geometry/Point;Lcom/voovio/geometry/Point;F)Lcom/voovio/geometry/Point;
    .locals 5
    .param p0    # Lcom/voovio/geometry/Point;
    .param p1    # Lcom/voovio/geometry/Point;
    .param p2    # F

    invoke-virtual {p1}, Lcom/voovio/geometry/Point;->clone()Lcom/voovio/geometry/Point;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/voovio/geometry/Point;->sub(Lcom/voovio/geometry/Point;)V

    new-instance v1, Lcom/voovio/geometry/Point;

    iget v2, p0, Lcom/voovio/geometry/Point;->x:F

    iget v3, v0, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iget v3, p0, Lcom/voovio/geometry/Point;->y:F

    iget v4, v0, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/voovio/geometry/Point;-><init>(FF)V

    return-object v1
.end method

.method public static pointInPolygon(Lcom/voovio/geometry/Point;[Lcom/voovio/geometry/Point;)Z
    .locals 10
    .param p0    # Lcom/voovio/geometry/Point;
    .param p1    # [Lcom/voovio/geometry/Point;

    const/4 v5, 0x1

    const/4 v0, 0x0

    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    and-int/lit8 v6, v0, 0x1

    if-ne v6, v5, :cond_4

    :goto_1
    return v5

    :cond_0
    aget-object v6, p1, v1

    iget v6, v6, Lcom/voovio/geometry/Point;->y:F

    iget v7, p0, Lcom/voovio/geometry/Point;->y:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    aget-object v6, p1, v2

    iget v6, v6, Lcom/voovio/geometry/Point;->y:F

    iget v7, p0, Lcom/voovio/geometry/Point;->y:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    :cond_1
    aget-object v6, p1, v1

    iget v6, v6, Lcom/voovio/geometry/Point;->y:F

    iget v7, p0, Lcom/voovio/geometry/Point;->y:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    aget-object v6, p1, v2

    iget v6, v6, Lcom/voovio/geometry/Point;->y:F

    iget v7, p0, Lcom/voovio/geometry/Point;->y:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    :cond_2
    iget v6, p0, Lcom/voovio/geometry/Point;->y:F

    aget-object v7, p1, v1

    iget v7, v7, Lcom/voovio/geometry/Point;->y:F

    sub-float/2addr v6, v7

    aget-object v7, p1, v2

    iget v7, v7, Lcom/voovio/geometry/Point;->y:F

    aget-object v8, p1, v1

    iget v8, v8, Lcom/voovio/geometry/Point;->y:F

    sub-float/2addr v7, v8

    div-float v4, v6, v7

    iget v6, p0, Lcom/voovio/geometry/Point;->x:F

    aget-object v7, p1, v1

    iget v7, v7, Lcom/voovio/geometry/Point;->x:F

    aget-object v8, p1, v2

    iget v8, v8, Lcom/voovio/geometry/Point;->x:F

    aget-object v9, p1, v1

    iget v9, v9, Lcom/voovio/geometry/Point;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    move v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static scale(Lcom/voovio/geometry/Point;F)Lcom/voovio/geometry/Point;
    .locals 3
    .param p0    # Lcom/voovio/geometry/Point;
    .param p1    # F

    new-instance v0, Lcom/voovio/geometry/Point;

    iget v1, p0, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public static sub(Lcom/voovio/geometry/Point;Lcom/voovio/geometry/Point;)Lcom/voovio/geometry/Point;
    .locals 4
    .param p0    # Lcom/voovio/geometry/Point;
    .param p1    # Lcom/voovio/geometry/Point;

    new-instance v0, Lcom/voovio/geometry/Point;

    iget v1, p0, Lcom/voovio/geometry/Point;->x:F

    iget v2, p1, Lcom/voovio/geometry/Point;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/geometry/Point;->y:F

    iget v3, p1, Lcom/voovio/geometry/Point;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/voovio/geometry/Point;)V
    .locals 2
    .param p1    # Lcom/voovio/geometry/Point;

    iget v0, p0, Lcom/voovio/geometry/Point;->x:F

    iget v1, p1, Lcom/voovio/geometry/Point;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/geometry/Point;->x:F

    iget v0, p0, Lcom/voovio/geometry/Point;->y:F

    iget v1, p1, Lcom/voovio/geometry/Point;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/geometry/Point;->y:F

    return-void
.end method

.method public clone()Lcom/voovio/geometry/Point;
    .locals 3

    new-instance v0, Lcom/voovio/geometry/Point;

    iget v1, p0, Lcom/voovio/geometry/Point;->x:F

    iget v2, p0, Lcom/voovio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/geometry/Point;->clone()Lcom/voovio/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/voovio/geometry/Point;)V
    .locals 1
    .param p1    # Lcom/voovio/geometry/Point;

    iget v0, p1, Lcom/voovio/geometry/Point;->x:F

    iput v0, p0, Lcom/voovio/geometry/Point;->x:F

    iget v0, p1, Lcom/voovio/geometry/Point;->y:F

    iput v0, p0, Lcom/voovio/geometry/Point;->y:F

    return-void
.end method

.method public dot(Lcom/voovio/geometry/Point;)F
    .locals 3
    .param p1    # Lcom/voovio/geometry/Point;

    iget v0, p0, Lcom/voovio/geometry/Point;->x:F

    iget v1, p1, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/geometry/Point;->y:F

    iget v2, p1, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public dotPerp(Lcom/voovio/geometry/Point;)F
    .locals 3
    .param p1    # Lcom/voovio/geometry/Point;

    iget v0, p0, Lcom/voovio/geometry/Point;->x:F

    iget v1, p1, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/geometry/Point;->y:F

    iget v2, p1, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public equals(Lcom/voovio/geometry/Point;)Z
    .locals 2
    .param p1    # Lcom/voovio/geometry/Point;

    iget v0, p0, Lcom/voovio/geometry/Point;->x:F

    iget v1, p1, Lcom/voovio/geometry/Point;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/voovio/geometry/Point;->y:F

    iget v1, p1, Lcom/voovio/geometry/Point;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAngle(Lcom/voovio/geometry/Point;)F
    .locals 5
    .param p1    # Lcom/voovio/geometry/Point;

    iget v1, p0, Lcom/voovio/geometry/Point;->x:F

    iget v2, p1, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/geometry/Point;->y:F

    iget v3, p1, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0000000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    const/high16 v0, 0x3f800000

    :cond_0
    :goto_0
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1

    :cond_1
    float-to-double v1, v0

    const-wide/high16 v3, -0x4010000000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/high16 v0, -0x40800000

    goto :goto_0
.end method

.method public getDistance(Lcom/voovio/geometry/Point;)F
    .locals 1
    .param p1    # Lcom/voovio/geometry/Point;

    invoke-static {p0, p1}, Lcom/voovio/geometry/Point;->sub(Lcom/voovio/geometry/Point;Lcom/voovio/geometry/Point;)Lcom/voovio/geometry/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voovio/geometry/Point;->length()F

    move-result v0

    return v0
.end method

.method public length()F
    .locals 3

    iget v0, p0, Lcom/voovio/geometry/Point;->x:F

    iget v1, p0, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/geometry/Point;->y:F

    iget v2, p0, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public normalize()F
    .locals 1

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/voovio/geometry/Point;->normalize(F)F

    move-result v0

    return v0
.end method

.method public normalize(F)F
    .locals 3
    .param p1    # F

    invoke-virtual {p0}, Lcom/voovio/geometry/Point;->length()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    div-float v0, p1, v1

    iget v2, p0, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/voovio/geometry/Point;->x:F

    iget v2, p0, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/voovio/geometry/Point;->y:F

    :cond_0
    return v1
.end method

.method public offset(FF)V
    .locals 1
    .param p1    # F
    .param p2    # F

    iget v0, p0, Lcom/voovio/geometry/Point;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/voovio/geometry/Point;->x:F

    iget v0, p0, Lcom/voovio/geometry/Point;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/voovio/geometry/Point;->y:F

    return-void
.end method

.method public rotate(F)V
    .locals 7
    .param p1    # F

    invoke-virtual {p0}, Lcom/voovio/geometry/Point;->clone()Lcom/voovio/geometry/Point;

    move-result-object v0

    iget v1, v0, Lcom/voovio/geometry/Point;->x:F

    float-to-double v1, v1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, v0, Lcom/voovio/geometry/Point;->y:F

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/voovio/geometry/Point;->x:F

    iget v1, v0, Lcom/voovio/geometry/Point;->x:F

    float-to-double v1, v1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, v0, Lcom/voovio/geometry/Point;->y:F

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    neg-float v1, v1

    iput v1, p0, Lcom/voovio/geometry/Point;->y:F

    return-void
.end method

.method public sub(Lcom/voovio/geometry/Point;)V
    .locals 2
    .param p1    # Lcom/voovio/geometry/Point;

    iget v0, p0, Lcom/voovio/geometry/Point;->x:F

    iget v1, p1, Lcom/voovio/geometry/Point;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/geometry/Point;->x:F

    iget v0, p0, Lcom/voovio/geometry/Point;->y:F

    iget v1, p1, Lcom/voovio/geometry/Point;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/geometry/Point;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/voovio/geometry/Point;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .param p1    # I

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/voovio/geometry/Point;->x:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
