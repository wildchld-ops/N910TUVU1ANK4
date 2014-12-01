.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeParser;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
.source "LibTypeParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse([BI)I
    .locals 10

    const/4 v7, -0x1

    move v6, p2

    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    array-length v8, p1

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_0

    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_1
    return v7

    :cond_0
    aget-byte v8, p1, v6

    iget-byte v9, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    if-eq v8, v9, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-super {p0, v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v8

    invoke-static {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    move-result-object v8

    iget-byte v9, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    invoke-static {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->getCode(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->containsParser(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    move-result-object v8

    iget-byte v9, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    invoke-static {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->getCode(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PARSER_NOT_EXIST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v8

    invoke-static {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-ne v6, p2, :cond_7

    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v8

    invoke-static {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    invoke-interface {v4, p1, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v6

    goto :goto_2

    :cond_5
    iget-byte v8, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ENVIRONMENT_SENSOR:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    iget-byte v9, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    if-ne v8, v9, :cond_6

    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8, p1, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->parse([BI)I

    move-result v6

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5, p1, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v6

    goto :goto_2

    :cond_7
    move v7, v6

    goto/16 :goto_1
.end method
