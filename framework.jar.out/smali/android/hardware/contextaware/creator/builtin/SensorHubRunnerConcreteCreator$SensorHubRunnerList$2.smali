.class final enum Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;
.super Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.source "SensorHubRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_PEDOMETER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getObject()Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 5

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$800()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerOtherVerRunner;

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$900()I

    move-result v1

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1000()Landroid/content/Context;

    move-result-object v2

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getLooper()Landroid/os/Looper;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1100()Landroid/os/Looper;

    move-result-object v3

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1200()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerOtherVerRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    :goto_0
    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->setOptionForLib(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1800()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    return-object v1

    :cond_1
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1300()I

    move-result v1

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1400()Landroid/content/Context;

    move-result-object v2

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getLooper()Landroid/os/Looper;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1500()Landroid/os/Looper;

    move-result-object v3

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1600()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    goto :goto_0
.end method
