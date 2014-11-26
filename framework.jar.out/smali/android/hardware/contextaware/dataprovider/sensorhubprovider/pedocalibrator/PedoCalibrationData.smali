.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;
.super Ljava/lang/Object;
.source "PedoCalibrationData.java"


# instance fields
.field mAccumGpsDistance:F

.field mAccumStepCnt:I

.field mAccumStepLength:F

.field mAccumStepLengthPer1Sec:F

.field mArrayIndex:I

.field mFilterWF:F

.field mGpsAccumCnt:I

.field mGpsAccuracy:F

.field mGpsArrayDistance:[D

.field mGpsHeadDiffSum:D

.field mGpsLLH:[D

.field mGpsLastRequestTime:J

.field mGpsOldLLH:[D

.field mGpsOldVec1Hz:[D

.field mGpsUpdateTimeStamp:J

.field mGpsUpdated:Z

.field mGpsUsedSat:I

.field mMaxMeas:I

.field mPedoArrayStepLength:[D

.field mPedoUpdated:Z

.field mRefWalkOrRun:B

.field mRefWalkingFreq:F

.field mRunStepCnt:I

.field mSFArray:[D

.field mSameStepTypeStayCnt:I

.field mSleepStartTime:J

.field mStepCount:I

.field mStepLength:F

.field mSystemTime:J

.field mUpDownStepCnt:I

.field mWalkOrRun:B

.field mWalkStepCnt:I

.field mWalkingFreq:F


# direct methods
.method constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const v5, 0x3c23d70a

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSleepStartTime:J

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepCount:I

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkStepCnt:I

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRunStepCnt:I

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mUpDownStepCnt:I

    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    iput-byte v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkingFreq:F

    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    iput-byte v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    iput v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    iput v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepCnt:I

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    iget-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLastRequestTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdateTimeStamp:J

    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    const/high16 v0, 0x44610000

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccuracy:F

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUsedSat:I

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    new-array v0, v4, [D

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    new-array v0, v4, [D

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    new-array v0, v4, [D

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mMaxMeas:I

    iput-boolean v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdated:Z

    iput-boolean v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoUpdated:Z

    const/4 v0, 0x5

    new-array v0, v0, [D

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    const/4 v0, 0x5

    new-array v0, v0, [D

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    const/16 v0, 0x14

    new-array v0, v0, [D

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 9

    const v8, 0x3c23d70a

    const/4 v7, 0x3

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSleepStartTime:J

    iput v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    iput v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/4 v1, 0x1

    iput-byte v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    iput v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkingFreq:F

    iput v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    const/4 v1, 0x1

    iput-byte v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    iput v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    iput v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepCnt:I

    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    iget-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    iput-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLastRequestTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdateTimeStamp:J

    iput v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    const/high16 v1, 0x44610000

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccuracy:F

    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUsedSat:I

    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    iput-wide v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    if-nez v1, :cond_0

    new-array v1, v7, [D

    iput-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    if-nez v1, :cond_1

    new-array v1, v7, [D

    iput-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    :cond_1
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    if-nez v1, :cond_2

    new-array v1, v7, [D

    iput-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    :cond_2
    iput-boolean v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdated:Z

    iput-boolean v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoUpdated:Z

    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mMaxMeas:I

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    if-nez v1, :cond_3

    const/4 v1, 0x5

    new-array v1, v1, [D

    iput-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    :cond_3
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    if-nez v1, :cond_4

    const/4 v1, 0x5

    new-array v1, v1, [D

    iput-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    :cond_4
    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    if-nez v1, :cond_5

    const/16 v1, 0x14

    new-array v1, v1, [D

    iput-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    :cond_5
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    aput-wide v4, v1, v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    array-length v1, v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    aput-wide v4, v1, v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    array-length v1, v1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    const-wide/high16 v2, 0x3ff0000000000000L

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method
