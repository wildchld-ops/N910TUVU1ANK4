.class Lcom/voovio/sweep/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# instance fields
.field public m_aScale:[F

.field public m_oM:Lcom/voovio/voo3d/data/Matrix4;

.field public m_oR:Lcom/voovio/voo3d/data/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iput-object v0, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    invoke-virtual {p0}, Lcom/voovio/sweep/Transform;->Init()V

    return-void
.end method


# virtual methods
.method public Copy(Lcom/voovio/sweep/Transform;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p1, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p1, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    iget-object v1, p1, Lcom/voovio/sweep/Transform;->m_aScale:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    iget-object v1, p1, Lcom/voovio/sweep/Transform;->m_aScale:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    iget-object v1, p1, Lcom/voovio/sweep/Transform;->m_aScale:[F

    aget v1, v1, v4

    aput v1, v0, v4

    return-void
.end method

.method public CopyTo(Lcom/voovio/sweep/Transform;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v0, p1, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v0, p1, Lcom/voovio/sweep/Transform;->m_aScale:[F

    iget-object v1, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p1, Lcom/voovio/sweep/Transform;->m_aScale:[F

    iget-object v1, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p1, Lcom/voovio/sweep/Transform;->m_aScale:[F

    iget-object v1, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    aget v1, v1, v4

    aput v1, v0, v4

    return-void
.end method

.method public GlobalToLocal(Lcom/voovio/sweep/Transform;)V
    .locals 3

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v0

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    iget-object v2, p1, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, v2}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    iget-object v2, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v0}, Lcom/voovio/voo3d/data/Matrix4;->rightMultiply(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v2, p1, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    iget-object v2, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v1}, Lcom/voovio/voo3d/data/Matrix4;->rightMultiply(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-static {v0}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    return-void
.end method

.method public Init()V
    .locals 7

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    if-nez v0, :cond_0

    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    :goto_0
    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    if-nez v0, :cond_1

    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    :goto_1
    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000

    aput v6, v4, v5

    aput v6, v2, v3

    aput v6, v0, v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    goto :goto_1
.end method

.method public Rotate(FFF)V
    .locals 3

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v0

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    invoke-virtual {v0, p1}, Lcom/voovio/voo3d/data/Matrix4;->rotationX(F)V

    invoke-virtual {v1, v0}, Lcom/voovio/voo3d/data/Matrix4;->rightMultiply(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual {v0, p2}, Lcom/voovio/voo3d/data/Matrix4;->rotationY(F)V

    invoke-virtual {v1, v0}, Lcom/voovio/voo3d/data/Matrix4;->rightMultiply(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual {v0, p3}, Lcom/voovio/voo3d/data/Matrix4;->rotationZ(F)V

    invoke-virtual {v1, v0}, Lcom/voovio/voo3d/data/Matrix4;->rightMultiply(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v2, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v1}, Lcom/voovio/voo3d/data/Matrix4;->rightMultiply(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v2, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v1}, Lcom/voovio/voo3d/data/Matrix4;->rightMultiply(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-static {v0}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    return-void
.end method

.method public Rotate(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 3

    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/voovio/sweep/Transform;->Rotate(FFF)V

    return-void
.end method

.method public TransformWith(Lcom/voovio/sweep/Transform;)V
    .locals 4

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p1, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->rightMultiply(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p1, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->rightMultiply(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget-object v3, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iget-object v3, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_aScale:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iget-object v3, p0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public Translate(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iput p1, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iput p2, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iget-object v0, p0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iput p3, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    return-void
.end method

.method public Translate(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 3

    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v1, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v2, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/voovio/sweep/Transform;->Translate(FFF)V

    return-void
.end method
