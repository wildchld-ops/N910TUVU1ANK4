.class public Lcom/quramsoft/qdio/QdioVisualization;
.super Ljava/lang/Object;
.source "QdioVisualization.java"


# static fields
.field private static final visualizationBands:[[I

.field private static final visualizationRandSeed:[I


# instance fields
.field private prev_amplitude:I

.field private prev_visualization:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0xb

    const/16 v0, 0x15

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v5, v2, v3

    aput v8, v2, v5

    aput v7, v2, v6

    const/4 v3, 0x3

    aput v6, v2, v3

    aput v6, v2, v7

    aput v5, v2, v8

    const/4 v3, 0x6

    aput v5, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v6, v2, v3

    const/16 v3, 0xa

    aput v5, v2, v3

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v4, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    sput-object v0, Lcom/quramsoft/qdio/QdioVisualization;->visualizationBands:[[I

    new-array v0, v4, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/quramsoft/qdio/QdioVisualization;->visualizationRandSeed:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x6
        0x5
        0x3
        0x2
        0x1
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x7
        0x6
        0x5
        0x3
        0x2
        0x2
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
        0x7
        0x7
        0x4
        0x3
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x9
        0x9
        0x7
        0x4
        0x4
        0x3
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x3
        0xa
        0xa
        0x8
        0x6
        0x3
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x3
        0xb
        0xa
        0x8
        0x7
        0x4
        0x3
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x4
        0xc
        0xb
        0x7
        0x8
        0x4
        0x3
        0x4
        0x1
        0x4
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x4
        0xd
        0xc
        0x7
        0x7
        0x5
        0x3
        0x3
        0x2
        0x4
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x4
        0xe
        0xc
        0xa
        0x8
        0x6
        0x3
        0x2
        0x2
        0x4
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x5
        0xe
        0xd
        0x7
        0x9
        0x7
        0x3
        0x3
        0x3
        0x5
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x6
        0xe
        0xe
        0x7
        0xa
        0x6
        0x3
        0x4
        0x3
        0x5
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x7
        0xf
        0xf
        0x7
        0xa
        0x7
        0x3
        0x2
        0x4
        0x5
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x8
        0xf
        0xf
        0x7
        0x8
        0x8
        0x3
        0x3
        0x4
        0x6
        0x3
    .end array-data

    :array_d
    .array-data 4
        0xa
        0xf
        0x10
        0xa
        0xc
        0x8
        0x7
        0x4
        0x5
        0x7
        0x4
    .end array-data

    :array_e
    .array-data 4
        0xb
        0x10
        0xf
        0xd
        0xc
        0xa
        0x7
        0x5
        0x5
        0x8
        0x5
    .end array-data

    :array_f
    .array-data 4
        0xd
        0x11
        0x11
        0xf
        0xe
        0xc
        0xa
        0x8
        0x7
        0xa
        0x7
    .end array-data

    :array_10
    .array-data 4
        0xe
        0x12
        0x11
        0x10
        0xf
        0xe
        0xc
        0xa
        0xa
        0xd
        0xa
    .end array-data

    :array_11
    .array-data 4
        0x10
        0x12
        0x12
        0x12
        0x10
        0x10
        0xf
        0xf
        0xf
        0x10
        0x10
    .end array-data

    :array_12
    .array-data 4
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x12
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x12
    .end array-data

    :array_14
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v3, 0xb

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v3, [I

    iput-object v1, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_visualization:[I

    iput v2, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_amplitude:I

    iput v2, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_amplitude:I

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_visualization:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clipVisualizatoin(I)I
    .locals 1
    .param p1    # I

    const/16 v0, 0x14

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method public getAudioAnalysisData([BI[I[I)V
    .locals 10
    .param p1    # [B
    .param p2    # I
    .param p3    # [I
    .param p4    # [I

    const/high16 v9, 0x42480000

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v6, p2

    if-lt v0, v6, :cond_3

    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v6, p2

    int-to-float v6, v6

    div-float/2addr v3, v6

    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v6, p2

    int-to-float v6, v6

    div-float/2addr v2, v6

    sub-float/2addr v3, v9

    sub-float/2addr v2, v9

    cmpg-float v6, v3, v8

    if-gez v6, :cond_1

    const/4 v3, 0x0

    :cond_1
    cmpg-float v6, v2, v8

    if-gez v6, :cond_2

    const/4 v2, 0x0

    :cond_2
    float-to-int v6, v3

    aput v6, p4, v5

    float-to-int v6, v2

    aput v6, p3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, p1, v1

    or-int/2addr v6, v7

    int-to-short v4, v6

    add-int/lit8 v1, v1, 0x2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public getVisualizationBands(I)[I
    .locals 7
    .param p1    # I

    const/16 v5, 0xb

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v2, v5, [I

    const/16 v3, 0x32

    if-ge p1, v3, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_16

    iput v4, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_amplitude:I

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v5, :cond_15

    :cond_0
    return-object v2

    :cond_1
    const/16 v3, 0x64

    if-ge p1, v3, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x96

    if-ge p1, v3, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const/16 v3, 0xc8

    if-ge p1, v3, :cond_4

    const/4 p1, 0x3

    goto :goto_0

    :cond_4
    const/16 v3, 0x12c

    if-ge p1, v3, :cond_5

    const/4 p1, 0x4

    goto :goto_0

    :cond_5
    const/16 v3, 0x190

    if-ge p1, v3, :cond_6

    const/4 p1, 0x5

    goto :goto_0

    :cond_6
    const/16 v3, 0x1f4

    if-ge p1, v3, :cond_7

    const/4 p1, 0x6

    goto :goto_0

    :cond_7
    const/16 v3, 0x258

    if-ge p1, v3, :cond_8

    const/4 p1, 0x7

    goto :goto_0

    :cond_8
    const/16 v3, 0x2bc

    if-ge p1, v3, :cond_9

    const/16 p1, 0x8

    goto :goto_0

    :cond_9
    const/16 v3, 0x320

    if-ge p1, v3, :cond_a

    const/16 p1, 0x9

    goto :goto_0

    :cond_a
    const/16 v3, 0x3e8

    if-ge p1, v3, :cond_b

    const/16 p1, 0xa

    goto :goto_0

    :cond_b
    const/16 v3, 0x4b0

    if-ge p1, v3, :cond_c

    const/16 p1, 0xb

    goto :goto_0

    :cond_c
    const/16 v3, 0x578

    if-ge p1, v3, :cond_d

    const/16 p1, 0xc

    goto :goto_0

    :cond_d
    const/16 v3, 0x640

    if-ge p1, v3, :cond_e

    const/16 p1, 0xd

    goto :goto_0

    :cond_e
    const/16 v3, 0x708

    if-ge p1, v3, :cond_f

    const/16 p1, 0xe

    goto :goto_0

    :cond_f
    const/16 v3, 0x7d0

    if-ge p1, v3, :cond_10

    const/16 p1, 0xf

    goto :goto_0

    :cond_10
    const/16 v3, 0x9c4

    if-ge p1, v3, :cond_11

    const/16 p1, 0x10

    goto :goto_0

    :cond_11
    const/16 v3, 0xbb8

    if-ge p1, v3, :cond_12

    const/16 p1, 0x11

    goto :goto_0

    :cond_12
    const/16 v3, 0xdac

    if-ge p1, v3, :cond_13

    const/16 p1, 0x12

    goto :goto_0

    :cond_13
    const/16 v3, 0xfa0

    if-ge p1, v3, :cond_14

    const/16 p1, 0x13

    goto/16 :goto_0

    :cond_14
    const/16 p1, 0x14

    goto/16 :goto_0

    :cond_15
    iget-object v3, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_visualization:[I

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_16
    iget v3, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_amplitude:I

    if-ge p1, v3, :cond_17

    const/4 v0, -0x1

    :cond_17
    iput p1, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_amplitude:I

    const/4 v1, 0x0

    :goto_2
    sget-object v3, Lcom/quramsoft/qdio/QdioVisualization;->visualizationRandSeed:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    if-lez v0, :cond_19

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    sget-object v5, Lcom/quramsoft/qdio/QdioVisualization;->visualizationRandSeed:[I

    aget v5, v5, v1

    int-to-double v5, v5

    mul-double/2addr v3, v5

    sget-object v5, Lcom/quramsoft/qdio/QdioVisualization;->visualizationBands:[[I

    aget-object v5, v5, p1

    aget v5, v5, v1

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    :goto_3
    aget v3, v2, v1

    iget-object v4, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_visualization:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_18

    if-lez v0, :cond_1a

    iget-object v3, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_visualization:[I

    aget v3, v3, v1

    add-int/lit8 v3, v3, 0x5

    aput v3, v2, v1

    :cond_18
    :goto_4
    iget-object v3, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_visualization:[I

    aget v4, v2, v1

    invoke-direct {p0, v4}, Lcom/quramsoft/qdio/QdioVisualization;->clipVisualizatoin(I)I

    move-result v4

    aput v4, v2, v1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    sget-object v5, Lcom/quramsoft/qdio/QdioVisualization;->visualizationRandSeed:[I

    aget v5, v5, v1

    int-to-double v5, v5

    mul-double/2addr v3, v5

    int-to-double v5, v0

    mul-double/2addr v3, v5

    sget-object v5, Lcom/quramsoft/qdio/QdioVisualization;->visualizationBands:[[I

    aget-object v5, v5, p1

    aget v5, v5, v1

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    goto :goto_3

    :cond_1a
    iget-object v3, p0, Lcom/quramsoft/qdio/QdioVisualization;->prev_visualization:[I

    aget v3, v3, v1

    add-int/lit8 v3, v3, -0x5

    aput v3, v2, v1

    goto :goto_4
.end method
