.class public Lcom/voovio/geometry/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/voovio/geometry/Rectangle;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iput p2, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iput p3, p0, Lcom/voovio/geometry/Rectangle;->width:F

    iput p4, p0, Lcom/voovio/geometry/Rectangle;->height:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/voovio/geometry/Rectangle;
    .locals 5

    new-instance v0, Lcom/voovio/geometry/Rectangle;

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v2, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iget v3, p0, Lcom/voovio/geometry/Rectangle;->width:F

    iget v4, p0, Lcom/voovio/geometry/Rectangle;->height:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/voovio/geometry/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/geometry/Rectangle;->clone()Lcom/voovio/geometry/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public containsPoint(FF)Z
    .locals 2
    .param p1    # F
    .param p2    # F

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->x:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->width:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->y:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->height:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsPoint(Lcom/voovio/geometry/Point;)Z
    .locals 3
    .param p1    # Lcom/voovio/geometry/Point;

    iget v0, p1, Lcom/voovio/geometry/Point;->x:F

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/voovio/geometry/Point;->x:F

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v2, p0, Lcom/voovio/geometry/Rectangle;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lcom/voovio/geometry/Point;->y:F

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/voovio/geometry/Point;->y:F

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iget v2, p0, Lcom/voovio/geometry/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public extend(Lcom/voovio/geometry/Point;)V
    .locals 6
    .param p1    # Lcom/voovio/geometry/Point;

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v4, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v5, p0, Lcom/voovio/geometry/Rectangle;->width:F

    add-float v2, v4, v5

    iget v3, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iget v4, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iget v5, p0, Lcom/voovio/geometry/Rectangle;->height:F

    add-float v0, v4, v5

    iget v4, p1, Lcom/voovio/geometry/Point;->x:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_0

    iget v4, p1, Lcom/voovio/geometry/Point;->x:F

    iput v4, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v4, p0, Lcom/voovio/geometry/Rectangle;->x:F

    sub-float v4, v2, v4

    iput v4, p0, Lcom/voovio/geometry/Rectangle;->width:F

    :cond_0
    iget v4, p1, Lcom/voovio/geometry/Point;->y:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_1

    iget v4, p1, Lcom/voovio/geometry/Point;->y:F

    iput v4, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iget v4, p0, Lcom/voovio/geometry/Rectangle;->y:F

    sub-float v4, v0, v4

    iput v4, p0, Lcom/voovio/geometry/Rectangle;->height:F

    :cond_1
    iget v4, p1, Lcom/voovio/geometry/Point;->x:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_2

    iget v4, p1, Lcom/voovio/geometry/Point;->x:F

    iget v5, p0, Lcom/voovio/geometry/Rectangle;->x:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/voovio/geometry/Rectangle;->width:F

    :cond_2
    iget v4, p1, Lcom/voovio/geometry/Point;->y:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_3

    iget v4, p1, Lcom/voovio/geometry/Point;->y:F

    iget v5, p0, Lcom/voovio/geometry/Rectangle;->y:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/voovio/geometry/Rectangle;->height:F

    :cond_3
    return-void
.end method

.method public getBottom()F
    .locals 2

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getBottomRight()Lcom/voovio/geometry/Point;
    .locals 4

    new-instance v0, Lcom/voovio/geometry/Point;

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v2, p0, Lcom/voovio/geometry/Rectangle;->width:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iget v3, p0, Lcom/voovio/geometry/Rectangle;->height:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public getCenter()Lcom/voovio/geometry/Point;
    .locals 5

    const/high16 v4, 0x40000000

    new-instance v0, Lcom/voovio/geometry/Point;

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v2, p0, Lcom/voovio/geometry/Rectangle;->width:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iget v3, p0, Lcom/voovio/geometry/Rectangle;->height:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public getLeft()F
    .locals 1

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->x:F

    return v0
.end method

.method public getRight()F
    .locals 2

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTop()F
    .locals 1

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->y:F

    return v0
.end method

.method public getTopLeft()Lcom/voovio/geometry/Point;
    .locals 3

    new-instance v0, Lcom/voovio/geometry/Point;

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v2, p0, Lcom/voovio/geometry/Rectangle;->y:F

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public inflate(FF)V
    .locals 3
    .param p1    # F
    .param p2    # F

    const/high16 v2, 0x40000000

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->width:F

    mul-float v1, v2, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/geometry/Rectangle;->width:F

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->height:F

    mul-float v1, v2, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/geometry/Rectangle;->height:F

    return-void
.end method

.method public makePoint(Lcom/voovio/geometry/Point;)V
    .locals 0
    .param p1    # Lcom/voovio/geometry/Point;

    invoke-virtual {p0, p1}, Lcom/voovio/geometry/Rectangle;->setTopLeft(Lcom/voovio/geometry/Point;)V

    invoke-virtual {p0, p1}, Lcom/voovio/geometry/Rectangle;->setBottomRight(Lcom/voovio/geometry/Point;)V

    return-void
.end method

.method public setBottom(F)V
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->y:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/voovio/geometry/Rectangle;->height:F

    return-void
.end method

.method public setBottomRight(Lcom/voovio/geometry/Point;)V
    .locals 2
    .param p1    # Lcom/voovio/geometry/Point;

    iget v0, p1, Lcom/voovio/geometry/Point;->x:F

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/geometry/Rectangle;->width:F

    iget v0, p1, Lcom/voovio/geometry/Point;->y:F

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/geometry/Rectangle;->height:F

    return-void
.end method

.method public setLeft(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    return-void
.end method

.method public setRight(F)V
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/voovio/geometry/Rectangle;->x:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/voovio/geometry/Rectangle;->width:F

    return-void
.end method

.method public setTop(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/voovio/geometry/Rectangle;->y:F

    return-void
.end method

.method public setTopLeft(Lcom/voovio/geometry/Point;)V
    .locals 1
    .param p1    # Lcom/voovio/geometry/Point;

    iget v0, p1, Lcom/voovio/geometry/Point;->x:F

    iput v0, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v0, p1, Lcom/voovio/geometry/Point;->y:F

    iput v0, p0, Lcom/voovio/geometry/Rectangle;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->y:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->width:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->height:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(Lcom/voovio/geometry/Rectangle;)Lcom/voovio/geometry/Rectangle;
    .locals 6
    .param p1    # Lcom/voovio/geometry/Rectangle;

    new-instance v0, Lcom/voovio/geometry/Rectangle;

    iget v1, p0, Lcom/voovio/geometry/Rectangle;->x:F

    iget v2, p1, Lcom/voovio/geometry/Rectangle;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/voovio/geometry/Rectangle;->y:F

    iget v3, p1, Lcom/voovio/geometry/Rectangle;->y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/voovio/geometry/Rectangle;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/voovio/geometry/Rectangle;->getRight()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0}, Lcom/voovio/geometry/Rectangle;->getBottom()F

    move-result v4

    invoke-virtual {p1}, Lcom/voovio/geometry/Rectangle;->getBottom()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/voovio/geometry/Rectangle;-><init>(FFFF)V

    return-object v0
.end method
