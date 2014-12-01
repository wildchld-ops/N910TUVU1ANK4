.class public Lcom/voovio/voo3d/scenegraph/VelocityVector;
.super Ljava/lang/Object;
.source "VelocityVector.java"


# static fields
.field public static final ALL_MOVEMENTS:I = 0xff

.field public static final HORIZONTALLY:I = 0x10

.field public static final MULTIPLIER:I = 0x1

.field public static final MULTIPLIER_ANGULAR:I = 0x1

.field public static final MULTIPLIER_FAST:I = 0x1

.field public static final MULTIPLIER_LINEAR:I = 0x0

.field public static final MULTIPLIER_NORMAL:I = 0x0

.field public static final MULTIPLIER_SLOW:I = 0x2

.field public static final MULTIPLIER_ZOOM:I = 0x2

.field public static final ROTATEX:I = 0x2

.field public static final ROTATEY:I = 0x4

.field public static final ROTATEZ:I = 0x8

.field public static final SIDEWAYS:I = 0x20

.field public static final TYPE_INCREMENTAL:I = 0x0

.field public static final TYPE_VECTOR:I = 0x1

.field public static final UPDATE_ALL:I = 0x1

.field public static final UPDATE_ROTATION:I = 0x4

.field public static final UPDATE_TRANSLATION:I = 0x8

.field public static final UPDATE_ZOOM:I = 0x2

.field public static final UPWARDS:I = 0x40

.field public static final ZOOM:I = 0x80


