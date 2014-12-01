.class public Ldmc/cvd/cvdcalculator/CVDCalculator;
.super Ljava/lang/Object;
.source "CVDCalculator.java"


# instance fields
.field private SpotsU:[D

.field private SpotsV:[D

.field private mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

.field private mInputNums:[I

.field private u:[D

.field private v:[D


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->u:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->v:[D

    new-array v0, v1, [D

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->SpotsU:[D

    new-array v0, v1, [D

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->SpotsV:[D

    iput-object v2, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mInputNums:[I

    iput-object v2, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    new-instance v0, Ldmc/cvd/cvdcalculator/ColorTransferTable;

    invoke-direct {v0}, Ldmc/cvd/cvdcalculator/ColorTransferTable;-><init>()V

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    return-void

    :array_0
    .array-data 8
        -0x3fca75c28f5c28f6L
        -0x3fc8bd70a3d70a3dL
        -0x3fc9970a3d70a3d7L
        -0x3fc8e3d70a3d70a4L
        -0x3fc98ccccccccccdL
        -0x3fca3d70a3d70a3dL
        -0x3fd3d70a3d70a3d7L
        -0x3ffa3d70a3d70a3dL
        0x402dae147ae147aeL
        0x4037deb851eb851fL
        0x403fd1eb851eb852L
        0x403f6b851eb851ecL
        0x403dca3d70a3d70aL
        0x403aa3d70a3d70a4L
        0x4036eb851eb851ecL
        0x4026666666666666L
    .end array-data

    :array_1
    .array-data 8
        -0x3fbcce147ae147aeL
        -0x3fc670a3d70a3d71L
        -0x3fd0f0a3d70a3d71L
        -0x3fe2333333333333L
        0x3ff199999999999aL
        0x401d666666666666L
        0x4032bd70a3d70a3dL
        0x403c2147ae147ae1L
        0x403f2147ae147ae1L
        0x403a59999999999aL
        0x402d851eb851eb85L
        0x401bf5c28f5c28f6L
        0x3fb999999999999aL
        -0x3fdd3d70a3d70a3dL
        -0x3fcd59999999999aL
        -0x3fc763d70a3d70a4L
    .end array-data
.end method


# virtual methods
.method public getRGBCMY(IDD)[I
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    check-cast v9, [I

    const/16 v0, 0x9

    new-array v9, v0, [I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    const/4 v0, 0x0

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    const/4 v0, 0x1

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    const/4 v0, 0x2

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    const/4 v0, 0x3

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    const/4 v0, 0x4

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    const/4 v0, 0x5

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    const/4 v0, 0x6

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    const/4 v0, 0x7

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    const/16 v0, 0x8

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    :goto_0
    return-object v9

    :cond_1
    const/4 v0, 0x0

    const v1, 0xff00

    aput v1, v9, v0

    const/4 v0, 0x1

    const/16 v1, 0xff

    aput v1, v9, v0

    const/4 v0, 0x2

    const/16 v1, 0xff

    aput v1, v9, v0

    const/4 v0, 0x3

    const/16 v1, 0xff

    aput v1, v9, v0

    const/4 v0, 0x4

    const v1, 0xff00

    aput v1, v9, v0

    const/4 v0, 0x5

    const/16 v1, 0xff

    aput v1, v9, v0

    const/4 v0, 0x6

    const/16 v1, 0xff

    aput v1, v9, v0

    const/4 v0, 0x7

    const/16 v1, 0xff

    aput v1, v9, v0

    const/16 v0, 0x8

    const v1, 0xff00

    aput v1, v9, v0

    goto :goto_0
.end method
