.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;
.super Ljava/lang/Object;
.source "PedoCalibrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PedoInfoMessage"
.end annotation


# instance fields
.field public distance:D

.field public runStepCnt:I

.field public speed:D

.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

.field public totalStepCnt:I

.field public upDownStepCnt:I

.field public walkStepCnt:I


# direct methods
.method private constructor <init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->speed:D

    iput-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->distance:D

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->totalStepCnt:I

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->walkStepCnt:I

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->runStepCnt:I

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->upDownStepCnt:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V

    return-void
.end method
