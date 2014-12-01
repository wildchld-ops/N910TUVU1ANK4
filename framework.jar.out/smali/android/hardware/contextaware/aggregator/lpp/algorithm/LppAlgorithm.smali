.class public Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
.super Ljava/lang/Object;
.source "LppAlgorithm.java"


# instance fields
.field APDRMAXNUMBER:I

.field Cnt_inx:I

.field CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

.field Flag_FineLocAcquired:Z

.field Flag_First_loc:Z

.field Flag_Loc_init:Z

.field Flag_PositionFilterInit:Z

.field LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

.field final MAX_MOVEMENT_SPEED_VEHICLE:D

.field final MAX_MOVEMENT_SPEED_WALK:D

.field final MIN_MOVEMENT_DISTANCE:D

.field final MIN_UPDTAE_TIME:D

.field OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

.field OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

.field Origin_LLH:[D

.field PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

.field Prev_StateTime:D

.field ProcessNoisePerSecondVehicle:[D

.field ProcessNoisePerSecondWalk:[D

.field final STATE_STATIONARY:I

.field final STATE_UNKNWON:I

.field final STATE_VEHICLE:I

.field final STATE_WALK_HANDFIX:I

.field final STATE_WALK_JACKET:I

.field final STATE_WALK_PANTS:I

.field final STATE_WALK_SWING:I

.field TAG:Ljava/lang/String;

.field final _DATAFROMAPDR:I

.field final _DATAFROMGPS:I

.field final _DATAFROMNETWORK:I

.field flag_AlgorithmOn:Z

.field lastUpdatedTime:J

.field public mAPDRResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field public mAPDRStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field mFlagIsGPSBatchMode:Z

.field mFlagLocInputReady:Z

.field mFlagStayingArea:Z

.field private final mInputPosBuf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputPosBufSync:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

.field private final mLPPPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mSendLPPPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LppAlgorithm"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    iput-boolean v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMAPDR:I

    iput v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMGPS:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMNETWORK:I

    const-wide v0, 0x3fa1eb851eb851ecL

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_VEHICLE:D

    const-wide v0, 0x3f53a92a30553261L

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_WALK:D

    const-wide/high16 v0, 0x4034000000000000L

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_MOVEMENT_DISTANCE:D

    const-wide v0, 0x40b3880000000000L

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_UPDTAE_TIME:D

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_inx:I

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_Loc_init:Z

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_First_loc:Z

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-direct {v0, v3, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_UNKNWON:I

    iput v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_STATIONARY:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_VEHICLE:I

    const/16 v0, 0x15

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_HANDFIX:I

    const/16 v0, 0x16

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_JACKET:I

    const/16 v0, 0x17

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_SWING:I

    const/16 v0, 0x18

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_PANTS:I

    new-array v0, v3, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    new-array v0, v3, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondVehicle:[D

    new-array v0, v3, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_PositionFilterInit:Z

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L
        0x3ff0000000000000L
        0x4059000000000000L
    .end array-data

    :array_1
    .array-data 8
        0x4024000000000000L
        0x4024000000000000L
        0x3fe0000000000000L
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L
        0x3ff0000000000000L
        0x3fe0000000000000L
    .end array-data
.end method

.method private LppAlgorithmRun()V
    .locals 14

    const/4 v11, 0x1

    const/4 v0, 0x4

    const/4 v2, 0x0

    :goto_0
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget v9, v9, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v9, v11, :cond_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/4 v5, 0x0

    :goto_2
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :sswitch_0
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Stationary"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    goto :goto_1

    :sswitch_1
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Vehicle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    goto :goto_1

    :sswitch_2
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, handfix"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateTraj()V

    goto :goto_1

    :sswitch_3
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, in jacket or bag"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateTraj()V

    goto :goto_1

    :sswitch_4
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, hand swing"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateTraj()V

    goto :goto_1

    :sswitch_5
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, in pants"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    goto :goto_1

    :cond_2
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Deliver Data check()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v11, :cond_4

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "LppAlgorithmRun() unkwon error - [mLPPPosition.size() < 1]"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Deliver Data Ok()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-ne v0, v11, :cond_5

    const/4 v6, 0x1

    :goto_4
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LppAlgorithm - Send All flag : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eqz v6, :cond_8

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    :goto_5
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LppAlgorithm - PosOut => Time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Pos : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_5
    iget-boolean v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    if-eqz v9, :cond_6

    const/4 v6, 0x1

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    goto/16 :goto_4

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_7
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_6
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v12

    sub-long v7, v10, v12

    const-wide/32 v9, 0x124f80

    cmp-long v9, v7, v9

    if-lez v9, :cond_9

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inxOld Test size() before - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inxOld Test size() after - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    new-instance v11, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v11, v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_a
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLPPPosition Test size() before - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_7
    if-ltz v2, :cond_b

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_b
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLPPPosition Test size() after - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    :goto_8
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LppAlgorithm - PosOut => Time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Pos : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
    .end sparse-switch
.end method

.method private PositionFiltering(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    .locals 24

    new-instance v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v8, 0x2

    aget-wide v7, v7, v8

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    aput-wide v4, v22, v3

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    aput-wide v4, v22, v3

    const/4 v3, 0x2

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v4

    aput-wide v4, v22, v3

    const/4 v3, 0x0

    aget-wide v3, v22, v3

    const/4 v5, 0x0

    aget-wide v5, v22, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v22, v5

    const/4 v7, 0x1

    aget-wide v7, v22, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    const/4 v5, 0x2

    aget-wide v5, v22, v5

    const/4 v7, 0x2

    aget-wide v7, v22, v7

    mul-double/2addr v5, v7

    add-double v9, v3, v5

    const-wide v3, 0x41d502f900000000L

    cmpl-double v3, v9, v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v5

    aput-wide v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v5

    aput-wide v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x2

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v5

    aput-wide v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v8, 0x2

    aget-wide v7, v7, v8

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-direct/range {p0 .. p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v21, v0

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    aput-wide v4, v21, v3

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    aput-wide v4, v21, v3

    const/4 v3, 0x2

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v4

    aput-wide v4, v21, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    :goto_0
    return-object v2

    :cond_0
    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v16

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    sub-double/2addr v3, v5

    const-wide v5, 0x3f50624dd2f1a9fcL

    mul-double v17, v3, v5

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x3

    new-array v0, v3, [[D

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    mul-double v6, v6, v17

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v20, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    mul-double v6, v6, v17

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v20, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    mul-double v6, v6, v17

    aput-wide v6, v4, v5

    aput-object v4, v20, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v4, "PositionFiltering - Process noise error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    const/4 v3, 0x3

    new-array v0, v3, [[D

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_0

    aput-object v4, v20, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_1

    aput-object v4, v20, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_2

    aput-object v4, v20, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v4, "PositionFiltering - Process noise error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TimePropagation(D)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v4, "PositionFiltering - TimePropagation error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v16

    const/4 v3, 0x3

    new-array v13, v3, [[D

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    aput-wide v6, v4, v5

    aput-object v4, v13, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    aput-wide v6, v4, v5

    aput-object v4, v13, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v6

    aput-wide v6, v4, v5

    aput-object v4, v13, v3

    new-instance v23, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v23

    invoke-direct {v0, v13}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v3

    const/high16 v4, 0x42c80000

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    const-string v4, "network"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    new-array v14, v3, [[D

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x41a00000

    div-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41a00000

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x41a00000

    div-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41a00000

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_3

    aput-object v4, v14, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v14}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementUpdate(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v4, "PositionFiltering - MeasurementUpdate error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x3

    new-array v14, v3, [[D

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x42c80000

    div-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x42c80000

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x42c80000

    div-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x42c80000

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x40a00000

    mul-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x40a00000

    mul-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v14}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x3

    new-array v14, v3, [[D

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x41200000

    mul-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41200000

    mul-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v14}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    goto/16 :goto_3

    :cond_8
    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_9

    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v11

    const/4 v3, 0x3

    new-array v15, v3, [D

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide v6, 0x4066800000000000L

    div-double/2addr v4, v6

    const-wide v6, 0x400921fafc8b007aL

    mul-double/2addr v4, v6

    aput-wide v4, v15, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    const-wide v6, 0x4066800000000000L

    div-double/2addr v4, v6

    const-wide v6, 0x400921fafc8b007aL

    mul-double/2addr v4, v6

    aput-wide v4, v15, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v15, v3

    invoke-static {v11, v15}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v12

    const/4 v3, 0x0

    aget-wide v3, v12, v3

    const-wide v5, 0x400921fafc8b007aL

    div-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L

    mul-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setLatitude(D)V

    const/4 v3, 0x1

    aget-wide v3, v12, v3

    const-wide v5, 0x400921fafc8b007aL

    div-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L

    mul-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setLongitude(D)V

    const-wide/high16 v3, 0x4049000000000000L

    invoke-virtual {v2, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setAltitude(D)V

    goto/16 :goto_0

    :array_0
    .array-data 8
        0x406c200000000000L
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x406c200000000000L
        0x4059000000000000L
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4039000000000000L
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x4197d78400000000L
    .end array-data
.end method

.method private PositionFilteringInit()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const-string v5, "PositionFilteringInit()"

    invoke-direct {p0, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iput-boolean v8, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_PositionFilterInit:Z

    iput-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    new-array v0, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_0

    aput-object v5, v0, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_1

    aput-object v5, v0, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_2

    aput-object v5, v0, v9

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialCovariance([[D)Z

    new-array v1, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_3

    aput-object v5, v1, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_4

    aput-object v5, v1, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_5

    aput-object v5, v1, v9

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementMatrix([[D)Z

    new-array v4, v6, [D

    fill-array-data v4, :array_6

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    new-array v2, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_7

    aput-object v5, v2, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_8

    aput-object v5, v2, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_9

    aput-object v5, v2, v9

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    new-array v3, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_a

    aput-object v5, v3, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_b

    aput-object v5, v3, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_c

    aput-object v5, v3, v9

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setTransitionMatrix([[D)Z

    return-void

    nop

    :array_0
    .array-data 8
        0x4059000000000000L
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x4059000000000000L
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4059000000000000L
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x3ff0000000000000L
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x4030000000000000L
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x4030000000000000L
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x40c3880000000000L
    .end array-data

    :array_a
    .array-data 8
        0x4069000000000000L
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x0
        0x4069000000000000L
        0x0
    .end array-data

    :array_c
    .array-data 8
        0x0
        0x0
        0x4000000000000000L
    .end array-data
.end method

.method private SendStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private estimateSinglePoint()V
    .locals 6

    new-instance v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v2, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setMovingStatus(I)V

    invoke-direct {p0, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    new-instance v3, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "EstimateSinglePoint(), null filter output"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private estimateTraj()V
    .locals 37

    const/16 v27, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_0

    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    :cond_0
    new-instance v28, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    const/4 v3, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setMovingStatus(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_PositionFilterInit:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    new-instance v34, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct/range {v34 .. v34}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_1
    const-wide/16 v11, 0x0

    const-wide/high16 v32, 0x3ff0000000000000L

    const-string v10, ""

    new-instance v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    new-instance v29, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct/range {v29 .. v29}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    const-wide/16 v13, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/4 v3, 0x2

    new-array v15, v3, [D

    fill-array-data v15, :array_0

    const/4 v3, 0x2

    new-array v0, v3, [D

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    const/4 v3, 0x2

    new-array v0, v3, [D

    move-object/from16 v17, v0

    fill-array-data v17, :array_2

    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v30, v0

    fill-array-data v30, :array_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v8, 0x2

    aget-wide v7, v7, v8

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v6, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    move-object/from16 v3, v29

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-virtual/range {v28 .. v29}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->distanceTo(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)D

    move-result-wide v3

    const-wide v5, 0x40c3880000000000L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_4

    const/16 v26, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->bearing:D

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v6, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->PosPropation(DD)V

    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v15, v3

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v15, v3

    const/4 v3, 0x0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v16, v3

    const/4 v3, 0x1

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v16, v3

    const/4 v3, 0x0

    aget-wide v3, v15, v3

    const/4 v5, 0x1

    aget-wide v5, v16, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x0

    aget-wide v5, v16, v5

    const/4 v7, 0x1

    aget-wide v7, v15, v7

    mul-double/2addr v5, v7

    sub-double v13, v3, v5

    const/4 v3, 0x0

    aget-wide v3, v15, v3

    const/4 v5, 0x0

    aget-wide v5, v16, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v15, v5

    const/4 v7, 0x1

    aget-wide v7, v16, v7

    mul-double/2addr v5, v7

    add-double v24, v3, v5

    const/4 v3, 0x0

    aget-wide v3, v15, v3

    const/4 v5, 0x0

    aget-wide v5, v15, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v15, v5

    const/4 v7, 0x1

    aget-wide v7, v15, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    const/4 v5, 0x0

    aget-wide v5, v16, v5

    const/4 v7, 0x0

    aget-wide v7, v16, v7

    mul-double/2addr v5, v7

    const/4 v7, 0x1

    aget-wide v7, v16, v7

    const/4 v9, 0x1

    aget-wide v35, v16, v9

    mul-double v7, v7, v35

    add-double/2addr v5, v7

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    div-double v3, v24, v22

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    const-wide/16 v3, 0x0

    cmpg-double v3, v13, v3

    if-gez v3, :cond_3

    const-wide/16 v3, 0x0

    sub-double v11, v3, v11

    :cond_3
    const/4 v3, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const/4 v6, 0x0

    aget-wide v6, v15, v6

    mul-double/2addr v4, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const/4 v8, 0x1

    aget-wide v8, v15, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v17, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const/4 v8, 0x0

    aget-wide v8, v15, v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const/4 v8, 0x1

    aget-wide v8, v15, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v17, v3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    const/4 v6, 0x0

    aget-wide v6, v17, v6

    add-double/2addr v4, v6

    aput-wide v4, v30, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    const/4 v6, 0x1

    aget-wide v6, v17, v6

    add-double/2addr v4, v6

    aput-wide v4, v30, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v4

    aput-wide v4, v30, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v31

    const/4 v3, 0x0

    aget-wide v3, v31, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setLatitude(D)V

    const/4 v3, 0x1

    aget-wide v3, v31, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setLongitude(D)V

    const/4 v3, 0x2

    aget-wide v3, v31, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setAltitude(D)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v30

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-wide v4, v30, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v16, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v4, v30, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v16, v3

    const/4 v3, 0x0

    aget-wide v3, v15, v3

    const/4 v5, 0x0

    aget-wide v5, v15, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v15, v5

    const/4 v7, 0x1

    aget-wide v7, v15, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    const/4 v3, 0x0

    aget-wide v3, v16, v3

    const/4 v5, 0x0

    aget-wide v5, v16, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v16, v5

    const/4 v7, 0x1

    aget-wide v7, v16, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    const-wide/high16 v3, 0x3ff0000000000000L

    cmpl-double v3, v18, v3

    if-lez v3, :cond_5

    div-double v32, v20, v18

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    const/16 v26, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v3, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->bearing:D

    add-double v4, v3, v11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v6, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    mul-double v6, v6, v32

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->PosPropation(DD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v3, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->utctime:J

    invoke-virtual {v2, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setSystemTime(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v4, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v4, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v5, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->bearing:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v5, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v4, "Invalid distance between Current location and lastest location"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    const-wide/16 v32, 0x0

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v3, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    goto/16 :goto_1

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private resetwithLastLoc(Landroid/location/Location;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v1, "resetwithLastLoc() unknown error - lastloc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    if-nez v0, :cond_1

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    :goto_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_inx:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    goto :goto_1
.end method


# virtual methods
.method public deliverAPDRData(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/ApdrData;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverAPDRData(), array size \t\t: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v0}, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    invoke-virtual {v0, v2}, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->set(Landroid/hardware/contextaware/aggregator/lpp/ApdrData;)V

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;-><init>(Landroid/hardware/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v2, v5, :cond_0

    invoke-virtual {p0, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setStayingAreaFlag(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deliverLocationData(Landroid/location/Location;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "deliverLocationData()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "deliverLocationData - loc is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - PosIn => Time : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Pos : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    invoke-direct/range {p0 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->resetwithLastLoc(Landroid/location/Location;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v13}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-nez v19, :cond_3

    invoke-virtual {v13}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v20

    cmpg-float v19, v19, v20

    if-gez v19, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    const-string v19, "LppAlgorithm - Duplicated position. Overwritten. "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v19, "Duplication test passed"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    move-wide/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-lez v19, :cond_5

    const-string v19, "Old data passed. Temporarily"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    const-string v19, "Old location test passed."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Position filter Status - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    const-string v19, "Position filter Status is changed to false "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x2710

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    const/4 v11, 0x0

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_7

    move v11, v10

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_8
    const-string v19, "Position filter is not ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Size of mInputPosBuf : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;-><init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;)V

    invoke-static/range {v19 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    goto :goto_3

    :cond_b
    const-string v19, "Sorting is done."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    move/from16 v19, v0

    if-nez v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    const/4 v3, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Fine Location Acq Flag : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    new-instance v12, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->distanceTo(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)D

    move-result-wide v6

    invoke-virtual {v12}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v21

    sub-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v19

    const-string v20, "network"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_13

    const-wide v4, 0x3f53a92a30553261L

    :cond_d
    :goto_5
    mul-double v19, v4, v17

    cmpl-double v19, v6, v19

    if-lez v19, :cond_e

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - abnormal location from NETWORK_PROVIDER : accuracy - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v19

    const v20, 0x461c4000

    invoke-virtual/range {v19 .. v20}, Landroid/location/Location;->setAccuracy(F)V

    :cond_e
    const-wide/high16 v19, 0x4034000000000000L

    cmpg-double v19, v6, v19

    if-gez v19, :cond_f

    invoke-virtual {v12}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    cmpl-float v19, v19, v20

    if-lez v19, :cond_f

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - too close distance - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_f
    const-wide v19, 0x40b3880000000000L

    cmpg-double v19, v17, v19

    if-gez v19, :cond_10

    invoke-virtual {v12}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    cmpl-float v19, v19, v20

    if-lez v19, :cond_10

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - too close time - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    const-string v19, "Staying detected. Flag_Loc OK "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_11
    :goto_6
    if-eqz v3, :cond_c

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Flag_LocOK - loc time is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-gez v19, :cond_12

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    const-wide v4, 0x3fa1eb851eb851ecL

    goto/16 :goto_5

    :cond_14
    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v19

    const/high16 v20, 0x42480000

    cmpl-float v19, v19, v20

    if-lez v19, :cond_15

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - check Initial Fine location : false - accuracy is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - check Initial Fine location : OK - accuracy is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-gez v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmRun()V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "deliverLocationData() end"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    const-string v19, "Position filter Status is changed to true "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Position Filtering hold - GPS batching mode , accumulated index : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public init(Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    return-void
.end method

.method public setGPSBatchingStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    return-void
.end method

.method public setStayingAreaFlag(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop - mLPPPosition size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    return-void
.end method
