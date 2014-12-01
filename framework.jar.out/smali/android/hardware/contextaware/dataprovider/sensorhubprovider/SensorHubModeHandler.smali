.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;
.source "SensorHubModeHandler.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;-><init>()V

    return-void
.end method

.method private isDuplicatedMode(I)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    sget-object v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v5, v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v5, p1

    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v8, v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v5, v8, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-byte v5, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v5, p1

    iget-byte v8, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v5, v8, :cond_1

    move v5, v6

    :goto_2
    add-int/2addr v1, v5

    goto :goto_1

    :cond_1
    move v5, v7

    goto :goto_2

    :cond_2
    if-le v1, v6, :cond_3

    :goto_3
    return v6

    :cond_3
    move v6, v7

    goto :goto_3
.end method

.method private parse([BILjava/lang/String;)I
    .locals 4

    const/4 v2, -0x1

    move v1, p2

    invoke-super {p0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v1

    move v2, v1

    goto :goto_0
.end method

.method private parseDuplicatedMode(I[BI)I
    .locals 10

    const/4 v7, -0x1

    move v6, p3

    move v5, p3

    const/4 v3, 0x0

    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v1, v0, v2

    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v8, v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v8, p1

    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v9, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v8, v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-byte v8, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v8, p1

    iget-byte v9, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v8, v9, :cond_0

    iget-byte v8, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    invoke-virtual {p0, v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v8

    invoke-static {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    :cond_2
    :goto_2
    return v6

    :cond_3
    invoke-direct {p0, p2, v5, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parse([BILjava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_4
    if-ne v6, v5, :cond_2

    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v8

    invoke-static {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    goto :goto_2
.end method


# virtual methods
.method protected abstract getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected final getParserKey(I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    iget-byte v5, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-eq p1, v5, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    return-object v4
.end method

.method protected final isRunning()Z
    .locals 5

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public final parse([BI)I
    .locals 11

    const/4 v8, -0x1

    move v6, p2

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_0

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, p1, v6

    invoke-direct {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->isDuplicatedMode(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0, v5, p1, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parseDuplicatedMode(I[BI)I

    move-result v8

    move v6, v7

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v0, v2

    iget-byte v9, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v9, v5

    iget-byte v10, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v9, v10, :cond_4

    invoke-virtual {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_5

    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v9

    invoke-static {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, v7, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parse([BILjava/lang/String;)I

    move-result v8

    move v6, v7

    goto :goto_0
.end method
