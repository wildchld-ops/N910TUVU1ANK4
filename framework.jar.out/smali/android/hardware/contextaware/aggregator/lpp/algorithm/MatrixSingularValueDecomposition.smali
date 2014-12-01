.class public Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;
.super Ljava/lang/Object;
.source "MatrixSingularValueDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private U:[[D

.field private V:[[D

.field private m:I

.field private n:I

.field private s:[D


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 58

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v52

    move/from16 v0, v52

    new-array v0, v0, [D

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v30

    filled-new-array {v0, v1}, [I

    move-result-object v52

    sget-object v53, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, [[D

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    filled-new-array/range {v52 .. v53}, [I

    move-result-object v52

    sget-object v53, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, [[D

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v11, v0, [D

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v0, v0, [D

    move-object/from16 v51, v0

    const/16 v49, 0x1

    const/16 v50, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v28

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    add-int/lit8 v53, v53, -0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v54, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->min(II)I

    move-result v53

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->max(II)I

    move-result v29

    const/16 v25, 0x0

    :goto_0
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v52

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_14

    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v25

    move/from16 v22, v25

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v53, v53, v25

    aget-object v55, v4, v22

    aget-wide v55, v55, v25

    invoke-static/range {v53 .. v56}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v53

    aput-wide v53, v52, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_3

    aget-object v52, v4, v25

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v53, v53, v25

    move-wide/from16 v0, v53

    neg-double v0, v0

    move-wide/from16 v53, v0

    aput-wide v53, v52, v25

    :cond_1
    move/from16 v22, v25

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_2

    aget-object v52, v4, v22

    aget-wide v53, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v55, v0

    aget-wide v55, v55, v25

    div-double v53, v53, v55

    aput-wide v53, v52, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_2
    aget-object v52, v4, v25

    aget-wide v53, v52, v25

    const-wide/high16 v55, 0x3ff0000000000000L

    add-double v53, v53, v55

    aput-wide v53, v52, v25

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v53, v53, v25

    move-wide/from16 v0, v53

    neg-double v0, v0

    move-wide/from16 v53, v0

    aput-wide v53, v52, v25

    :cond_4
    add-int/lit8 v24, v25, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_7

    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_6

    const-wide/16 v45, 0x0

    move/from16 v22, v25

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_5

    aget-object v52, v4, v22

    aget-wide v52, v52, v25

    aget-object v54, v4, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v45, v45, v52

    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    :cond_5
    move-wide/from16 v0, v45

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-object v54, v4, v25

    aget-wide v54, v54, v25

    div-double v45, v52, v54

    move/from16 v22, v25

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_6

    aget-object v52, v4, v22

    aget-wide v53, v52, v24

    aget-object v55, v4, v22

    aget-wide v55, v55, v25

    mul-double v55, v55, v45

    add-double v53, v53, v55

    aput-wide v53, v52, v24

    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    :cond_6
    aget-object v52, v4, v25

    aget-wide v52, v52, v24

    aput-wide v52, v11, v24

    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    :cond_7
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    const/16 v52, 0x1

    :goto_6
    and-int v52, v52, v49

    if-eqz v52, :cond_9

    move/from16 v22, v25

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-object v53, v4, v22

    aget-wide v53, v53, v25

    aput-wide v53, v52, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    :cond_8
    const/16 v52, 0x0

    goto :goto_6

    :cond_9
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    const-wide/16 v52, 0x0

    aput-wide v52, v11, v25

    add-int/lit8 v22, v25, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_a

    aget-wide v52, v11, v25

    aget-wide v54, v11, v22

    invoke-static/range {v52 .. v55}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v52

    aput-wide v52, v11, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    :cond_a
    aget-wide v52, v11, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_d

    add-int/lit8 v52, v25, 0x1

    aget-wide v52, v11, v52

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_b

    aget-wide v52, v11, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v11, v25

    :cond_b
    add-int/lit8 v22, v25, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_c

    aget-wide v52, v11, v22

    aget-wide v54, v11, v25

    div-double v52, v52, v54

    aput-wide v52, v11, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v52, v25, 0x1

    aget-wide v53, v11, v52

    const-wide/high16 v55, 0x3ff0000000000000L

    add-double v53, v53, v55

    aput-wide v53, v11, v52

    :cond_d
    aget-wide v52, v11, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v11, v25

    add-int/lit8 v52, v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ge v0, v1, :cond_12

    aget-wide v52, v11, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_12

    add-int/lit8 v22, v25, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_e

    const-wide/16 v52, 0x0

    aput-wide v52, v51, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v24, v25, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_10

    add-int/lit8 v22, v25, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_f

    aget-wide v52, v51, v22

    aget-wide v54, v11, v24

    aget-object v56, v4, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    add-double v52, v52, v54

    aput-wide v52, v51, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    :cond_f
    add-int/lit8 v24, v24, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v24, v25, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_12

    aget-wide v52, v11, v24

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    add-int/lit8 v54, v25, 0x1

    aget-wide v54, v11, v54

    div-double v45, v52, v54

    add-int/lit8 v22, v25, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_11

    aget-object v52, v4, v22

    aget-wide v53, v52, v24

    aget-wide v55, v51, v22

    mul-double v55, v55, v45

    add-double v53, v53, v55

    aput-wide v53, v52, v24

    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    :cond_11
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    :cond_12
    if-eqz v50, :cond_13

    add-int/lit8 v22, v25, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v53, v11, v22

    aput-wide v53, v52, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    :cond_13
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v53, v0

    add-int/lit8 v53, v53, 0x1

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v28

    move/from16 v1, v52

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-object v53, v4, v28

    aget-wide v53, v53, v28

    aput-wide v53, v52, v28

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v31

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v53

    :cond_16
    add-int/lit8 v52, v29, 0x1

    move/from16 v0, v52

    move/from16 v1, v31

    if-ge v0, v1, :cond_17

    aget-object v52, v4, v29

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    aput-wide v52, v11, v29

    :cond_17
    add-int/lit8 v52, v31, -0x1

    const-wide/16 v53, 0x0

    aput-wide v53, v11, v52

    if-eqz v49, :cond_21

    move/from16 v24, v28

    :goto_10
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_19

    const/16 v22, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v24

    add-int/lit8 v22, v22, 0x1

    goto :goto_11

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v24

    const-wide/high16 v53, 0x3ff0000000000000L

    aput-wide v53, v52, v24

    add-int/lit8 v24, v24, 0x1

    goto :goto_10

    :cond_19
    add-int/lit8 v25, v28, -0x1

    :goto_12
    if-ltz v25, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_1e

    add-int/lit8 v24, v25, 0x1

    :goto_13
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c

    const-wide/16 v45, 0x0

    move/from16 v22, v25

    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v45, v45, v52

    add-int/lit8 v22, v22, 0x1

    goto :goto_14

    :cond_1a
    move-wide/from16 v0, v45

    neg-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v25

    aget-wide v54, v54, v25

    div-double v45, v52, v54

    move/from16 v22, v25

    :goto_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v53, v52, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v55, v0

    aget-object v55, v55, v22

    aget-wide v55, v55, v25

    mul-double v55, v55, v45

    add-double v53, v53, v55

    aput-wide v53, v52, v24

    add-int/lit8 v22, v22, 0x1

    goto :goto_15

    :cond_1b
    add-int/lit8 v24, v24, 0x1

    goto :goto_13

    :cond_1c
    move/from16 v22, v25

    :goto_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v53, v53, v25

    move-wide/from16 v0, v53

    neg-double v0, v0

    move-wide/from16 v53, v0

    aput-wide v53, v52, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_16

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    const-wide/high16 v53, 0x3ff0000000000000L

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v55, v0

    aget-object v55, v55, v25

    aget-wide v55, v55, v25

    add-double v53, v53, v55

    aput-wide v53, v52, v25

    const/16 v22, 0x0

    :goto_17
    add-int/lit8 v52, v25, -0x1

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_17

    :cond_1e
    const/16 v22, 0x0

    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_18

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    const-wide/high16 v53, 0x3ff0000000000000L

    aput-wide v53, v52, v25

    :cond_20
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_12

    :cond_21
    if-eqz v50, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    add-int/lit8 v25, v52, -0x1

    :goto_19
    if-ltz v25, :cond_26

    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_24

    aget-wide v52, v11, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_24

    add-int/lit8 v24, v25, 0x1

    :goto_1a
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_24

    const-wide/16 v45, 0x0

    add-int/lit8 v22, v25, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v45, v45, v52

    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    :cond_22
    move-wide/from16 v0, v45

    neg-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v25, 0x1

    aget-object v54, v54, v55

    aget-wide v54, v54, v25

    div-double v45, v52, v54

    add-int/lit8 v22, v25, 0x1

    :goto_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v53, v52, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v55, v0

    aget-object v55, v55, v22

    aget-wide v55, v55, v25

    mul-double v55, v55, v45

    add-double v53, v53, v55

    aput-wide v53, v52, v24

    add-int/lit8 v22, v22, 0x1

    goto :goto_1c

    :cond_23
    add-int/lit8 v24, v24, 0x1

    goto :goto_1a

    :cond_24
    const/16 v22, 0x0

    :goto_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_1d

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    const-wide/high16 v53, 0x3ff0000000000000L

    aput-wide v53, v52, v25

    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_19

    :cond_26
    add-int/lit8 v32, v31, -0x1

    const/16 v23, 0x0

    const-wide/high16 v52, 0x4000000000000000L

    const-wide/high16 v54, -0x3fb6000000000000L

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    const-wide/high16 v52, 0x4000000000000000L

    const-wide v54, -0x3f71d00000000000L

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v47

    :cond_27
    :goto_1e
    if-lez v31, :cond_44

    add-int/lit8 v25, v31, -0x2

    :goto_1f
    const/16 v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-lt v0, v1, :cond_28

    const/16 v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ne v0, v1, :cond_2a

    :cond_28
    :goto_20
    add-int/lit8 v52, v31, -0x2

    move/from16 v0, v25

    move/from16 v1, v52

    if-ne v0, v1, :cond_2c

    const/16 v26, 0x4

    :goto_21
    add-int/lit8 v25, v25, 0x1

    packed-switch v26, :pswitch_data_0

    goto :goto_1e

    :pswitch_0
    add-int/lit8 v52, v31, -0x2

    aget-wide v18, v11, v52

    add-int/lit8 v52, v31, -0x2

    const-wide/16 v53, 0x0

    aput-wide v53, v11, v52

    add-int/lit8 v24, v31, -0x2

    :goto_22
    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    move-wide/from16 v0, v52

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v45

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    div-double v9, v52, v45

    div-double v39, v18, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v45, v52, v24

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_29

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v52, v0

    add-int/lit8 v54, v24, -0x1

    aget-wide v54, v11, v54

    mul-double v18, v52, v54

    add-int/lit8 v52, v24, -0x1

    add-int/lit8 v53, v24, -0x1

    aget-wide v53, v11, v53

    mul-double v53, v53, v9

    aput-wide v53, v11, v52

    :cond_29
    if-eqz v50, :cond_34

    const/16 v22, 0x0

    :goto_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v31, -0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v39

    add-double v45, v52, v54

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v31, -0x1

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v31, -0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v9

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v24

    add-int/lit8 v22, v22, 0x1

    goto :goto_23

    :cond_2a
    aget-wide v52, v11, v25

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v56, v0

    add-int/lit8 v57, v25, 0x1

    aget-wide v56, v56, v57

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->abs(D)D

    move-result-wide v56

    add-double v54, v54, v56

    mul-double v54, v54, v16

    add-double v54, v54, v47

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_2b

    const-wide/16 v52, 0x0

    aput-wide v52, v11, v25

    goto/16 :goto_20

    :cond_2b
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_1f

    :cond_2c
    add-int/lit8 v27, v31, -0x1

    :goto_24
    move/from16 v0, v27

    move/from16 v1, v25

    if-lt v0, v1, :cond_2d

    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_2e

    :cond_2d
    :goto_25
    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_32

    const/16 v26, 0x3

    goto/16 :goto_21

    :cond_2e
    move/from16 v0, v27

    move/from16 v1, v31

    if-eq v0, v1, :cond_2f

    aget-wide v52, v11, v27

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    move-wide/from16 v54, v52

    :goto_26
    add-int/lit8 v52, v25, 0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-eq v0, v1, :cond_30

    add-int/lit8 v52, v27, -0x1

    aget-wide v52, v11, v52

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    :goto_27
    add-double v45, v54, v52

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v27

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    mul-double v54, v16, v45

    add-double v54, v54, v47

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v27

    goto :goto_25

    :cond_2f
    const-wide/16 v52, 0x0

    move-wide/from16 v54, v52

    goto :goto_26

    :cond_30
    const-wide/16 v52, 0x0

    goto :goto_27

    :cond_31
    add-int/lit8 v27, v27, -0x1

    goto :goto_24

    :cond_32
    add-int/lit8 v52, v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-ne v0, v1, :cond_33

    const/16 v26, 0x1

    goto/16 :goto_21

    :cond_33
    const/16 v26, 0x2

    move/from16 v25, v27

    goto/16 :goto_21

    :cond_34
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_22

    :pswitch_1
    add-int/lit8 v52, v25, -0x1

    aget-wide v18, v11, v52

    add-int/lit8 v52, v25, -0x1

    const-wide/16 v53, 0x0

    aput-wide v53, v11, v52

    move/from16 v24, v25

    :goto_28
    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    move-wide/from16 v0, v52

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v45

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    div-double v9, v52, v45

    div-double v39, v18, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v45, v52, v24

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-wide v54, v11, v24

    mul-double v18, v52, v54

    aget-wide v52, v11, v24

    mul-double v52, v52, v9

    aput-wide v52, v11, v24

    if-eqz v49, :cond_35

    const/16 v22, 0x0

    :goto_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v25, -0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v39

    add-double v45, v52, v54

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, -0x1

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v25, -0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v9

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v24

    add-int/lit8 v22, v22, 0x1

    goto :goto_29

    :cond_35
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_28

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v31, -0x2

    aget-wide v54, v54, v55

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    add-int/lit8 v54, v31, -0x2

    aget-wide v54, v11, v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    aget-wide v54, v11, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    div-double v41, v52, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x2

    aget-wide v52, v52, v53

    div-double v43, v52, v33

    add-int/lit8 v52, v31, -0x2

    aget-wide v52, v11, v52

    div-double v14, v52, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    div-double v37, v52, v33

    aget-wide v52, v11, v25

    div-double v12, v52, v33

    add-double v52, v43, v41

    sub-double v54, v43, v41

    mul-double v52, v52, v54

    mul-double v54, v14, v14

    add-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L

    div-double v5, v52, v54

    mul-double v52, v41, v14

    mul-double v54, v41, v14

    mul-double v7, v52, v54

    const-wide/16 v35, 0x0

    const-wide/16 v52, 0x0

    cmpl-double v52, v5, v52

    if-eqz v52, :cond_39

    const/16 v52, 0x1

    move/from16 v53, v52

    :goto_2a
    const-wide/16 v54, 0x0

    cmpl-double v52, v7, v54

    if-eqz v52, :cond_3a

    const/16 v52, 0x1

    :goto_2b
    or-int v52, v52, v53

    if-eqz v52, :cond_37

    mul-double v52, v5, v5

    add-double v52, v52, v7

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    const-wide/16 v52, 0x0

    cmpg-double v52, v5, v52

    if-gez v52, :cond_36

    move-wide/from16 v0, v35

    neg-double v0, v0

    move-wide/from16 v35, v0

    :cond_36
    add-double v52, v5, v35

    div-double v35, v7, v52

    :cond_37
    add-double v52, v37, v41

    sub-double v54, v37, v41

    mul-double v52, v52, v54

    add-double v18, v52, v35

    mul-double v20, v37, v12

    move/from16 v24, v25

    :goto_2c
    add-int/lit8 v52, v31, -0x1

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_3d

    invoke-static/range {v18 .. v21}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v45

    div-double v9, v18, v45

    div-double v39, v20, v45

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_38

    add-int/lit8 v52, v24, -0x1

    aput-wide v45, v11, v52

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    mul-double v52, v52, v9

    aget-wide v54, v11, v24

    mul-double v54, v54, v39

    add-double v18, v52, v54

    aget-wide v52, v11, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v24

    mul-double v54, v54, v39

    sub-double v52, v52, v54

    aput-wide v52, v11, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    aget-wide v52, v52, v53

    mul-double v20, v39, v52

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v9

    aput-wide v54, v52, v53

    if-eqz v50, :cond_3b

    const/16 v22, 0x0

    :goto_2d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v39

    add-double v45, v52, v54

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v9

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v24

    add-int/lit8 v22, v22, 0x1

    goto :goto_2d

    :cond_39
    const/16 v52, 0x0

    move/from16 v53, v52

    goto/16 :goto_2a

    :cond_3a
    const/16 v52, 0x0

    goto/16 :goto_2b

    :cond_3b
    invoke-static/range {v18 .. v21}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v45

    div-double v9, v18, v45

    div-double v39, v20, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v45, v52, v24

    aget-wide v52, v11, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v39

    add-double v18, v52, v54

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v54, v0

    aget-wide v56, v11, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v56, v0

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v9

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    add-int/lit8 v52, v24, 0x1

    aget-wide v52, v11, v52

    mul-double v20, v39, v52

    add-int/lit8 v52, v24, 0x1

    add-int/lit8 v53, v24, 0x1

    aget-wide v53, v11, v53

    mul-double v53, v53, v9

    aput-wide v53, v11, v52

    if-eqz v49, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_3c

    const/16 v22, 0x0

    :goto_2e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v39

    add-double v45, v52, v54

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v9

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v24

    add-int/lit8 v22, v22, 0x1

    goto :goto_2e

    :cond_3c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2c

    :cond_3d
    add-int/lit8 v52, v31, -0x2

    aput-wide v18, v11, v52

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1e

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v55, 0x0

    cmpg-double v52, v52, v55

    if-gez v52, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    :goto_2f
    aput-wide v52, v54, v25

    if-eqz v50, :cond_40

    const/16 v22, 0x0

    :goto_30
    move/from16 v0, v22

    move/from16 v1, v32

    if-gt v0, v1, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v53, v53, v25

    move-wide/from16 v0, v53

    neg-double v0, v0

    move-wide/from16 v53, v0

    aput-wide v53, v52, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_30

    :cond_3e
    const-wide/16 v52, 0x0

    goto :goto_2f

    :cond_3f
    add-int/lit8 v25, v25, 0x1

    :cond_40
    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v25, 0x1

    aget-wide v54, v54, v55

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_42

    :cond_41
    const/16 v23, 0x0

    add-int/lit8 v31, v31, -0x1

    goto/16 :goto_1e

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v45, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    add-int/lit8 v54, v25, 0x1

    aget-wide v53, v53, v54

    aput-wide v53, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v25, 0x1

    aput-wide v45, v52, v53

    if-eqz v50, :cond_43

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_43

    const/16 v22, 0x0

    :goto_31
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    aget-wide v45, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v25

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_31

    :cond_43
    if-eqz v49, :cond_3f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_3f

    const/16 v22, 0x0

    :goto_32
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    aget-wide v45, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v25

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_32

    :cond_44
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cond()D
    .locals 5

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getS()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v2, v4, :cond_1

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v5, v5, v2

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getSingularValues()[D
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    return-object v0
.end method

.method public getU()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 5

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public getV()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 4

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public norm2()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public rank()I
    .locals 10

    const-wide/high16 v6, 0x4000000000000000L

    const-wide/high16 v8, -0x3fb6000000000000L

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    mul-double v4, v6, v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    array-length v6, v6

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v6, v6, v2

    cmpl-double v6, v6, v4

    if-lez v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method
