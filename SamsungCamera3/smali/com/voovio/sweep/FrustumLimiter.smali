.class Lcom/voovio/sweep/FrustumLimiter;
.super Ljava/lang/Object;
.source "FrustumLimiter.java"


# instance fields
.field private m_fH2:F

.field private m_fMaxAngleX:F

.field private m_fMaxAngleY:F

.field private m_fMinAngleX:F

.field private m_fMinAngleY:F

.field private m_fW2:F

.field private m_oM:Lcom/voovio/voo3d/data/Matrix4;

.field m_vBottom:Lcom/voovio/voo3d/data/Vector3;

.field private m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

.field private m_vCamOrgSide:Lcom/voovio/voo3d/data/Vector3;

.field m_vDir:Lcom/voovio/voo3d/data/Vector3;

.field m_vLeft:Lcom/voovio/voo3d/data/Vector3;

.field m_vRight:Lcom/voovio/voo3d/data/Vector3;

.field m_vTop:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/high16 v3, 0x41200000

    const/4 v2, 0x0

    const/high16 v1, -0x3ee00000

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgSide:Lcom/voovio/voo3d/data/Vector3;

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vLeft:Lcom/voovio/voo3d/data/Vector3;

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vRight:Lcom/voovio/voo3d/data/Vector3;

    iput v2, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    iput v2, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fH2:F

    iput v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    iput v3, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    iput v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    iput v3, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    sget-object v0, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    sget-object v0, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgSide:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vLeft:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vRight:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    return-void
.end method

.method private GetFOV_H2(Lcom/voovio/voo3d/scenegraph/Camera3D;F)F
    .locals 12
    .param p1    # Lcom/voovio/voo3d/scenegraph/Camera3D;
    .param p2    # F

    invoke-virtual {p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v8

    invoke-virtual {v8}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v9

    invoke-virtual {v9}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v1, v8, v9

    const/high16 v8, 0x3f000000

    invoke-virtual {p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v9

    mul-float/2addr v8, v9

    const v9, 0x3c8efa35

    mul-float v4, v8, v9

    float-to-double v8, v1

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v3, v8

    const v0, 0x3b2b92a6

    add-float v8, v4, v0

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    iget-object v9, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v9, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v9, v9

    mul-float v6, v8, v9

    add-float v8, v3, v0

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    neg-float v8, v8

    iget-object v9, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v9, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v9, v9

    mul-float v5, v8, v9

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    iget-object v8, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v8, v8

    invoke-virtual {v7, v8, v6, v5}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    iget-object v8, p0, Lcom/voovio/sweep/FrustumLimiter;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v8, v9}, Lcom/voovio/voo3d/data/Matrix4;->rotationX(F)V

    iget-object v8, p0, Lcom/voovio/sweep/FrustumLimiter;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v8, v7}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v8, 0x0

    iput v8, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    invoke-virtual {v7}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    sget-object v8, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v7, v8}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    invoke-static {v7}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    return v2
.end method


# virtual methods
.method public Init(Lcom/voovio/sweep/Sweep;)V
    .locals 2
    .param p1    # Lcom/voovio/sweep/Sweep;

    const/high16 v1, 0x3f000000

    iget v0, p1, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    iget v0, p1, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fH2:F

    return-void
.end method

.method public Test(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;FFFFF)Z
    .locals 8
    .param p1    # Lcom/voovio/voo3d/scenegraph/Camera3D;
    .param p2    # Lcom/voovio/sweep/Voovio;
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F

    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, p4, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, p5, v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v4, p3

    iget-object v5, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v5, p4

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    add-float/2addr v6, p5

    const/4 v7, 0x1

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    invoke-virtual {p0, p1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    :cond_1
    iget-object v4, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    const v5, 0x42652ee0

    mul-float v1, v4, v5

    iget-object v4, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    const v5, 0x42652ee0

    mul-float v0, v4, v5

    add-float v3, v1, p7

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    iget v3, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    :cond_2
    :goto_0
    add-float v2, v0, p6

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_5

    iget v2, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    neg-float v5, v2

    const v6, 0x3c8efa35

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    neg-float v5, v3

    const v6, 0x3c8efa35

    mul-float/2addr v5, v6

    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v6, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v7, 0x1

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    const/4 v4, 0x0

    return v4

    :cond_4
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    iget v3, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_3

    iget v2, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    goto :goto_1
.end method

.method public TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z
    .locals 9
    .param p1    # Lcom/voovio/voo3d/scenegraph/Camera3D;
    .param p2    # Lcom/voovio/sweep/Voovio;

    const v8, 0x42652ee0

    const v7, 0x3c8efa35

    invoke-virtual {p0, p1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    iget-object v4, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    mul-float v0, v4, v8

    iget-object v4, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    mul-float v1, v4, v8

    move v2, v0

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_4

    iget v2, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    :cond_0
    :goto_0
    move v3, v1

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    iget v3, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    :cond_1
    :goto_1
    cmpl-float v4, v2, v0

    if-nez v4, :cond_2

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    neg-float v5, v2

    mul-float/2addr v5, v7

    iget-object v6, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    neg-float v5, v3

    mul-float/2addr v5, v7

    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v6, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v7, 0x1

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    :cond_3
    const/4 v4, 0x0

    return v4

    :cond_4
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    iget v2, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    iget v3, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    goto :goto_1
.end method

.method public UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V
    .locals 9
    .param p1    # Lcom/voovio/voo3d/scenegraph/Camera3D;

    const v8, 0x42652ee0

    const/4 v7, 0x0

    const/high16 v4, 0x3f000000

    invoke-virtual {p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v5

    mul-float/2addr v4, v5

    const v5, 0x3c8efa35

    mul-float v1, v4, v5

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fH2:F

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    neg-float v5, v5

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v2, v4, v7, v5}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v7, v5}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v3}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v1

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fH2:F

    neg-float v5, v5

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    neg-float v5, v5

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v2, v4, v7, v5}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v7, v5}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v3}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v1

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    neg-float v4, v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    invoke-static {v2}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v3}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    invoke-direct {p0, p1, v4}, Lcom/voovio/sweep/FrustumLimiter;->GetFOV_H2(Lcom/voovio/voo3d/scenegraph/Camera3D;F)F

    move-result v0

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vRight:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vRight:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vRight:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v0

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vLeft:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vLeft:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    neg-float v5, v5

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vLeft:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v0

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    neg-float v4, v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    return-void
.end method
