.class public Landroid/hardware/contextaware/utilbundle/CaTimeManager;
.super Ljava/lang/Object;
.source "CaTimeManager.java"


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/utilbundle/CaTimeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;
    .locals 2

    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    if-nez v0, :cond_1

    const-class v1, Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getTimeStampForUTC(J)J
    .locals 12

    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v5, 0x0

    const-string v6, "GMT"

    invoke-direct {v0, v5, v6}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v0, 0xe

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/lit16 v0, v8, 0xe10

    mul-int/lit8 v5, v10, 0x3c

    add-int/2addr v0, v5

    add-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v9

    int-to-long v1, v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    move-object v0, p0

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v5

    return-wide v5
.end method

.method public final getTimeStampForUTC(JJJ)J
    .locals 4

    sub-long v0, p1, p5

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    :cond_0
    sub-long v2, p3, v0

    return-wide v2
.end method

.method public final getTimeStampForUTC24(JJJ)J
    .locals 4

    sub-long v0, p1, p5

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/32 v2, -0x5095e20

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    :cond_0
    :goto_0
    sub-long v2, p3, v0

    return-wide v2

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final sendCurTimeToSensorHub()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    new-array v0, v3, [B

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    aget v3, v2, v4

    invoke-static {v3, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v4

    aput-byte v3, v0, v4

    aget v3, v2, v5

    invoke-static {v3, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v4

    aput-byte v3, v0, v5

    aget v3, v2, v6

    invoke-static {v3, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v4

    aput-byte v3, v0, v6

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    new-array v4, v6, [B

    fill-array-data v4, :array_0

    invoke-virtual {v3, v0, v4}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v1

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-static {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        -0x3ft
        0xet
    .end array-data
.end method
