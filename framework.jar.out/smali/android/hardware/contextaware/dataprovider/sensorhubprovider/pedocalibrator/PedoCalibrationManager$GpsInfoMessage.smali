.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;
.super Ljava/lang/Object;
.source "PedoCalibrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsInfoMessage"
.end annotation


# instance fields
.field public accuracy:F

.field public altitude:D

.field public latitude:D

.field public longitude:D

.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

.field public timestamp:J

.field public usedSat:I


# direct methods
.method private constructor <init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V
    .locals 3

    const-wide/16 v1, 0x0

    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->usedSat:I

    iput-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->latitude:D

    iput-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->longitude:D

    iput-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->altitude:D

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->accuracy:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->timestamp:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V

    return-void
.end method
