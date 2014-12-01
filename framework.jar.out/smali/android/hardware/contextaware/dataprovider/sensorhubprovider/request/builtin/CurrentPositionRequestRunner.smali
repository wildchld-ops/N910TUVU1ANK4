.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;
.super Ljava/lang/Object;
.source "CurrentPositionRequestRunner.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
.implements Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    }
.end annotation


# instance fields
.field private final mCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

.field private mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

.field private final mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {v0, p1, p2, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    return-void
.end method


# virtual methods
.method public getPosition()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    return-object v0
.end method

.method public final getRequestType()I
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->REQUEST_CURRENT_POSITION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    iget-byte v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->value:B

    return v0
.end method

.method public final notifyObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    invoke-interface {v0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;->updatePosition(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V

    :cond_0
    return-void
.end method

.method public final parse([BI)I
    .locals 4

    move v1, p2

    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p1, v1

    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->enable(I)V

    move v1, v2

    goto :goto_0
.end method

.method public final registerObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    return-void
.end method

.method public final unregisterObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    return-void
.end method

.method public final updateCurrentPosition(I[IDDDDFFI)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->type:I
    invoke-static {v0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$002(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->utcTime:[I
    invoke-static {v0, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$102(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;[I)[I

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->latitude:D
    invoke-static {v0, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$202(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->longitude:D
    invoke-static {v0, p5, p6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$302(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->altitude:D
    invoke-static {v0, p7, p8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$402(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->distance:D
    invoke-static {v0, p9, p10}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$502(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->speed:F
    invoke-static {v0, p11}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$602(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->accuracy:F
    invoke-static {v0, p12}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$702(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->satelliteCount:I
    invoke-static {v0, p13}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$802(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->notifyObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V

    return-void
.end method
