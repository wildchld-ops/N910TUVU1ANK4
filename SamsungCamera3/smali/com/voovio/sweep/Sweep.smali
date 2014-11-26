.class public final Lcom/voovio/sweep/Sweep;
.super Ljava/lang/Object;
.source "Sweep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/Sweep$DecodeImageRunnable;,
        Lcom/voovio/sweep/Sweep$NodeInfo;
    }
.end annotation


# static fields
.field static final DEFAULT_FORWARD:F = 300.0f

.field static final DEFAULT_FOV_V:F = 50.0f

.field static final DEFAULT_IMAGE_ASPECT:F = 1.5f

.field static final DEFAULT_IMAGE_HEIGHT:I = 0x2aa

.field static final DEFAULT_IMAGE_WIDTH:I = 0x400

.field public static KEYWORD:Ljava/lang/String; = null

.field static final NUM_EX_THDS:I = 0x4

.field static POT_TEXTURES:Z = false

.field static final RADIUS_OFFSET_H:F = -150.0f

.field static final RADIUS_OFFSET_V:F = -50.0f

.field static final SWEEP_STATE_COMPLETE:I = 0x3

.field static final SWEEP_STATE_ERROR:I = -0x1

.field static final SWEEP_STATE_LOADING:I = 0x1

.field static final SWEEP_STATE_READY:I = 0x2

.field static final SWEEP_STATE_VOID:I

.field public static VERSION:Ljava/lang/String;


# instance fields
.field m_aTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Transition;",
            ">;"
        }
    .end annotation
.end field

.field m_aVoovios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field m_decodedBitmaps:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field m_fFOV:F

.field m_fRadiusOffset:F

.field m_nHeight:I

.field m_nImageHeight:I

.field m_nImageWidth:I

.field m_nOrientation:I

.field m_nState:I

.field m_nWidth:I

.field m_oExecutorService:Ljava/util/concurrent/ExecutorService;

.field m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

.field m_strSEFFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "1.9.5e 13/08/2014"

    sput-object v0, Lcom/voovio/sweep/Sweep;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/voovio/sweep/Sweep;->POT_TEXTURES:Z

    const-string v0, "Voovio_Sweep_VirtualTour"

    sput-object v0, Lcom/voovio/sweep/Sweep;->KEYWORD:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_oExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_decodedBitmaps:Ljava/util/concurrent/SynchronousQueue;

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/high16 v0, -0x3cea0000

    iput v0, p0, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    new-instance v0, Lcom/voovio/sweep/VoovioGeometry;

    invoke-direct {v0}, Lcom/voovio/sweep/VoovioGeometry;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    const/high16 v0, 0x42480000

    iput v0, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    return-void
.end method

