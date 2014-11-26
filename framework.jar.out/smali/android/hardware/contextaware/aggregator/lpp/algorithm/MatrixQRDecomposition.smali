.class public Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;
.super Ljava/lang/Object;
.source "MatrixQRDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private QR:[[D

.field private Rdiag:[D

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 14
    .param p1    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const-wide/16 v12, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v7

    iput-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v7

    iput v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v7

    iput v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    new-array v7, v7, [D

    iput-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v2, v7, :cond_6

    const-wide/16 v3, 0x0

    move v0, v2

    :goto_1
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v0

    aget-wide v7, v7, v2

    invoke-static {v3, v4, v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v7, v3, v12

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, v2

    cmpg-double v7, v7, v12

    if-gez v7, :cond_1

    neg-double v3, v3

    :cond_1
    move v0, v2

    :goto_2
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v7, :cond_2

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v0

    aget-wide v8, v7, v2

    div-double/2addr v8, v3

    aput-wide v8, v7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v2

    aget-wide v8, v7, v2

    const-wide/high16 v10, 0x3ff0000000000000L

    add-double/2addr v8, v10

    aput-wide v8, v7, v2

    add-int/lit8 v1, v2, 0x1

    :goto_3
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v1, v7, :cond_5

    const-wide/16 v5, 0x0

    move v0, v2

    :goto_4
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v0

    aget-wide v7, v7, v2

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v9, v9, v0

    aget-wide v9, v9, v1

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    neg-double v7, v5

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v9, v9, v2

    aget-wide v9, v9, v2

    div-double v5, v7, v9

    move v0, v2

    :goto_5
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v7, :cond_4

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v0

    aget-wide v8, v7, v1

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v2

    mul-double/2addr v10, v5

    add-double/2addr v8, v10

    aput-wide v8, v7, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    neg-double v8, v3

    aput-wide v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public getH()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v4, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v4, :cond_1

    if-lt v2, v3, :cond_0

    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    aget-object v4, v0, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getQ()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14

    const-wide/16 v12, 0x0

    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    iget v8, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v4, v7, -0x1

    :goto_0
    if-ltz v4, :cond_4

    const/4 v2, 0x0

    :goto_1
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v7, :cond_0

    aget-object v7, v0, v2

    aput-wide v12, v7, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    aget-object v7, v0, v4

    const-wide/high16 v8, 0x3ff0000000000000L

    aput-wide v8, v7, v4

    move v3, v4

    :goto_2
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v7, :cond_3

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v4

    cmpl-double v7, v7, v12

    if-eqz v7, :cond_2

    const-wide/16 v5, 0x0

    move v2, v4

    :goto_3
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v7, :cond_1

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, v4

    aget-object v9, v0, v2

    aget-wide v9, v9, v3

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    neg-double v7, v5

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v4

    div-double v5, v7, v9

    move v2, v4

    :goto_4
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v7, :cond_2

    aget-object v7, v0, v2

    aget-wide v8, v7, v3

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v4

    mul-double/2addr v10, v5

    add-double/2addr v8, v10

    aput-wide v8, v7, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getR()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v2, v4, :cond_3

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v4, :cond_2

    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-ne v2, v3, :cond_1

    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v5, v5, v2

    aput-wide v5, v4, v3

    goto :goto_2

    :cond_1
    aget-object v4, v0, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public isFullRank()Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public solve(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14
    .param p1    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v7

    iget v8, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Matrix row dimensions must agree."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->isFullRank()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Matrix is rank deficient."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v7, :cond_5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    const-wide/16 v5, 0x0

    move v1, v3

    :goto_2
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v1, v7, :cond_2

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v1

    aget-wide v7, v7, v3

    aget-object v9, v0, v1

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    neg-double v7, v5

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v9, v9, v3

    aget-wide v9, v9, v3

    div-double v5, v7, v9

    move v1, v3

    :goto_3
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v1, v7, :cond_3

    aget-object v7, v0, v1

    aget-wide v8, v7, v2

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v1

    aget-wide v10, v10, v3

    mul-double/2addr v10, v5

    add-double/2addr v8, v10

    aput-wide v8, v7, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v3, v7, -0x1

    :goto_4
    if-ltz v3, :cond_9

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_6

    aget-object v7, v0, v3

    aget-wide v8, v7, v2

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v10, v10, v3

    div-double/2addr v8, v10

    aput-wide v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_8

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_7

    aget-object v7, v0, v1

    aget-wide v8, v7, v2

    aget-object v10, v0, v3

    aget-wide v10, v10, v2

    iget-object v12, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v12, v12, v1

    aget-wide v12, v12, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_9
    new-instance v7, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v8, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v7, v0, v8, v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    const/4 v8, 0x0

    iget v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getMatrix(IIII)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    return-object v7
.end method
