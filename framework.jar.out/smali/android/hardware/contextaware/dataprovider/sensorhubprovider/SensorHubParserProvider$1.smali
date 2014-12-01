.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;
.super Ljava/lang/Object;
.source "SensorHubParserProvider.java"

# interfaces
.implements Landroid/hardware/sensorhub/SensorHubEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onGetSensorHubData(Landroid/hardware/sensorhub/SensorHubEvent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "AP_NONE"

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I
    invoke-static {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)I

    move-result v2

    const/16 v3, -0x2e

    if-ne v2, v3, :cond_2

    const-string v0, "AP_SLEEP"

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->sendCurTimeToSensorHub()V

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetSensorHubData Event [event buffer len :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/hardware/sensorhub/SensorHubEvent;->length:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
    invoke-static {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$100(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LIBRARY_PARSER_NULL_EXEPTION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I
    invoke-static {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)I

    move-result v2

    const/16 v3, -0x2f

    if-ne v2, v3, :cond_0

    const-string v0, "AP_WAKEUP"

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
    invoke-static {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$100(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_PARSER_MAP:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    :try_start_2
    iget v2, p1, Landroid/hardware/sensorhub/SensorHubEvent;->length:I

    if-gtz v2, :cond_5

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_GET_SENSOR_HUB_EVENT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    iget-object v3, p1, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    # invokes: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([B)I
    invoke-static {v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$200(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;[B)I

    move-result v1

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
