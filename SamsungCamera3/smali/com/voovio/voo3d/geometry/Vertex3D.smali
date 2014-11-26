.class public Lcom/voovio/voo3d/geometry/Vertex3D;
.super Lcom/voovio/voo3d/data/Vector3;
.source "Vertex3D.java"


# static fields
.field public static LVERTEX_CLASS_BACK:I

.field public static LVERTEX_CLASS_COINCIDE:I

.field public static LVERTEX_CLASS_FRONT:I

.field public static LVERTEX_CLASS_UNCLASSIFIED:I

.field public static LVERTEX_STATE_BOUNDARY:I

.field public static LVERTEX_STATE_INSIDE:I

.field public static LVERTEX_STATE_OUTSIDE:I

.field public static LVERTEX_STATE_UNDEFINED:I


# instance fields
.field public m_aClass:[I

.field public m_nState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    sput v0, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_UNCLASSIFIED:I

    sput v1, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_FRONT:I

    sput v2, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_BACK:I

    sput v3, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_COINCIDE:I

    sput v0, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_STATE_UNDEFINED:I

    sput v1, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_STATE_OUTSIDE:I

    sput v2, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_STATE_INSIDE:I

    sput v3, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_STATE_BOUNDARY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/voovio/voo3d/geometry/Vertex3D;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 3
    .param p1    # F
    .param p2    # F
    .param p3    # F

    invoke-direct {p0, p1, p2, p3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_UNCLASSIFIED:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_UNCLASSIFIED:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_UNCLASSIFIED:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_CLASS_UNCLASSIFIED:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/voovio/voo3d/geometry/Vertex3D;->m_aClass:[I

    sget v0, Lcom/voovio/voo3d/geometry/Vertex3D;->LVERTEX_STATE_UNDEFINED:I

    iput v0, p0, Lcom/voovio/voo3d/geometry/Vertex3D;->m_nState:I

    return-void
.end method

.method public static createFromVector3(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/geometry/Vertex3D;
    .locals 4
    .param p0    # Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/geometry/Vertex3D;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public Clone()Lcom/voovio/voo3d/geometry/Vertex3D;
    .locals 4

    new-instance v0, Lcom/voovio/voo3d/geometry/Vertex3D;

    iget v1, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v3, p0, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/geometry/Vertex3D;-><init>(FFF)V

    return-object v0
.end method
