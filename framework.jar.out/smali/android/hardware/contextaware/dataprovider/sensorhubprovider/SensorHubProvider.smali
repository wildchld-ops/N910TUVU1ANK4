.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.super Landroid/hardware/contextaware/dataprovider/DataProvider;
.source "SensorHubProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubCmdProtocol;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;


# static fields
.field public static final I2C_COMM_ERROR:I = -0x5

.field public static final NOT_RECEIVE_ACK:I = -0xb


# instance fields
.field private mFaultDetectionResult:I

.field private final mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/DataProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method protected final addRequestParser(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final checkFaultDetectionResult()Z
    .locals 2

    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->clear()V

    return-void
.end method

.method public disable()V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToUnregisterLib()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method

.method protected final disableForRestore()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToRegisterLib()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForEnable()B

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method

.method protected final enableForRestore()V
    .locals 0

    return-void
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Action"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getDataPacketToRegisterLib()[B
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method protected getDataPacketToUnregisterLib()[B
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    invoke-static {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract getInstLibType()B
.end method

.method protected abstract getInstructionForDisable()B
.end method

.method protected abstract getInstructionForEnable()B
.end method

.method protected final initializeManager()V
    .locals 0

    return-void
.end method

.method public parse([BI)I
    .locals 6

    move v2, p2

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_1

    :cond_0
    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-byte v0, p1, v2

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyObserver()V

    move v2, v3

    goto :goto_0
.end method

.method public final parseForRequestType([BI)I
    .locals 7

    const/4 v5, -0x1

    move v3, p2

    array-length v6, p1

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_0
    add-int/lit8 v4, v3, 0x1

    aget-byte v2, p1, v3

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    invoke-static {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    invoke-interface {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->getRequestType()I

    move-result v5

    if-ne v2, v5, :cond_3

    invoke-interface {v1, p1, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->parse([BI)I

    move-result v3

    :goto_1
    move v5, v3

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method protected final removeRequestParser(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final reset()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final sendCmdToSensorHub(BB[B)V
    .locals 3

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 v2, 0x1

    aput-byte p2, v1, v2

    invoke-virtual {v0, p3, v1}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    return-void
.end method

.method protected final sendCommonValueToSensorHub(B[B)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    invoke-virtual {v3, p2, v4}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected final sendPropertyValueToSensorHub(BBB[B)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    const/4 v5, 0x2

    aput-byte p2, v4, v5

    const/4 v5, 0x3

    aput-byte p3, v4, v5

    invoke-virtual {v3, p4, v4}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected final sendPropertyValueToSensorHub(BB[B)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    const/4 v5, 0x2

    aput-byte p2, v4, v5

    invoke-virtual {v3, p3, v4}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected final terminateManager()V
    .locals 0

    return-void
.end method
