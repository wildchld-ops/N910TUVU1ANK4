.class public Lcom/voovio/geometry/HermiteCurve;
.super Ljava/lang/Object;
.source "HermiteCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/geometry/HermiteCurve$HermitePoint;
    }
.end annotation


# instance fields
.field private m_aHermitePoints:[Lcom/voovio/geometry/HermiteCurve$HermitePoint;

.field private m_fF:[F

.field private m_nPoints:I

.field private m_ptPoint:[Lcom/voovio/geometry/Point;

.field private m_vDir:[Lcom/voovio/geometry/Point;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_nPoints:I

    iput-object v1, p0, Lcom/voovio/geometry/HermiteCurve;->m_aHermitePoints:[Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    iput-object v1, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    iput-object v1, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    iput-object v1, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    new-array v0, v2, [Lcom/voovio/geometry/Point;

    iput-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    new-array v0, v2, [Lcom/voovio/geometry/Point;

    iput-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_nPoints:I

    iput-object v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_aHermitePoints:[Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    iput-object v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    iput-object v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    iput-object v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    iput p1, p0, Lcom/voovio/geometry/HermiteCurve;->m_nPoints:I

    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    iput-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_aHermitePoints:[Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    const/high16 v3, 0x3f800000

    iget v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_nPoints:I

    int-to-float v4, v4

    div-float v1, v3, v4

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_nPoints:I

    if-le v0, v3, :cond_0

    new-array v3, v5, [Lcom/voovio/geometry/Point;

    iput-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    new-array v3, v5, [Lcom/voovio/geometry/Point;

    iput-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    new-array v3, v5, [F

    iput-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    return-void

    :cond_0
    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_aHermitePoints:[Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    new-instance v4, Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    invoke-direct {v4, p0, v2}, Lcom/voovio/geometry/HermiteCurve$HermitePoint;-><init>(Lcom/voovio/geometry/HermiteCurve;F)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-float/2addr v2, v1

    goto :goto_0
.end method

.method public constructor <init>([Lcom/voovio/geometry/HermiteCurve$HermitePoint;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_nPoints:I

    iput-object v1, p0, Lcom/voovio/geometry/HermiteCurve;->m_aHermitePoints:[Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    iput-object v1, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    iput-object v1, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    iput-object v1, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_nPoints:I

    iput-object p1, p0, Lcom/voovio/geometry/HermiteCurve;->m_aHermitePoints:[Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    new-array v0, v2, [Lcom/voovio/geometry/Point;

    iput-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    new-array v0, v2, [Lcom/voovio/geometry/Point;

    iput-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    return-void
.end method


# virtual methods
.method public getHermitePointArray()[Lcom/voovio/geometry/HermiteCurve$HermitePoint;
    .locals 1

    iget-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_aHermitePoints:[Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    return-object v0
.end method

.method public getNormal(FLcom/voovio/geometry/Point;)V
    .locals 11

    const/high16 v10, 0x40400000

    const/high16 v7, 0x40c00000

    const/4 v9, 0x1

    const/4 v8, 0x0

    mul-float v4, p1, p1

    mul-float v5, v7, v4

    mul-float v6, v7, p1

    sub-float v0, v5, v6

    mul-float v5, v10, v4

    const/high16 v6, 0x40800000

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f800000

    add-float v1, v5, v6

    const/high16 v5, -0x3f400000

    mul-float/2addr v5, v4

    mul-float v6, v7, p1

    add-float v2, v5, v6

    mul-float v5, v10, v4

    const/high16 v6, 0x40000000

    mul-float/2addr v6, p1

    sub-float v3, v5, v6

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v6, v6, v8

    iget v6, v6, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v6, v1

    iget-object v7, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v6, v6, v9

    iget v6, v6, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v6, v6, v9

    iget v6, v6, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v7, v7, v9

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p2, Lcom/voovio/geometry/Point;->x:F

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v6, v6, v8

    iget v6, v6, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v6, v1

    iget-object v7, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v6, v6, v9

    iget v6, v6, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v6, v6, v9

    iget v6, v6, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v7, v7, v9

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p2, Lcom/voovio/geometry/Point;->y:F

    invoke-virtual {p2}, Lcom/voovio/geometry/Point;->normalize()F

    return-void
.end method

.method public getPoint(I)Lcom/voovio/geometry/Point;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/voovio/geometry/HermiteCurve;->m_aHermitePoints:[Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    aget-object v0, v1, p1

    new-instance v1, Lcom/voovio/geometry/Point;

    iget v2, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->a:F

    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->b:F

    iget-object v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v4, v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->c:F

    iget-object v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->d:F

    iget-object v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v4, v4, v7

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->a:F

    iget-object v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->b:F

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->c:F

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v5, v5, v7

    iget v5, v5, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->d:F

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v5, v5, v7

    iget v5, v5, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v5, v5, v7

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/voovio/geometry/Point;-><init>(FF)V

    return-object v1
.end method

.method public getPoint(FLcom/voovio/geometry/Point;)V
    .locals 12

    const/high16 v11, 0x40400000

    const/high16 v8, 0x40000000

    const/4 v10, 0x1

    const/4 v9, 0x0

    mul-float v4, p1, p1

    mul-float v5, v4, p1

    mul-float v6, v8, v5

    mul-float v7, v11, v4

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f800000

    add-float v0, v6, v7

    mul-float v6, v8, v4

    sub-float v6, v5, v6

    add-float v1, v6, p1

    const/high16 v6, -0x40000000

    mul-float/2addr v6, v5

    mul-float v7, v11, v4

    add-float v2, v6, v7

    sub-float v3, v5, v4

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v6, v6, v9

    iget v6, v6, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v6, v0

    iget-object v7, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v7, v7, v9

    iget v7, v7, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v7, v1

    iget-object v8, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v8, v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v7, v7, v10

    iget v7, v7, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v7, v7, v10

    iget v7, v7, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v7, v3

    iget-object v8, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v8, v8, v10

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Lcom/voovio/geometry/Point;->x:F

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v6, v6, v9

    iget v6, v6, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v6, v0

    iget-object v7, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v7, v7, v9

    iget v7, v7, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v7, v1

    iget-object v8, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v8, v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v7, v7, v10

    iget v7, v7, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v7, v7, v10

    iget v7, v7, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v7, v3

    iget-object v8, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v8, v8, v10

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Lcom/voovio/geometry/Point;->y:F

    return-void
.end method

.method public getPoint(ILcom/voovio/geometry/Point;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/voovio/geometry/HermiteCurve;->m_aHermitePoints:[Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    aget-object v0, v1, p1

    iget v1, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->a:F

    iget-object v2, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->b:F

    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->c:F

    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->d:F

    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p2, Lcom/voovio/geometry/Point;->x:F

    iget v1, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->a:F

    iget-object v2, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->b:F

    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->c:F

    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->d:F

    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p2, Lcom/voovio/geometry/Point;->y:F

    return-void
.end method

.method public getPointAndNormalForValueX(FLcom/voovio/geometry/Point;Lcom/voovio/geometry/Point;)Z
    .locals 7

    const/4 v4, 0x0

    const v0, 0x3dcccccd

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/voovio/geometry/Point;->x:F

    sub-float v1, p1, v5

    :goto_0
    const/high16 v5, 0x3f800000

    cmpg-float v5, v3, v5

    if-lez v5, :cond_0

    :goto_1
    return v4

    :cond_0
    add-float v5, v3, v0

    invoke-virtual {p0, v5, p2}, Lcom/voovio/geometry/HermiteCurve;->getPoint(FLcom/voovio/geometry/Point;)V

    iget v5, p2, Lcom/voovio/geometry/Point;->x:F

    sub-float v2, p1, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    add-float v4, v3, v0

    invoke-virtual {p0, v4, p3}, Lcom/voovio/geometry/HermiteCurve;->getNormal(FLcom/voovio/geometry/Point;)V

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    mul-float v5, v1, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    add-float/2addr v3, v0

    goto :goto_0

    :cond_2
    const/high16 v5, 0x40000000

    div-float/2addr v0, v5

    goto :goto_0
.end method

.method public getPointAndNormalForValueY(FLcom/voovio/geometry/Point;Lcom/voovio/geometry/Point;)Z
    .locals 7

    const/4 v4, 0x0

    const v0, 0x3dcccccd

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/voovio/geometry/Point;->y:F

    sub-float v1, p1, v5

    :goto_0
    const/high16 v5, 0x3f800000

    cmpg-float v5, v3, v5

    if-lez v5, :cond_0

    :goto_1
    return v4

    :cond_0
    add-float v5, v3, v0

    invoke-virtual {p0, v5, p2}, Lcom/voovio/geometry/HermiteCurve;->getPoint(FLcom/voovio/geometry/Point;)V

    iget v5, p2, Lcom/voovio/geometry/Point;->y:F

    sub-float v2, p1, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    add-float v4, v3, v0

    invoke-virtual {p0, v4, p3}, Lcom/voovio/geometry/HermiteCurve;->getNormal(FLcom/voovio/geometry/Point;)V

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    mul-float v5, v1, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    add-float/2addr v3, v0

    goto :goto_0

    :cond_2
    const/high16 v5, 0x40000000

    div-float/2addr v0, v5

    goto :goto_0
.end method

.method public getPoints([F)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_nPoints:I

    if-le v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/voovio/geometry/HermiteCurve;->m_aHermitePoints:[Lcom/voovio/geometry/HermiteCurve$HermitePoint;

    aget-object v2, v3, v1

    iget v3, v2, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->a:F

    iget-object v4, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v3, v4

    iget v4, v2, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->b:F

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v5, v5, v7

    iget v5, v5, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v5, v5, v7

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v2, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->c:F

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v2, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->d:F

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, p1, v0

    add-int/lit8 v3, v0, 0x1

    iget v4, v2, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->a:F

    iget-object v5, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v5, v5, v7

    iget v5, v5, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v4, v5

    iget v5, v2, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->b:F

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v6, v6, v7

    iget v6, v6, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v2, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->c:F

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aget-object v6, v6, v8

    iget v6, v6, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v2, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->d:F

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aget-object v6, v6, v8

    iget v6, v6, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aget v6, v6, v8

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getPointsCount()I
    .locals 1

    iget v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_nPoints:I

    return v0
.end method

.method public setCurveParameters(Lcom/voovio/geometry/Point;Lcom/voovio/geometry/Point;FLcom/voovio/geometry/Point;Lcom/voovio/geometry/Point;F)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aput-object p2, v0, v1

    iget-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aput p3, v0, v1

    iget-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_ptPoint:[Lcom/voovio/geometry/Point;

    aput-object p4, v0, v2

    iget-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_vDir:[Lcom/voovio/geometry/Point;

    aput-object p5, v0, v2

    iget-object v0, p0, Lcom/voovio/geometry/HermiteCurve;->m_fF:[F

    aput p6, v0, v2

    return-void
.end method
