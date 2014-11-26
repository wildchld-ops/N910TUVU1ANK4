.class public Lcom/voovio/voo3d/scenegraph/Camera3D;
.super Ljava/lang/Object;
.source "Camera3D.java"


# instance fields
.field public m_aVPMatrix:[F

.field public m_aViewMatrix:[F

.field public m_fFar:F

.field m_fFov:F

.field public m_fNear:F

.field m_fPan:F

.field m_fRoll:F

.field m_fTilt:F

.field private m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field public m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field private m_oPerspectiveMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field private m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field public m_oVPMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field public m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field public m_oViewport:Lcom/voovio/voo3d/view/Viewport;

.field public m_ptPos:Lcom/voovio/voo3d/data/Vector3;

.field public m_vOut:Lcom/voovio/voo3d/data/Vector3;

.field m_vRotation:Lcom/voovio/voo3d/data/Vector3;

.field m_vScale:Lcom/voovio/voo3d/data/Vector3;

.field public m_vSide:Lcom/voovio/voo3d/data/Vector3;

.field public m_vUp:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method public constructor <init>(IIFFF)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # F
    .param p4    # F
    .param p5    # F

    const/16 v4, 0x10

    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    iput p4, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fNear:F

    iput p5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFar:F

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    const/high16 v1, 0x43960000

    invoke-direct {v0, v2, v2, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/view/Viewport;

    invoke-direct {v0, p1, p2}, Lcom/voovio/voo3d/view/Viewport;-><init>(II)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v2, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v3, v2, v2}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v2, v3, v2}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v3, v3, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v2, v2, v2}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iput v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    iput v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    iput v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aViewMatrix:[F

    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oVPMatrix:Lcom/voovio/voo3d/data/Matrix4;

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oPerspectiveMatrix:Lcom/voovio/voo3d/data/Matrix4;

    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updatePerspectiveProjection()V

    invoke-virtual {p0, v2, v2, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->lookAt(FFF)V

    return-void
.end method

.method private updateVPMatrix()V
    .locals 3

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oVPMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oPerspectiveMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oVPMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    const/high16 v2, -0x40800000

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oVPMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->multiply(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oVPMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    return-void
.end method


# virtual methods
.method public Clone()Lcom/voovio/voo3d/scenegraph/Camera3D;
    .locals 6

    new-instance v0, Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fNear:F

    iget v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFar:F

    invoke-direct/range {v0 .. v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;-><init>(IIFFF)V

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->CopyTo(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    return-object v0
.end method

.method public CopyTo(Lcom/voovio/voo3d/scenegraph/Camera3D;)V
    .locals 5
    .param p1    # Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    iput v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    iput v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    iput v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v0

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    invoke-virtual {p1, v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    return-void
.end method

.method public addFov(F)V
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    return-void
.end method

.method public addPan(F)V
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPan(F)V

    return-void
.end method

.method public addRoll(F)V
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setRoll(F)V

    return-void
.end method

.method public addRotateX(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setRotateX(F)V

    return-void
.end method

.method public addRotateY(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setRotateY(F)V

    return-void
.end method

.method public addRotateZ(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setRotateZ(F)V

    return-void
.end method

.method public addTilt(F)V
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setTilt(F)V

    return-void
.end method

.method public getFov()F
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    return v0
.end method

.method public getFovH()F
    .locals 7

    const/high16 v6, 0x40000000

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getHeight2()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    const v5, 0x3c8efa35

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getWidth2()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v6

    const v3, 0x42652ee0

    mul-float v1, v2, v3

    return v1
.end method

.method public getPan()F
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    return v0
.end method

.method public getRoll()F
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    return v0
.end method

.method public getRotateX()F
    .locals 1

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    return v0
.end method

.method public getRotateY()F
    .locals 1

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    return v0
.end method

.method public getRotateZ()F
    .locals 1

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    return v0
.end method

.method public getTilt()F
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    return v0
.end method

.method public getVector3OnFrontal(FF)Lcom/voovio/voo3d/data/Vector3;
    .locals 9
    .param p1    # F
    .param p2    # F

    new-instance v4, Lcom/voovio/voo3d/data/Vector3;

    const/high16 v5, 0x3f800000

    invoke-direct {v4, p1, p2, v5}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v0

    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, v5}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    invoke-virtual {v0, v4}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v0}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v5, v4}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual {v4}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v5}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v3, v4}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    div-float v2, v5, v6

    new-instance v1, Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v6, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v8, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    invoke-direct {v1, v5, v6, v7}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    return-object v1
.end method

.method public getViewport()Lcom/voovio/voo3d/view/Viewport;
    .locals 1

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    return-object v0
.end method

.method public lookAt(FFF)V
    .locals 3
    .param p1    # F
    .param p2    # F
    .param p3    # F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    sget-object v0, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateMatrix()V

    return-void
.end method

.method public moveHorizontallyForward(FZ)V
    .locals 3
    .param p1    # F
    .param p2    # Z

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateMatrix()V

    :cond_0
    return-void
.end method

.method public moveHorizontallySideways(FZ)V
    .locals 3
    .param p1    # F
    .param p2    # Z

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateMatrix()V

    :cond_0
    return-void
.end method

.method public moveVertically(FZ)V
    .locals 2
    .param p1    # F
    .param p2    # Z

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateMatrix()V

    :cond_0
    return-void
.end method

.method public projectVector3D(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/geometry/Point;
    .locals 8
    .param p1    # Lcom/voovio/voo3d/data/Vector3;

    iget v5, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    add-float v2, v5, v6

    iget v5, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    add-float v3, v5, v6

    iget v5, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    add-float v4, v5, v6

    const/high16 v5, 0x3f800000

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    add-float/2addr v6, v7

    div-float v0, v5, v6

    new-instance v1, Lcom/voovio/geometry/Point;

    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v5, v5, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    mul-float/2addr v5, v2

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    add-float/2addr v6, v7

    mul-float/2addr v6, v0

    invoke-direct {v1, v5, v6}, Lcom/voovio/geometry/Point;-><init>(FF)V

    return-object v1
.end method

.method public setDirection(FFFZ)V
    .locals 3
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # Z

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    sget-object v0, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateMatrix()V

    :cond_0
    return-void
.end method

.method public setFov(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updatePerspectiveProjection()V

    return-void
.end method

.method public setPan(F)V
    .locals 3
    .param p1    # F

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    sub-float v0, p1, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2, v0}, Lcom/voovio/voo3d/data/Matrix4;->axisRotation(Lcom/voovio/voo3d/data/Vector3;F)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    iput p1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    goto :goto_0
.end method

.method public setPosition(FFFZ)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # Z

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iput p1, v1, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iput p1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iput p2, v1, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iput p2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iput p3, v1, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    iput p3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateViewMatrix()V

    :cond_0
    return-void
.end method

.method public setRoll(F)V
    .locals 3
    .param p1    # F

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    sub-float v0, p1, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2, v0}, Lcom/voovio/voo3d/data/Matrix4;->axisRotation(Lcom/voovio/voo3d/data/Vector3;F)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    iput p1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    goto :goto_0
.end method

.method public setRotateX(F)V
    .locals 3
    .param p1    # F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float v0, p1, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/voovio/voo3d/data/Matrix4;->rotationX(F)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iput p1, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    goto :goto_0
.end method

.method public setRotateY(F)V
    .locals 3
    .param p1    # F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float v0, p1, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/voovio/voo3d/data/Matrix4;->rotationY(F)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iput p1, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    goto :goto_0
.end method

.method public setRotateZ(F)V
    .locals 3
    .param p1    # F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float v0, p1, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/voovio/voo3d/data/Matrix4;->rotationZ(F)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iput p1, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    goto :goto_0
.end method

.method public setTilt(F)V
    .locals 3
    .param p1    # F

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    sub-float v0, p1, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2, v0}, Lcom/voovio/voo3d/data/Matrix4;->axisRotation(Lcom/voovio/voo3d/data/Vector3;F)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    iput p1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    goto :goto_0
.end method

.method public setViewport(Lcom/voovio/voo3d/view/Viewport;)V
    .locals 0
    .param p1    # Lcom/voovio/voo3d/view/Viewport;

    iput-object p1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updatePerspectiveProjection()V

    return-void
.end method

.method public updateMatrix()V
    .locals 4

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    const/4 v3, 0x0

    iput v3, v2, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    iput v3, v1, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    iput v3, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    const/high16 v1, 0x3f800000

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateViewMatrix()V

    return-void
.end method

.method public updatePerspectiveProjection()V
    .locals 5

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oPerspectiveMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fNear:F

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFar:F

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/voovio/voo3d/data/Matrix4;->perspectiveFieldOfViewRH(FFFF)V

    invoke-direct {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateVPMatrix()V

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getWidth2()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getHeight2()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getWidth2()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v3}, Lcom/voovio/voo3d/view/Viewport;->getOffset()Lcom/voovio/geometry/Point;

    move-result-object v3

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getHeight2()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v3}, Lcom/voovio/voo3d/view/Viewport;->getOffset()Lcom/voovio/geometry/Point;

    move-result-object v3

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oPerspectiveMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->multiply(Lcom/voovio/voo3d/data/Matrix4;)V

    return-void
.end method

.method public updateViewMatrix()V
    .locals 4

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aViewMatrix:[F

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    invoke-direct {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateVPMatrix()V

    return-void
.end method