# instance fields
.field public m_aMultiplier:[I

.field public m_aMultiplierValues:[[F

.field public m_fAVFov:F

.field public m_fAVRotateX:F

.field public m_fAVRotateY:F

.field public m_fAVRotateZ:F

.field public m_fLVHorizontally:F

.field public m_fLVSideways:F

.field public m_fLVUpwards:F

.field public m_fMultiplierAngular:F

.field public m_fMultiplierLinear:F

.field public m_fMultiplierZoom:F

.field public m_nAllowedMovements:I

.field public m_nType:I

.field public m_vVel:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/voo3d/scenegraph/VelocityVector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const/high16 v4, 0x3f800000

    const/4 v3, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nType:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    new-array v0, v3, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    iput v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    iput v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierAngular:F

    iput v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierZoom:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/VelocityVector;->ForbidMovements(I)V

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/VelocityVector;->Zero()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000
        0x40200000
        0x3ecccccd
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x40200000
        0x3ecccccd
    .end array-data

    :array_2
    .array-data 4
        0x3f800000
        0x40200000
        0x3ecccccd
    .end array-data
.end method


# virtual methods
.method public AllowMovements(I)V
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    return-void
.end method

.method public Clone()Lcom/voovio/voo3d/scenegraph/VelocityVector;
    .locals 1

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/VelocityVector;->Clone(F)Lcom/voovio/voo3d/scenegraph/VelocityVector;

    move-result-object v0

    return-object v0
.end method

.method public Clone(F)Lcom/voovio/voo3d/scenegraph/VelocityVector;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;

    invoke-direct {v0}, Lcom/voovio/voo3d/scenegraph/VelocityVector;-><init>()V

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nType:I

    iput v1, v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nType:I

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    iput v1, v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateX:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateX:F

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateY:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateY:F

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateZ:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateZ:F

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVHorizontally:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVHorizontally:F

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVSideways:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVSideways:F

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVUpwards:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVUpwards:F

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVFov:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVFov:F

    new-array v1, v7, [I

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    aget v2, v2, v4

    aput v2, v1, v4

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    aget v2, v2, v5

    aput v2, v1, v5

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    aget v2, v2, v6

    aput v2, v1, v6

    iput-object v1, v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    new-array v1, v7, [[F

    new-array v2, v7, [F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v3, v3, v4

    aget v3, v3, v4

    aput v3, v2, v4

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v3, v3, v4

    aget v3, v3, v5

    aput v3, v2, v5

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v3, v3, v4

    aget v3, v3, v6

    aput v3, v2, v6

    aput-object v2, v1, v4

    new-array v2, v7, [F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v3, v3, v5

    aget v3, v3, v4

    aput v3, v2, v4

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v3, v3, v5

    aget v3, v3, v5

    aput v3, v2, v5

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v3, v3, v5

    aget v3, v3, v6

    aput v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v7, [F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v3, v3, v6

    aget v3, v3, v4

    aput v3, v2, v4

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v3, v3, v6

    aget v3, v3, v5

    aput v3, v2, v5

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v3, v3, v6

    aget v3, v3, v6

    aput v3, v2, v6

    aput-object v2, v1, v6

    iput-object v1, v0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    return-object v0
.end method

.method public ForbidMovements(I)V
    .locals 2

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    return-void
.end method

.method public GetCameraFinalPosition(Lcom/voovio/voo3d/scenegraph/Camera3D;)Lcom/voovio/voo3d/data/Vector3;
    .locals 1

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, p1, v0}, Lcom/voovio/voo3d/scenegraph/VelocityVector;->GetCameraFinalPosition(Lcom/voovio/voo3d/scenegraph/Camera3D;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public GetCameraFinalPosition(Lcom/voovio/voo3d/scenegraph/Camera3D;F)Lcom/voovio/voo3d/data/Vector3;
    .locals 2

    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/voovio/voo3d/scenegraph/VelocityVector;->GetCameraFinalPosition(Lcom/voovio/voo3d/scenegraph/Camera3D;FLcom/voovio/voo3d/data/Vector3;)V

    return-object v0
.end method

.method public GetCameraFinalPosition(Lcom/voovio/voo3d/scenegraph/Camera3D;FLcom/voovio/voo3d/data/Vector3;)V
    .locals 6

    iget-object v3, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p3, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nType:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v3, v3, 0x10

    shr-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVHorizontally:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float v0, v3, v4

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v3, v3, 0x20

    shr-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVSideways:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float v1, v3, v4

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v3, v3, 0x40

    shr-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVUpwards:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float v2, v3, v4

    iget v3, p3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v3, p3, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v4, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p3, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v3, p3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v3, p3, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v4, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p3, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v3, p3, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v3, v2

    iput v3, p3, Lcom/voovio/voo3d/data/Vector3;->y:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    if-eqz v3, :cond_0

    iget v3, p3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v4, p2

    iget v5, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v3, p3, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v4, p2

    iget v5, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p3, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v3, p3, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v4, p2

    iget v5, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p3, Lcom/voovio/voo3d/data/Vector3;->z:F

    goto :goto_0
.end method

.method public GetCameraFinalPosition(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/voo3d/data/Vector3;)V
    .locals 1

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, p1, v0, p2}, Lcom/voovio/voo3d/scenegraph/VelocityVector;->GetCameraFinalPosition(Lcom/voovio/voo3d/scenegraph/Camera3D;FLcom/voovio/voo3d/data/Vector3;)V

    return-void
.end method

.method public GetMultiplierValue(II)F
    .locals 1

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public IsEmpty()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nType:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v2, v2, 0x2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateX:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v2, v2, 0x4

    shr-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateY:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateZ:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v2, v2, 0x10

    shr-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVHorizontally:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v2, v2, 0x20

    shr-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVSideways:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v2, v2, 0x40

    shr-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVUpwards:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVFov:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nType:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v2, v2, 0x2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateX:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v2, v2, 0x4

    shr-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateY:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateZ:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    float-to-double v2, v2

    cmpl-double v2, v2, v5

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    float-to-double v2, v2

    cmpl-double v2, v2, v5

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    float-to-double v2, v2

    cmpl-double v2, v2, v5

    if-nez v2, :cond_0

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVFov:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public IsOnlyRotating()Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v4, v4, 0x2

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateX:F

    mul-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v4, v4, 0x4

    shr-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateY:F

    mul-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v4, v4, 0x8

    shr-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    iget v5, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateZ:F

    mul-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    move v1, v2

    :goto_0
    const/4 v0, 0x0

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nType:I

    if-nez v4, :cond_3

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v4, v4, 0x10

    shr-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    iget v5, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVHorizontally:F

    mul-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v4, v4, 0x20

    shr-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    iget v5, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVSideways:F

    mul-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v4, v4, 0x40

    shr-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    iget v5, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVUpwards:F

    mul-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    move v0, v2

    :cond_0
    :goto_1
    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    :goto_2
    return v3

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nType:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    new-instance v5, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v5}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    invoke-virtual {v4, v5}, Lcom/voovio/voo3d/data/Vector3;->equals(Lcom/voovio/voo3d/data/Vector3;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    :goto_3
    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v3, v2

    goto :goto_2
.end method

.method public Negate()V
    .locals 2

    const/high16 v1, -0x40800000

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->negate()V

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateX:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateX:F

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateZ:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateZ:F

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateY:F

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVHorizontally:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVHorizontally:F

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVSideways:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVSideways:F

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVUpwards:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVUpwards:F

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVFov:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVFov:F

    return-void
.end method

.method public SetMultiplierMode(II)V
    .locals 1

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    aput p2, v0, p1

    return-void
.end method

.method public SetMultiplierValue(IIF)V
    .locals 1

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v0, v0, p1

    aput p3, v0, p2

    return-void
.end method

.method public SetMultipliers(F)V
    .locals 0

    iput p1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    iput p1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierAngular:F

    iput p1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierZoom:F

    return-void
.end method

.method public UpdateCamera(Lcom/voovio/voo3d/scenegraph/Camera3D;)V
    .locals 2

    const/high16 v0, 0x3f800000

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/voovio/voo3d/scenegraph/VelocityVector;->UpdateCamera(Lcom/voovio/voo3d/scenegraph/Camera3D;FI)V

    return-void
.end method

.method public UpdateCamera(Lcom/voovio/voo3d/scenegraph/Camera3D;FI)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/VelocityVector;->UpdateMultipliers()V

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit16 v0, v0, 0x80

    shr-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVFov:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierZoom:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->addFov(F)V

    :cond_1
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_2

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v0, v0, 0x2

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierAngular:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->addTilt(F)V

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v0, v0, 0x4

    shr-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateY:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierAngular:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->addRotateY(F)V

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v0, v0, 0x8

    shr-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateZ:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierAngular:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->addRoll(F)V

    :cond_3
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_4

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nType:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v0, v0, 0x10

    shr-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVHorizontally:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->moveHorizontallyForward(FZ)V

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v0, v0, 0x20

    shr-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVSideways:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->moveHorizontallySideways(FZ)V

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v0, v0, 0x40

    shr-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVUpwards:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->moveVertically(FZ)V

    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateMatrix()V

    return-void

    :cond_6
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v0, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v0, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    goto :goto_0
.end method

.method public UpdateMultipliers()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_nAllowedMovements:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    aget v1, v1, v2

    aget v0, v0, v1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    aget v1, v1, v3

    aget v0, v0, v1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierAngular:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    aget v1, v1, v4

    aget v0, v0, v1

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierZoom:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v0, v0, v2

    aget v0, v0, v2

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierLinear:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v0, v0, v3

    aget v0, v0, v2

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierAngular:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplierValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v2

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fMultiplierZoom:F

    goto :goto_0
.end method

.method public Zero()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateX:F

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateZ:F

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVRotateY:F

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVHorizontally:F

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVSideways:F

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fLVUpwards:F

    iput v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_fAVFov:F

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    aput v2, v0, v2

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_aMultiplier:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/VelocityVector;->m_vVel:Lcom/voovio/voo3d/data/Vector3;

    return-void
.end method
