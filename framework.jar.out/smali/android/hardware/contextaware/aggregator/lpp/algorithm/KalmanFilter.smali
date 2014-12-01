.class public Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;
.super Ljava/lang/Object;
.source "KalmanFilter.java"


# instance fields
.field F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field MeasurementSize:I

.field P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field Q_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field R_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field StateSize:I

.field TAG:Ljava/lang/String;

.field X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field Z_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field flagInitializeCovariance:Z

.field flagInitializeMeasurementM:Z

.field flagInitializeState:Z

.field flagMeasurementNoise:Z

.field flagProcessNoise:Z

.field flagTransitionMatrix:Z


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KalmanFilter"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeCovariance:Z

    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    iput p1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iput p2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Z_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    return-void
.end method


# virtual methods
.method public MeasurementUpdate(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Z
    .locals 22

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ne v4, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string v5, "Error in MeasurementUpdate(), meauserement matrix size is wrong!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    new-instance v17, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v2, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v2, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v18, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v19, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v20, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v21, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v9, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    const/4 v5, 0x1

    invoke-direct {v9, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v10, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v10, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    if-nez v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string v5, "cannot execute MeasurementUpdate(), check initialization "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->transpose()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v8, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object/from16 v3, v18

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object/from16 v3, v19

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object/from16 v3, v17

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v8, v11}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object/from16 v3, v20

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->minus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object/from16 v3, v21

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    new-instance v3, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v12, v4, -0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v14, v4, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->minus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v13, v4, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v15, v4, -0x1

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public TimePropagation(D)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v2, v11}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v8, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v8, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v9, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v9, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v10, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v10, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iget-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string v3, "cannot execute TimePropagation(), check initialization "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v3, -0x1

    move v3, v1

    move v5, v1

    move v6, v1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v2, -0x1

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v2, -0x1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    move-object v2, v9

    move v3, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v2, -0x1

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v2, -0x1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    move-object v2, v10

    move v3, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v2, -0x1

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v2, -0x1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v10, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    move-object v2, v8

    move v3, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v3, -0x1

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v3, -0x1

    move v3, v1

    move v5, v1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    move v1, v11

    goto :goto_0
.end method

.method public getCurrentState()[D
    .locals 4

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    new-array v1, v2, [D

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public setInitialCovariance([[D)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v4, p1, v2

    array-length v4, v4

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    array-length v4, p1

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ne v4, v5, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_3

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v0

    aget-wide v4, v4, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    move v2, v3

    goto :goto_0
.end method

.method public setInitialState([D)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    array-length v3, p1

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    move v1, v2

    goto :goto_0
.end method

.method public setMeasurementMatrix([[D)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v4, p1, v2

    array-length v4, v4

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    array-length v4, p1

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ne v4, v5, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v0, v2, :cond_3

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v0

    aget-wide v4, v4, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    move v2, v3

    goto :goto_0
.end method

.method public setMeasurementNoise([[D)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v4, p1, v2

    array-length v4, v4

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    array-length v4, p1

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ne v4, v5, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v0, v2, :cond_3

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v0

    aget-wide v4, v4, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    move v2, v3

    goto :goto_0
.end method

.method public setProcessNoise([[D)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v4, p1, v2

    array-length v4, v4

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    array-length v4, p1

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ne v4, v5, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_3

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v0

    aget-wide v4, v4, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    move v2, v3

    goto :goto_0
.end method

.method public setTransitionMatrix([[D)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v4, p1, v2

    array-length v4, v4

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    array-length v4, p1

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ne v4, v5, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_3

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v0

    aget-wide v4, v4, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    move v2, v3

    goto :goto_0
.end method
