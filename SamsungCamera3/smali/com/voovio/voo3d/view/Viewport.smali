.class public Lcom/voovio/voo3d/view/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"


# instance fields
.field private m_fRatio:F

.field private m_nHeight:I

.field private m_nHeight2:I

.field private m_nWidth:I

.field private m_nWidth2:I

.field private m_ptOffset:Lcom/voovio/geometry/Point;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/voovio/voo3d/view/Viewport;->m_nWidth:I

    iput p2, p0, Lcom/voovio/voo3d/view/Viewport;->m_nHeight:I

    new-instance v0, Lcom/voovio/geometry/Point;

    invoke-direct {v0}, Lcom/voovio/geometry/Point;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_ptOffset:Lcom/voovio/geometry/Point;

    invoke-direct {p0}, Lcom/voovio/voo3d/view/Viewport;->update()V

    return-void
.end method

.method private update()V
    .locals 2

    iget v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_nWidth:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_nWidth2:I

    iget v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_nHeight:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_nHeight2:I

    iget v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_nHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_nWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/voovio/voo3d/view/Viewport;->m_nHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_fRatio:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_nHeight:I

    return v0
.end method

.method public getHeight2()I
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_nHeight2:I

    return v0
.end method

.method public getOffset()Lcom/voovio/geometry/Point;
    .locals 1

    iget-object v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_ptOffset:Lcom/voovio/geometry/Point;

    return-object v0
.end method

.method public getOffsetX()F
    .locals 1

    iget-object v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_ptOffset:Lcom/voovio/geometry/Point;

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    iget-object v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_ptOffset:Lcom/voovio/geometry/Point;

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    return v0
.end method

.method public getRatio()F
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_fRatio:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_nWidth:I

    return v0
.end method

.method public getWidth2()I
    .locals 1

    iget v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_nWidth2:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/voovio/voo3d/view/Viewport;->m_nHeight:I

    invoke-direct {p0}, Lcom/voovio/voo3d/view/Viewport;->update()V

    return-void
.end method

.method public setOffset(Lcom/voovio/geometry/Point;)V
    .locals 2
    .param p1    # Lcom/voovio/geometry/Point;

    iget-object v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_ptOffset:Lcom/voovio/geometry/Point;

    iget v1, p1, Lcom/voovio/geometry/Point;->x:F

    iput v1, v0, Lcom/voovio/geometry/Point;->x:F

    iget-object v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_ptOffset:Lcom/voovio/geometry/Point;

    iget v1, p1, Lcom/voovio/geometry/Point;->y:F

    iput v1, v0, Lcom/voovio/geometry/Point;->y:F

    return-void
.end method

.method public setOffsetX(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_ptOffset:Lcom/voovio/geometry/Point;

    iput p1, v0, Lcom/voovio/geometry/Point;->x:F

    return-void
.end method

.method public setOffsetY(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/voovio/voo3d/view/Viewport;->m_ptOffset:Lcom/voovio/geometry/Point;

    iput p1, v0, Lcom/voovio/geometry/Point;->y:F

    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/voovio/voo3d/view/Viewport;->m_nWidth:I

    invoke-direct {p0}, Lcom/voovio/voo3d/view/Viewport;->update()V

    return-void
.end method
