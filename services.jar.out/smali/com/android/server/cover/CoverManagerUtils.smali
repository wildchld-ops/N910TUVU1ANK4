.class final Lcom/android/server/cover/CoverManagerUtils;
.super Ljava/lang/Object;
.source "CoverManagerUtils.java"


# static fields
.field private static BOOSTING_TIMEOUT:I = 0x0

.field private static final DEBUG:Z = true

.field static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field static final PATH_FILE_COVER_DETECT:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

.field static final PATH_FILE_COVER_LED_PWR_QCOM:Ljava/lang/String; = "/sys/class/sec/expander/expgpio"

.field static final PATH_FILE_COVER_LED_PWR_SLSI:Ljava/lang/String; = "/sys/class/sec/ledcover/cover_pwr"

.field static final PATH_FILE_COVER_LED_UART_QCOM:Ljava/lang/String; = "/dev/ttyHSL1"

.field static final PATH_FILE_COVER_LED_UART_SLSI:Ljava/lang/String; = "/dev/ttySAC2"

.field static final PATH_FILE_COVER_MODEL:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

.field static final PATH_FILE_COVER_SERIAL_NUMBER:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_sn"

.field static final PATH_FILE_COVER_TYPE:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_id"

.field static final PATH_FILE_COVER_VERIFY:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_verify_mac"

.field static final PATH_FILE_COVER_VERIFY_FAKE:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

.field static final PATH_FILE_PARTIAL_DISP:Ljava/lang/String; = "/sys/class/lcd/panel/partial_disp"

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CoverManager.CoverManagerUtils"

.field private static sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static sCoverCpuBooster:Landroid/os/DVFSHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cover/CoverManagerUtils;->SAFE_DEBUG:Z

    sput-object v2, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Landroid/os/DVFSHelper;

    sput-object v2, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getValueFromSysFS(Ljava/lang/String;I)I
    .locals 9

    move v5, p1

    invoke-static {p0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0xf

    :try_start_1
    new-array v0, v6, [C

    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x1

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    :cond_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    sget-boolean v6, Lcom/android/server/cover/CoverManagerUtils;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "CoverManager.CoverManagerUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getValueFromSysFS() ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v5

    :catch_0
    move-exception v1

    :goto_1
    move v5, p1

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_2
    move v5, p1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_4
    throw v6

    :catch_3
    move-exception v7

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method static getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    move-object v5, p1

    invoke-static {p0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0xf

    :try_start_1
    new-array v0, v6, [C

    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v2, -0x1

    invoke-direct {v5, v0, v6, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    sget-boolean v6, Lcom/android/server/cover/CoverManagerUtils;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "CoverManager.CoverManagerUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getValueFromSysFS() ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v5

    :catch_0
    move-exception v1

    :goto_1
    move-object v5, p1

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_2
    move-object v5, p1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_4
    throw v6

    :catch_3
    move-exception v7

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method static isFileExists(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static performCPUBoostCover(Landroid/content/Context;)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    sget-boolean v0, Lcom/android/server/cover/CoverManagerUtils;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CoverManager.CoverManagerUtils"

    const-string/jumbo v1, "performCPUBoostCover called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "COVER_BOOSTER"

    const/16 v3, 0xc

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v8

    if-eqz v8, :cond_1

    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v8, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_1
    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "COVER_CORE_BOOSTER"

    const/16 v3, 0xe

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v0, v6

    if-lez v0, :cond_3

    aget v0, v6, v9

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_3
    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_4

    :try_start_1
    sget-object v0, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v7

    const-string v0, "CoverManager.CoverManagerUtils"

    const-string/jumbo v1, "sCoverCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    const-string v0, "CoverManager.CoverManagerUtils"

    const-string/jumbo v1, "sCoverCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static sendCoverInformationToAgent(Landroid/content/Context;Z)V
    .locals 5

    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_sn"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.intent.action.COVER_ATTACHED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.soagent"

    const-string v3, "com.sec.android.soagent.AccRegisterReceiver"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isBoot"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "serialNumber"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permission.COVER"

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/cover/CoverManagerUtils;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CoverManager.CoverManagerUtils"

    const-string/jumbo v3, "sendCoverInformationToAgent : broadcast !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/android/server/cover/CoverManagerUtils;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CoverManager.CoverManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCoverInformationToAgent : serialNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static declared-synchronized setPartialScreen(ZI)V
    .locals 8

    const-class v5, Lcom/android/server/cover/CoverManagerUtils;

    monitor-enter v5

    :try_start_0
    const-string v3, "0 0"

    if-eqz p0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v4, "CoverManager.CoverManagerUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parameters="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v6, "/sys/class/lcd/panel/partial_disp"

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    move-object v1, v2

    :cond_2
    :goto_1
    monitor-exit v5

    return-void

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    const-string v4, "CoverManager.CoverManagerUtils"

    const-string v6, "Failed to write partial_disp"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    :goto_4
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_2
    move-exception v6

    goto :goto_4

    :catch_3
    move-exception v4

    goto :goto_0

    :catchall_2
    move-exception v4

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method static showRuggedizedPopup(Landroid/content/Context;ZZ)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.SviewCover"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.SviewCoverFake"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v2, "verified"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v2, "isBoot"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "attached"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x34000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