.method public static final TradeOffHeuristic(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;
    .locals 8
    .param p0    # Lcom/voovio/voo3d/data/Vector3;
    .param p1    # F

    const/high16 v7, 0x43c80000

    const/high16 v6, 0x43960000

    const/high16 v5, 0x41a00000

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_0

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x432f0000

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    :cond_0
    iput v6, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v4, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v4, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v3, 0x43160000

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float v0, v6, v2

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    :cond_2
    return-object v1
.end method

.method public static Voovio_Sweep_VirtualTour()V
    .locals 0

    return-void
.end method

.method private adjustAngle(F)F
    .locals 12
    .param p1    # F

    const/high16 v11, 0x3f000000

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-le v7, v8, :cond_1

    const/high16 v6, 0x44800000

    :goto_0
    const-wide v7, 0x4051800000000000L

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v2, v11, v7

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-ge v7, v8, :cond_0

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    int-to-float v8, v8

    div-float v0, v7, v8

    float-to-double v7, v0

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    double-to-float v2, v7

    :cond_0
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000

    add-float v4, v7, v8

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    const-wide/high16 v8, 0x3fe0000000000000L

    iget v10, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v1, v7, v8

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    add-float v5, v1, v7

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    div-float v7, v6, v7

    div-float v8, v4, v5

    mul-float/2addr v7, v8

    mul-float v3, v7, p1

    return v3

    :cond_1
    const/high16 v6, 0x43e30000

    goto :goto_0
.end method

.method private appendVoovio(I)V
    .locals 7
    .param p1    # I

    new-instance v0, Lcom/voovio/sweep/Voovio;

    iget v2, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iget v3, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iget v4, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iget v5, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v6, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/voovio/sweep/Voovio;-><init>(Lcom/voovio/sweep/Sweep;FIIII)V

    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nId:I

    iput p1, v0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final createSweep([IIII[Lcom/voovio/sweep/Template;[Lcom/voovio/voo3d/data/Vector3;[F)Lcom/voovio/sweep/Sweep;
    .locals 10
    .param p0    # [I
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # [Lcom/voovio/sweep/Template;
    .param p5    # [Lcom/voovio/voo3d/data/Vector3;
    .param p6    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/voovio/sweep/SweepException;
        }
    .end annotation

    array-length v5, p0

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    new-instance v5, Lcom/voovio/sweep/SweepException;

    const-string v6, "Parameters exception: The number of Images must be at least 1"

    invoke-direct {v5, v6}, Lcom/voovio/sweep/SweepException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    array-length v5, p4

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    new-instance v5, Lcom/voovio/sweep/SweepException;

    const-string v6, "Parameters exception: The number of Templates must be equal to the number of Photos minus one"

    invoke-direct {v5, v6}, Lcom/voovio/sweep/SweepException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    int-to-float v5, p1

    int-to-float v6, p2

    div-float v0, v5, v6

    new-instance v3, Lcom/voovio/sweep/Sweep;

    invoke-direct {v3}, Lcom/voovio/sweep/Sweep;-><init>()V

    iput p3, v3, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/high16 v5, 0x3f800000

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    const v5, 0x43aa8000

    const-wide v6, 0x3fdbecde60000000L

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float v1, v5, v6

    const/16 v5, 0x400

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iget v5, v3, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    const v5, 0x42e52ee0

    const/high16 v6, 0x3f000000

    iget v7, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    :goto_0
    iput p1, v3, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iput p2, v3, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    const/high16 v5, 0x3f800000

    cmpl-float v5, v0, v5

    if-lez v5, :cond_4

    const/high16 v5, -0x3cea0000

    :goto_1
    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    iget-object v5, v3, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    invoke-virtual {v5, v3}, Lcom/voovio/sweep/VoovioGeometry;->Create(Lcom/voovio/sweep/Sweep;)V

    const/4 v5, 0x0

    aget v5, p0, v5

    invoke-virtual {v3, v5}, Lcom/voovio/sweep/Sweep;->append(I)V

    const/4 v2, 0x1

    :goto_2
    array-length v5, p0

    if-lt v2, v5, :cond_5

    :cond_2
    const/4 v5, 0x3

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nState:I

    return-object v3

    :cond_3
    const/16 v5, 0x2aa

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iget v5, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    const/high16 v5, 0x42480000

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    goto :goto_0

    :cond_4
    const/high16 v5, -0x3db80000

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v2, -0x1

    aget-object v5, p4, v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v2, -0x1

    aget-object v5, p4, v5

    invoke-virtual {v5}, Lcom/voovio/sweep/Template;->isRotation()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz p5, :cond_7

    add-int/lit8 v5, v2, -0x1

    aget-object v5, p5, v5

    if-eqz v5, :cond_7

    aget v5, p0, v2

    add-int/lit8 v6, v2, -0x1

    aget-object v6, p5, v6

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-int/lit8 v7, v2, -0x1

    aget-object v7, p5, v7

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-int/lit8 v8, v2, -0x1

    aget v8, p6, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/voovio/sweep/Sweep;->appendFromTurnMatchingData(IFFF)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    if-eqz p6, :cond_8

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_8

    aget v5, p0, v2

    add-int/lit8 v6, v2, -0x1

    aget v6, p6, v6

    invoke-virtual {v3, v5, v6}, Lcom/voovio/sweep/Sweep;->appendFromAngle(IF)V

    goto :goto_3

    :cond_8
    aget v6, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v7, p4, v5

    if-eqz p6, :cond_9

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    :goto_4
    invoke-virtual {v3, v6, v7, v5}, Lcom/voovio/sweep/Sweep;->appendFromTemplate(ILcom/voovio/sweep/Template;F)V

    goto :goto_3

    :cond_9
    const/high16 v5, 0x7fc00000

    goto :goto_4

    :cond_a
    if-eqz p5, :cond_c

    add-int/lit8 v5, v2, -0x1

    aget-object v5, p5, v5

    if-eqz v5, :cond_c

    aget v6, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v7, p5, v5

    if-eqz p6, :cond_b

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    :goto_5
    invoke-virtual {v3, v6, v7, v5}, Lcom/voovio/sweep/Sweep;->appendFromTranslation(ILcom/voovio/voo3d/data/Vector3;F)V

    const/4 v5, 0x1

    if-le v2, v5, :cond_6

    iget-object v5, v3, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Transition;

    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->TranslateRearPortalToVoovioOrigin()V

    goto :goto_3

    :cond_b
    const/high16 v5, 0x7fc00000

    goto :goto_5

    :cond_c
    aget v6, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v7, p4, v5

    if-eqz p6, :cond_d

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    :goto_6
    invoke-virtual {v3, v6, v7, v5}, Lcom/voovio/sweep/Sweep;->appendFromTemplate(ILcom/voovio/sweep/Template;F)V

    goto :goto_3

    :cond_d
    const/high16 v5, 0x7fc00000

    goto :goto_6
.end method


# virtual methods
.method append(I)V
    .locals 3
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    return-void
.end method

.method appendFromAngle(IF)V
    .locals 7
    .param p1    # I
    .param p2    # F

    invoke-direct {p0, p2}, Lcom/voovio/sweep/Sweep;->adjustAngle(F)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    new-instance v2, Lcom/voovio/sweep/Transition;

    invoke-direct {v2, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v2, v5}, Lcom/voovio/sweep/Transition;->FromAngle(F)V

    invoke-virtual {v2, p2}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    invoke-virtual {v4}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    return-void
.end method

.method appendFromTemplate(ILcom/voovio/sweep/Template;F)V
    .locals 6
    .param p1    # I
    .param p2    # Lcom/voovio/sweep/Template;
    .param p3    # F

    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    new-instance v1, Lcom/voovio/sweep/Transition;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    invoke-virtual {v1, p2}, Lcom/voovio/sweep/Transition;->FromTemplate(Lcom/voovio/sweep/Template;)V

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setWalkingSteps(F)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    goto :goto_0
.end method

.method appendFromTranslation(ILcom/voovio/voo3d/data/Vector3;F)V
    .locals 6
    .param p1    # I
    .param p2    # Lcom/voovio/voo3d/data/Vector3;
    .param p3    # F

    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    new-instance v1, Lcom/voovio/sweep/Transition;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    invoke-static {p2, p3}, Lcom/voovio/sweep/Sweep;->TradeOffHeuristic(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/voovio/sweep/Transition;->FromTranslation(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setWalkingSteps(F)V

    :cond_0
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    :cond_1
    return-void
.end method

.method appendFromTurnMatchingData(IFFF)V
    .locals 20
    .param p1    # I
    .param p2    # F
    .param p3    # F
    .param p4    # F

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x43660000

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/Sweep;->appendFromAngle(IF)V

    :goto_0
    return-void

    :cond_0
    const/high16 v15, 0x3f000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v9, v15, v16

    const/high16 v15, 0x3f000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const-wide/high16 v16, 0x3fe0000000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    div-float v4, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    add-float v10, v4, v15

    const/high16 v15, 0x40000000

    div-float v16, v9, v10

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->atan(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v5, v15, v16

    mul-float v15, v9, v9

    mul-float v16, v10, v10

    add-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v7, v15

    mul-float v15, v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v8, v15, v16

    mul-float v15, v8, p2

    div-float/2addr v15, v7

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    double-to-float v6, v15

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/voovio/sweep/Sweep;->adjustAngle(F)F

    move-result v15

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    double-to-float v3, v15

    mul-float v15, v6, v3

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_1

    sub-float v15, v6, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x41a00000

    cmpl-float v15, v15, v16

    if-lez v15, :cond_2

    :cond_1
    move v6, v3

    const/16 p3, 0x0

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v16, v11, -0x2

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v16, v11, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/voovio/sweep/Voovio;

    new-instance v12, Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    neg-float v15, v8

    mul-float v15, v15, p3

    invoke-virtual {v12, v6, v15}, Lcom/voovio/sweep/Transition;->FromAngle(FF)V

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    invoke-virtual {v14}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    goto/16 :goto_0
.end method

.method public clone()Lcom/voovio/sweep/Sweep;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v2, Lcom/voovio/sweep/Sweep;

    invoke-direct {v2}, Lcom/voovio/sweep/Sweep;-><init>()V

    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    iput-object v7, v2, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iput-object v7, v2, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nState:I

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-lt v0, v1, :cond_1

    return-object v2

    :cond_0
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Voovio;

    invoke-virtual {v7}, Lcom/voovio/sweep/Voovio;->clone()Lcom/voovio/sweep/Voovio;

    move-result-object v4

    iput-object v2, v4, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Transition;

    invoke-virtual {v7}, Lcom/voovio/sweep/Transition;->clone()Lcom/voovio/sweep/Transition;

    move-result-object v3

    iput-object v2, v3, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voovio/sweep/Voovio;

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aput-object v5, v7, v9

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aput-object v6, v7, v10

    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aput-object v3, v7, v9

    iget-object v7, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aput-object v3, v7, v10

    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/sweep/Sweep;->clone()Lcom/voovio/sweep/Sweep;

    move-result-object v0

    return-object v0
.end method

.method createHighResTextures(Lcom/voovio/sweep/ResourceManager;ILandroid/graphics/Bitmap$Config;)V
    .locals 21
    .param p1    # Lcom/voovio/sweep/ResourceManager;
    .param p2    # I
    .param p3    # Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    :goto_1
    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/high16 v19, 0x3f800000

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v8, v19, v20

    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v19, v19, v8

    move/from16 v0, v19

    float-to-int v14, v0

    int-to-float v0, v10

    move/from16 v19, v0

    mul-float v19, v19, v8

    move/from16 v0, v19

    float-to-int v13, v0

    move-object/from16 v0, p3

    invoke-static {v14, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v19, 0x13

    move/from16 v0, v19

    if-lt v7, v0, :cond_0

    move-object/from16 v0, v17

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/high16 v12, -0x80000000

    const/4 v9, 0x0

    :goto_3
    if-lt v9, v15, :cond_4

    new-array v4, v12, [B

    const/4 v9, 0x0

    :goto_4
    if-lt v9, v15, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    return-void

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v12, :cond_5

    move/from16 v12, v18

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4, v9}, Lcom/voovio/sweep/ImageProvider;->getImageDataByIndex(Ljava/lang/String;[BI)V

    const/16 v19, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v5, v6, :cond_7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    move-object v6, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/voovio/sweep/Voovio;->CreateHighResTexture(Landroid/graphics/Bitmap;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4
.end method

.method createLowResTextures(Lcom/voovio/sweep/ResourceManager;I)V
    .locals 24
    .param p1    # Lcom/voovio/sweep/ResourceManager;
    .param p2    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    :goto_1
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/high16 v22, 0x3f800000

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    int-to-float v0, v14

    move/from16 v22, v0

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v22, v0

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x13

    move/from16 v0, v22

    if-ge v7, v0, :cond_4

    sget-object v22, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    const/4 v12, 0x0

    :goto_3
    if-lt v12, v15, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :goto_4
    return-void

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->getImage(Lcom/voovio/sweep/Voovio;)Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/voovio/sweep/Voovio;->CreateLowResTexture(Landroid/graphics/Bitmap;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_oExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v22, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_decodedBitmaps:Ljava/util/concurrent/SynchronousQueue;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_5

    new-instance v22, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_5
    new-instance v22, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v12, 0x0

    :goto_6
    const/16 v22, 0x4

    move/from16 v0, v22

    if-lt v12, v0, :cond_7

    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v12, 0x0

    :goto_7
    if-lt v12, v8, :cond_9

    const/4 v12, 0x0

    move v9, v8

    :goto_8
    if-lt v12, v15, :cond_a

    const/4 v12, 0x0

    :goto_9
    const/16 v22, 0x4

    move/from16 v0, v22

    if-lt v12, v0, :cond_b

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_oExecutorService:Ljava/util/concurrent/ExecutorService;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_decodedBitmaps:Ljava/util/concurrent/SynchronousQueue;

    goto/16 :goto_4

    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v22, v0

    new-instance v23, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;-><init>(Lcom/voovio/sweep/Sweep;ILcom/voovio/sweep/ResourceManager;I)V

    invoke-interface/range {v22 .. v23}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_decodedBitmaps:Ljava/util/concurrent/SynchronousQueue;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual/range {v21 .. v21}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/voovio/sweep/Voovio;->CreateLowResTexture(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    if-ge v9, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v22, v0

    new-instance v23, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v9, 0x1

    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;-><init>(Lcom/voovio/sweep/Sweep;ILcom/voovio/sweep/ResourceManager;I)V

    invoke-interface/range {v22 .. v23}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_a
    add-int/lit8 v12, v12, 0x1

    move v9, v8

    goto/16 :goto_8

    :catch_0
    move-exception v10

    move v8, v9

    :goto_b
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Bitmap;

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    :catch_1
    move-exception v10

    goto :goto_b

    :cond_c
    move v8, v9

    goto :goto_a
.end method

.method public getImageAspect()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-le v0, v1, :cond_0

    const-string v0, "horizontal"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vertical"

    goto :goto_0
.end method

.method public getImageAspectRatio()F
    .locals 2

    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    return v0
.end method

.method getNeighbours(Lcom/voovio/sweep/Voovio;Ljava/util/ArrayList;)V
    .locals 8
    .param p1    # Lcom/voovio/sweep/Voovio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voovio/sweep/Voovio;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    iput v6, p1, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    iget v7, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    sub-int v7, v4, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v0, 0x1

    :goto_0
    if-le v0, v2, :cond_0

    return-void

    :cond_0
    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    sub-int v1, v6, v0

    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    add-int v3, v6, v0

    if-ge v3, v4, :cond_1

    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    iput v0, v5, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ltz v1, :cond_2

    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    iput v0, v5, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNodesInfo()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Sweep$NodeInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/high16 v4, 0x42c80000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    if-lt v8, v0, :cond_0

    new-instance v10, Lcom/voovio/geometry/Matrix;

    invoke-direct {v10}, Lcom/voovio/geometry/Matrix;-><init>()V

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_1

    invoke-static/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    :goto_2
    return-object v2

    :cond_0
    new-instance v19, Lcom/voovio/sweep/Sweep$NodeInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/Sweep$NodeInfo;-><init>(Lcom/voovio/sweep/Sweep;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/voovio/sweep/Transition;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voovio/sweep/Sweep$NodeInfo;

    add-int/lit8 v19, v8, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/voovio/sweep/Sweep$NodeInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v3

    invoke-virtual {v10}, Lcom/voovio/geometry/Matrix;->identity()V

    invoke-virtual {v10, v3}, Lcom/voovio/geometry/Matrix;->rotate(F)V

    const/16 v19, 0x0

    cmpl-float v19, v3, v19

    if-nez v19, :cond_4

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    iput v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_nType:I

    iput v3, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fAngle:F

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    invoke-virtual/range {v16 .. v16}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v19

    if-nez v19, :cond_2

    if-lez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/voovio/sweep/Transition;

    move-object/from16 v15, v19

    :goto_4
    if-nez v15, :cond_6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v17, v0

    :goto_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v19

    move/from16 v0, v19

    iput v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    :cond_2
    iget-object v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lcom/voovio/geometry/Matrix;->transformPoint(Lcom/voovio/geometry/Point;Lcom/voovio/geometry/Point;)V

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v20, v0

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v21, v0

    mul-float v21, v21, v4

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->x:F

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v20, v0

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v21, v0

    mul-float v21, v21, v4

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->y:F

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v20, v0

    sub-float v5, v19, v20

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v20, v0

    sub-float v6, v19, v20

    const/16 v19, 0x0

    cmpl-float v19, v3, v19

    if-nez v19, :cond_3

    const/16 v19, 0x0

    cmpl-float v19, v6, v19

    if-eqz v19, :cond_3

    const/high16 v19, 0x3f000000

    mul-float v19, v19, v4

    mul-float v19, v19, v6

    div-float v7, v19, v5

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v20, v0

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v7

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->x:F

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v20, v0

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v21, v0

    mul-float v21, v21, v7

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->y:F

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_4
    const/16 v19, 0x1

    goto/16 :goto_3

    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_6
    iget-object v0, v15, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v17, v0

    goto/16 :goto_5

    :cond_7
    new-instance v11, Lcom/voovio/sweep/Sweep$NodeInfo;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/voovio/sweep/Sweep$NodeInfo;-><init>(Lcom/voovio/sweep/Sweep;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_nType:I

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fAngle:F

    const/high16 v19, 0x43960000

    move/from16 v0, v19

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/voovio/sweep/Sweep$NodeInfo;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/voovio/sweep/Sweep$NodeInfo;-><init>(Lcom/voovio/sweep/Sweep;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_nType:I

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fAngle:F

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    iget-object v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v20, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v21, v0

    mul-float v21, v21, v4

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->x:F

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    iget-object v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v20, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v21, v0

    mul-float v21, v21, v4

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->y:F

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public getTransition(I)Lcom/voovio/sweep/Transition;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Transition;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSEFFile(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
