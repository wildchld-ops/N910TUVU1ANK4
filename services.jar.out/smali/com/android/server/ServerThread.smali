.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final DIR_ENCRYPTION:Z

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z

.field private static final isRLLAllowed:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createServiceWithConstructor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v5, 0x0

    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "registerService service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v3

    const-string v6, "SystemServer"

    const-string v7, "Got expected PackageAccess complaint"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v6, "SystemServer"

    const-string v7, "Got expected InstantationError"

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v6, "SystemServer"

    const-string v7, "Got unexpected MaybeAbstract failure"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static final startDpmService(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    .locals 9

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_0

    const/16 v6, 0x8

    if-ge v3, v6, :cond_0

    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Lcom/android/server/ConnectivityService;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .locals 6

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.fingerprint.service"

    const-string v5, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting fingerprint service failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 246

    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const/16 v7, -0x13

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    const-string/jumbo v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v206

    if-eqz v206, :cond_0

    invoke-virtual/range {v206 .. v206}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x0

    move-object/from16 v0, v206

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_1

    const/16 v196, 0x1

    :goto_0
    invoke-virtual/range {v206 .. v206}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_2

    const/4 v7, 0x1

    invoke-virtual/range {v206 .. v206}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v206

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v195

    :goto_1
    move/from16 v0, v196

    move-object/from16 v1, v195

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    :cond_0
    const-string/jumbo v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v141

    const-string v7, ""

    move-object/from16 v0, v141

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v140, 0x0

    :goto_2
    const-string v7, "1"

    const-string/jumbo v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    const/16 v152, 0x0

    const/16 v71, 0x0

    const/16 v102, 0x0

    const/16 v157, 0x0

    const/4 v4, 0x0

    const/16 v127, 0x0

    const/16 v81, 0x0

    const/16 v232, 0x0

    const/16 v73, 0x0

    const/16 v171, 0x0

    const/16 v201, 0x0

    const/16 v30, 0x0

    const/16 v29, 0x0

    const/16 v178, 0x0

    const/16 v94, 0x0

    const/16 v90, 0x0

    const/16 v242, 0x0

    const/16 v239, 0x0

    const/16 v128, 0x0

    const/16 v241, 0x0

    const/16 v205, 0x0

    const/16 v188, 0x0

    const/4 v5, 0x0

    const/16 v244, 0x0

    const/16 v82, 0x0

    const/16 v130, 0x0

    const/16 v229, 0x0

    const/16 v203, 0x0

    const/16 v225, 0x0

    const/16 v227, 0x0

    const/16 v197, 0x0

    const/16 v180, 0x0

    const/16 v91, 0x0

    const/16 v151, 0x0

    const/16 v213, 0x0

    const/16 v175, 0x0

    const/16 v98, 0x0

    const/16 v108, 0x0

    const/16 v110, 0x0

    const/16 v162, 0x0

    const/16 v111, 0x0

    const/16 v139, 0x0

    const/16 v193, 0x0

    const/16 v187, 0x0

    const/16 v100, 0x0

    const-string v7, "1"

    const-string/jumbo v9, "ro.config.knox"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    const/16 v218, 0x0

    const/16 v216, 0x0

    const/16 v173, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v245, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v245

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v245 .. v245}, Landroid/os/HandlerThread;->start()V

    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v245 .. v245}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v24, 0x0

    const/16 v143, 0x0

    :try_start_1
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v153, Lcom/android/server/pm/Installer;

    invoke-direct/range {v153 .. v153}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual/range {v153 .. v153}, Lcom/android/server/pm/Installer;->ping()Z

    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v189, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v189 .. v189}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_97

    :try_start_3
    const-string/jumbo v7, "power"

    move-object/from16 v0, v189

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v140 .. v140}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_98

    move-result-object v5

    move-object/from16 v4, v189

    move-object/from16 v152, v153

    :goto_4
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v124

    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v121

    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v119

    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v126

    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v120

    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v125

    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v123

    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v122

    const-string v7, "config.disable_atlas"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v118

    const/16 v114, 0x0

    :try_start_4
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_85

    :try_start_5
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v207, 0x0

    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    move/from16 v0, v207

    if-ge v0, v7, :cond_5

    const-string/jumbo v7, "telephony.registry"

    move/from16 v0, v207

    invoke-static {v7, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    move/from16 v0, v207

    invoke-direct {v9, v5, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    add-int/lit8 v207, v207, 0x1

    goto :goto_5

    :cond_1
    const/16 v196, 0x0

    goto/16 :goto_0

    :cond_2
    const/16 v195, 0x0

    goto/16 :goto_1

    :cond_3
    invoke-static/range {v141 .. v141}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v140

    goto/16 :goto_2

    :catch_0
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting ServiceKeeper"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_1
    move-exception v134

    :goto_6
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_4
    :try_start_6
    new-instance v214, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v214

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    const-string/jumbo v7, "telephony.registry"

    move-object/from16 v0, v214

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_86

    move-object/from16 v213, v214

    :cond_5
    :try_start_8
    const-string v7, "Blueberry"

    const-string v9, "Combination"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v176, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v176

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    const-string/jumbo v7, "telephony.msim.registry"

    move-object/from16 v0, v176

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_87

    move-object/from16 v175, v176

    :cond_6
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    const-string/jumbo v7, "trigger_restart_min_framework"

    move-object/from16 v0, v106

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    :cond_8
    :goto_7
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v140, :cond_49

    const/4 v7, 0x1

    :goto_8
    move-object/from16 v0, v152

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v188

    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    :try_start_b
    invoke-interface/range {v188 .. v188}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    move-result v143

    :goto_9
    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v156

    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v156

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "1.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v156

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "SEAMS"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "SEAMService"

    new-instance v9, Lcom/android/server/SEAMService;

    invoke-direct {v9, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    :cond_a
    :goto_a
    :try_start_e
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v231

    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v231

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "SystemServer"

    const-string v9, "Persona Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v187

    const-string/jumbo v7, "persona"

    move-object/from16 v0, v187

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_b
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3

    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v72, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    :try_start_10
    const-string v7, "account"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_96
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_88

    move-object/from16 v71, v72

    :goto_b
    :try_start_11
    const-string v7, "KTT"

    const-string v9, "TMO"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3

    move-result v7

    if-nez v7, :cond_c

    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    :cond_c
    :goto_c
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v140

    if-ne v0, v7, :cond_4a

    const/4 v7, 0x1

    :goto_d
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v102

    new-instance v109, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v109

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_3

    :try_start_14
    sget-boolean v7, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v7, :cond_d

    const-string v7, "DirEncryptService"

    move-object/from16 v0, v109

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_89

    :cond_d
    move-object/from16 v108, v109

    :goto_e
    if-eqz v63, :cond_e

    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Container Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v101, Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, v101

    invoke-direct {v0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_3

    :try_start_16
    const-string v7, "container_service"

    move-object/from16 v0, v101

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Container Service service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_95
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_8a

    move-object/from16 v100, v101

    :cond_e
    :goto_f
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v7, "1"

    const-string/jumbo v9, "ro.config.tima"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v215

    if-eqz v215, :cond_f

    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_3

    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "TIMA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v219, Lcom/android/server/TimaService;

    move-object/from16 v0, v219

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_3

    :try_start_19
    const-string/jumbo v7, "tima"

    move-object/from16 v0, v219

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_94
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_8b

    move-object/from16 v218, v219

    :goto_10
    const/16 v7, -0x13

    :try_start_1a
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_3

    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "TIMA Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v217, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v217

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_3

    move-object/from16 v216, v217

    :goto_11
    :try_start_1c
    const-string v7, "3.0"

    const-string/jumbo v9, "ro.config.timaversion"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v220

    if-eqz v220, :cond_f

    const-string v7, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v155

    invoke-virtual/range {v155 .. v155}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/Provider;

    invoke-static {v7}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v7, "SystemServer"

    const-string v9, "Added TimaKesytore provider"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_3

    :cond_f
    :goto_12
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_3

    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_8c

    :try_start_1f
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "TactileAssist Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v212, Lcom/android/server/TactileAssistService;

    move-object/from16 v0, v212

    invoke-direct {v0, v5}, Lcom/android/server/TactileAssistService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v7, "tactileassist"

    move-object/from16 v0, v212

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v233, Lcom/android/server/VibratorService;

    move-object/from16 v0, v233

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_8d

    :try_start_20
    const-string/jumbo v7, "vibrator"

    move-object/from16 v0, v233

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "SSRM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_c

    :try_start_21
    new-instance v85, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v85

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v85

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v84

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v84

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v86

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    aput-object v10, v7, v9

    move-object/from16 v0, v86

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v208

    check-cast v208, Landroid/os/IBinder;

    const-string v7, "CustomFrequencyManagerService"

    move-object/from16 v0, v208

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_c

    :goto_13
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Adaptive Display Color Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v129, Lcom/android/server/AdaptiveDisplayColorService;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_c

    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v99, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_8e

    :try_start_24
    const-string v7, "consumer_ir"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_8f

    :try_start_25
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_90

    :try_start_26
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {v9, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_10
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.scontext_lite"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    const-string v7, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_12
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v140

    if-eq v0, v7, :cond_4b

    const/16 v22, 0x1

    :goto_14
    if-nez v143, :cond_4c

    const/16 v23, 0x1

    :goto_15
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v244

    const-string/jumbo v7, "window"

    move-object/from16 v0, v244

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v244

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v7

    move-object/from16 v0, v244

    invoke-virtual {v7, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual/range {v244 .. v244}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    move-object/from16 v0, v244

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    const-string/jumbo v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v231

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, "SystemServer"

    const-string v9, "RCP Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_d

    :try_start_27
    new-instance v194, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v194

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_d

    :try_start_28
    const-string/jumbo v7, "rcp"

    move-object/from16 v0, v194

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_93
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_92

    move-object/from16 v193, v194

    :cond_13
    :goto_17
    :try_start_29
    new-instance v7, Landroid/security/AndroidKeyStoreProvider;

    invoke-direct {v7}, Landroid/security/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v7}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_d

    move-object/from16 v98, v99

    move-object/from16 v128, v129

    move-object/from16 v232, v233

    :goto_18
    const/16 v112, 0x0

    const/16 v136, 0x0

    const/16 v210, 0x0

    const/16 v149, 0x0

    const/16 v75, 0x0

    const/16 v182, 0x0

    const/16 v237, 0x0

    const/16 v158, 0x0

    const/16 v199, 0x0

    const/16 v103, 0x0

    const/16 v223, 0x0

    const/16 v160, 0x0

    const/16 v132, 0x0

    const/16 v234, 0x0

    const/16 v221, 0x0

    const/16 v78, 0x0

    const/16 v190, 0x0

    const/16 v165, 0x0

    const/4 v7, 0x1

    move/from16 v0, v140

    if-eq v0, v7, :cond_14

    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v150, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v150

    move-object/from16 v1, v244

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_f

    :try_start_2b
    const-string v7, "input_method"

    move-object/from16 v0, v150

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_84

    move-object/from16 v149, v150

    :goto_19
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_10

    :cond_14
    :goto_1a
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Window Manager displayReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v244 .. v244}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_11

    :goto_1b
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Package Manager performBootDexOpt"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v188 .. v188}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_12

    :goto_1c
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "ActivityManagerNative showBootMessage"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10406ab

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_83

    :goto_1d
    if-eqz v63, :cond_15

    if-eqz v100, :cond_15

    :try_start_30
    invoke-virtual/range {v100 .. v100}, Lcom/sec/knox/container/EnterpriseContainerService;->preSystemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_13

    :cond_15
    :goto_1e
    const/4 v7, 0x1

    move/from16 v0, v140

    if-eq v0, v7, :cond_56

    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v113, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_14

    :try_start_32
    const-string v7, "device_policy"

    move-object/from16 v0, v113

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_82

    move-object/from16 v112, v113

    :goto_1f
    if-nez v124, :cond_16

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v172, Lcom/android/server/MountService;

    move-object/from16 v0, v172

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_15

    :try_start_34
    const-string v7, "mount"

    move-object/from16 v0, v172

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_81

    move-object/from16 v171, v172

    :cond_16
    :goto_20
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v108, :cond_17

    const-string v7, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v108 .. v108}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_16

    :cond_17
    :goto_21
    const-string/jumbo v7, "ro.mds.enable"

    const-string v9, "false"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v164

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intel MDS Service ro.mds.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v164

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "true"

    move-object/from16 v0, v164

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v192, v0

    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v192, v7

    const/4 v7, 0x1

    const-class v9, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    aput-object v9, v192, v7

    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    move-object/from16 v184, v0

    const/4 v7, 0x0

    aput-object v5, v184, v7

    const/4 v7, 0x1

    aput-object v244, v184, v7

    const-string v177, "com.intel.multidisplay.DisplayObserver"

    const-string v7, "SystemServer"

    const-string v9, "Intel Display Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v177

    move-object/from16 v2, v192

    move-object/from16 v3, v184

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServerThread;->createServiceWithConstructor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "VR Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v235, Lcom/android/server/VRManagerService;

    move-object/from16 v0, v235

    invoke-direct {v0, v5}, Lcom/android/server/VRManagerService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_17

    :try_start_37
    const-string/jumbo v7, "vr"

    move-object/from16 v0, v235

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_80

    move-object/from16 v234, v235

    :goto_22
    if-nez v123, :cond_1a

    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v161, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_18

    :try_start_39
    const-string v7, "lock_settings"

    move-object/from16 v0, v161

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_7f

    move-object/from16 v160, v161

    :goto_23
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v231

    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v231

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    :try_start_3a
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/pm/PersonaManagerService;->preSystemReady()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_19

    :cond_19
    :goto_24
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "SdpManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v202, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v202

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1a

    :try_start_3c
    const-string/jumbo v7, "sdp"

    move-object/from16 v0, v202

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_7e

    move-object/from16 v201, v202

    :goto_25
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v137, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v188

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v7, v0

    move-object/from16 v0, v137

    move-object/from16 v1, v112

    invoke-direct {v0, v5, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1b

    :try_start_3e
    const-string v7, "enterprise_policy"

    move-object/from16 v0, v137

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_7d

    move-object/from16 v136, v137

    :cond_1a
    :goto_26
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "HarmonyEAS service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v163, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_1c

    :try_start_40
    const-string v7, "harmony_eas_service"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Harmony EAS service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_7c

    move-object/from16 v162, v163

    :goto_27
    if-nez v125, :cond_1b

    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v211, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v211

    move-object/from16 v1, v244

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_1d

    :try_start_42
    const-string/jumbo v7, "statusbar"

    move-object/from16 v0, v211

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_7b

    move-object/from16 v210, v211

    :cond_1b
    :goto_28
    if-nez v123, :cond_1c

    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_1e

    :cond_1c
    :goto_29
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v5}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_1f

    :goto_2a
    if-nez v122, :cond_1d

    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_20

    :cond_1d
    :goto_2b
    if-nez v123, :cond_1e

    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v224, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v224

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_21

    :try_start_47
    const-string/jumbo v7, "textservices"

    move-object/from16 v0, v224

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_7a

    move-object/from16 v223, v224

    :cond_1e
    :goto_2c
    if-nez v122, :cond_55

    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v179, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v179

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_22

    :try_start_49
    const-string v7, "netstats"

    move-object/from16 v0, v179

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_79

    move-object/from16 v29, v179

    :goto_2d
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_23

    :try_start_4b
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_78

    :goto_2e
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v243, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v243

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_24

    :try_start_4d
    const-string/jumbo v7, "wifip2p"

    move-object/from16 v0, v243

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_77

    move-object/from16 v242, v243

    :goto_2f
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v240, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v240

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_25

    :try_start_4f
    const-string/jumbo v7, "wifi"

    move-object/from16 v0, v240

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_76

    move-object/from16 v239, v240

    :goto_30
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "MSAP Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v174, Lcom/android/server/MsapWifiService;

    move-object/from16 v0, v174

    invoke-direct {v0, v5}, Lcom/android/server/MsapWifiService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_26

    :try_start_51
    const-string v7, "msapwifi"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_75

    move-object/from16 v173, v174

    :goto_31
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v95, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v95

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_27

    :try_start_53
    const-string v7, "connectivity"

    move-object/from16 v0, v95

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual/range {v242 .. v242}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    invoke-virtual/range {v239 .. v239}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_74

    move-object/from16 v94, v95

    :goto_32
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v205

    const-string/jumbo v7, "servicediscovery"

    move-object/from16 v0, v205

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_28

    :goto_33
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "DPM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v94

    invoke-static {v5, v0}, Lcom/android/server/ServerThread;->startDpmService(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_29

    :goto_34
    if-nez v123, :cond_1f

    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_2a

    :cond_1f
    :goto_35
    if-eqz v171, :cond_20

    if-nez v24, :cond_20

    const-string/jumbo v7, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "trigger_restart_min_framework"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    invoke-virtual/range {v171 .. v171}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_20
    if-eqz v71, :cond_21

    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "accountManager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v71 .. v71}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_2b

    :cond_21
    :goto_36
    if-eqz v102, :cond_22

    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "contentService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v102 .. v102}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_2c

    :cond_22
    :goto_37
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v183, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v183

    move-object/from16 v1, v210

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_2d

    :try_start_5a
    const-string v7, "notification"

    move-object/from16 v0, v183

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_73

    move-object/from16 v182, v183

    :goto_38
    :try_start_5b
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_2e

    :goto_39
    if-nez v120, :cond_23

    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v159, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v159

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_2f

    :try_start_5d
    const-string v7, "location"

    move-object/from16 v0, v159

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_72

    move-object/from16 v158, v159

    :goto_3a
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v104, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v104

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_30

    :try_start_5f
    const-string v7, "country_detector"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_71

    move-object/from16 v103, v104

    :cond_23
    :goto_3b
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "SLocation Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "com.samsung.location.SLocationLoader"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v200

    const-string v7, "getSLocationService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v9, v10

    move-object/from16 v0, v200

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v144

    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v144

    invoke-virtual {v0, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v199, v0

    const-string/jumbo v7, "sec_location"

    move-object/from16 v0, v199

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Loading SLocationService has been completed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_31

    :goto_3c
    if-nez v123, :cond_24

    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_32

    :cond_24
    :goto_3d
    :try_start_62
    const-string v7, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v188

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_51

    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v5}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_33

    :goto_3e
    :try_start_63
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_34

    :goto_3f
    if-nez v123, :cond_25

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110032

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_25

    :try_start_64
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v33, :cond_25

    new-instance v238, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v238

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_35

    :try_start_65
    const-string/jumbo v7, "wallpaper"

    move-object/from16 v0, v238

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_70

    move-object/from16 v237, v238

    :cond_25
    :goto_40
    if-nez v121, :cond_26

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    :try_start_66
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_36

    :cond_26
    :goto_41
    if-nez v123, :cond_27

    :try_start_67
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v131, Lcom/android/server/DockObserver;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_37

    move-object/from16 v130, v131

    :cond_27
    :goto_42
    if-nez v121, :cond_28

    :try_start_68
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_38

    :cond_28
    :goto_43
    if-nez v123, :cond_29

    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v230, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v230

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_39

    :try_start_6a
    const-string/jumbo v7, "usb"

    move-object/from16 v0, v230

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_6f

    move-object/from16 v229, v230

    :goto_44
    :try_start_6b
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v204, Lcom/android/server/SerialService;

    move-object/from16 v0, v204

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_3a

    :try_start_6c
    const-string/jumbo v7, "serial"

    move-object/from16 v0, v204

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_6e

    move-object/from16 v203, v204

    :cond_29
    :goto_45
    :try_start_6d
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v226, Lcom/android/server/TwilightService;

    move-object/from16 v0, v226

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_3b

    move-object/from16 v225, v226

    :goto_46
    :try_start_6e
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v228, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v228

    move-object/from16 v1, v225

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_3c

    move-object/from16 v227, v228

    :goto_47
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    :try_start_6f
    const-string v7, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_3d

    :cond_2a
    :goto_48
    if-nez v123, :cond_2b

    :try_start_70
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_3e

    :goto_49
    :try_start_71
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v76, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_3f

    :try_start_72
    const-string v7, "appwidget"

    move-object/from16 v0, v76

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_6d

    move-object/from16 v75, v76

    :goto_4a
    :try_start_73
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v198, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v198

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_40

    move-object/from16 v197, v198

    :cond_2b
    :goto_4b
    const-string/jumbo v7, "ro.SecEDS.enable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v70

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "false"

    move-object/from16 v0, v70

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    :try_start_74
    const-string v7, "SystemServer"

    const-string v9, "Starting SecEDSEnable Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v135, 0x0

    const-string v7, "com.android.server.SecExternalDisplayService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v135

    if-nez v135, :cond_52

    const-string v7, "SystemServer"

    const-string v9, "eds Service not exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_41

    :cond_2c
    :goto_4c
    :try_start_75
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_42

    :goto_4d
    :try_start_76
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v185

    if-eqz v185, :cond_2d

    const-string v7, "com.sec.feature.cocktailbar"

    move-object/from16 v0, v185

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const-string v7, "SystemServer"

    const-string v9, "CocktailBar Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "CocktailBarService"

    new-instance v9, Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_43

    :cond_2d
    :goto_4e
    :try_start_77
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_44

    :goto_4f
    if-nez v122, :cond_2e

    :try_start_78
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v181, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v181

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_45

    move-object/from16 v180, v181

    :cond_2e
    :goto_50
    if-nez v121, :cond_2f

    :try_start_79
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v92, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v92

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_46

    :try_start_7a
    const-string v7, "commontime_management"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_6c

    move-object/from16 v91, v92

    :cond_2f
    :goto_51
    if-nez v122, :cond_30

    :try_start_7b
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_47

    :cond_30
    :goto_52
    if-nez v123, :cond_31

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111004c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_31

    :try_start_7c
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v133, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v133

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_48

    :try_start_7d
    const-string v7, "dreams"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_6b

    move-object/from16 v132, v133

    :cond_31
    :goto_53
    :try_start_7e
    const-string v7, "SystemServer"

    const-string v9, "Transcloud Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v222, Lcom/android/server/TranscloudMonitorService;

    move-object/from16 v0, v222

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/TranscloudMonitorService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_49

    move-object/from16 v221, v222

    :goto_54
    if-nez v123, :cond_32

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v7

    if-nez v7, :cond_32

    if-nez v118, :cond_32

    :try_start_7f
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v79, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_4a

    :try_start_80
    const-string v7, "assetatlas"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_6a

    move-object/from16 v78, v79

    :cond_32
    :goto_55
    :try_start_81
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_4b

    :goto_56
    const-string v7, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_ABSOLUTE_ENABLE=FALSE - true"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_82
    const-string v7, "SystemServer"

    const-string v9, "Absolute Persistence Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ABTPersistenceService"

    new-instance v9, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_4c

    :goto_57
    :try_start_83
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v191, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v191

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_4d

    :try_start_84
    const-string/jumbo v7, "print"

    move-object/from16 v0, v191

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_69

    move-object/from16 v190, v191

    :goto_58
    if-nez v123, :cond_33

    :try_start_85
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v166, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v166

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_4e

    :try_start_86
    const-string v7, "media_router"

    move-object/from16 v0, v166

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_68

    move-object/from16 v165, v166

    :cond_33
    :goto_59
    if-eqz v114, :cond_34

    :try_start_87
    const-string v7, "SystemServer"

    const-string v9, "Digital Pen Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v116, Ldalvik/system/PathClassLoader;

    const-string/jumbo v7, "system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v116

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v7, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v116

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v115

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v115

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v107

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v107

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v117

    const-string v7, "SystemServer"

    const-string v9, "Successfully loaded DigitalPenService class"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "DigitalPen"

    check-cast v117, Landroid/os/IBinder;

    move-object/from16 v0, v117

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_4f

    :cond_34
    :goto_5a
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v186

    const-string v7, "com.sec.feature.minimode"

    move-object/from16 v0, v186

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    :try_start_88
    const-string v7, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v168, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    const-string v170, "/data/dalvik-cache/minimode.dex"

    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v168

    invoke-interface {v7, v0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v209

    if-eqz v209, :cond_35

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v168

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v170

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_35

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v170

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v168

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v169, Ljava/io/File;

    invoke-direct/range {v169 .. v170}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v209

    iget-wide v9, v0, Llibcore/io/StructStat;->st_mtime:J

    move-object/from16 v0, v169

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v7

    if-eqz v7, :cond_35

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v170

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v209

    iget-wide v12, v0, Llibcore/io/StructStat;->st_mtime:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    new-instance v87, Ldalvik/system/DexClassLoader;

    const-string v7, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, v87

    invoke-direct {v0, v7, v9, v10, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v7, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v87

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v68

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v68

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v69

    const-string v9, "mini_mode_app_manager"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_50

    :cond_36
    :goto_5b
    const-string v7, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v186

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    :try_start_89
    const-string v7, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v80, Landroid/app/BarBeamService;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    const-string v7, "barbeam"

    move-object/from16 v0, v80

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_51

    :cond_37
    :goto_5c
    :try_start_8a
    const-string v7, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v5}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_52

    :goto_5d
    :try_start_8b
    const-string v7, "SystemServer"

    const-string v9, "CEP Proxy KS Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "cepproxyks"

    new-instance v9, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;

    invoke-direct {v9, v5}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_53

    :goto_5e
    :try_start_8c
    const-string v7, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_54

    :goto_5f
    const-string v7, "com.sec.feature.cover.flip"

    move-object/from16 v0, v186

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_38

    const-string v7, "com.sec.feature.cover.sview"

    move-object/from16 v0, v186

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    :cond_38
    :try_start_8d
    const-string v7, "SystemServer"

    const-string v9, "CoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v105, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v105

    move-object/from16 v1, v244

    move-object/from16 v2, v20

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V

    const-string v7, "cover"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_55

    :cond_39
    :goto_60
    :try_start_8e
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v185

    if-eqz v185, :cond_3d

    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v154, 0x0

    const-string v7, "com.sec.feature.multiwindow"

    move-object/from16 v0, v185

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/16 v154, 0x1

    :cond_3a
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v185

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x2

    if-lt v7, v9, :cond_3b

    const/16 v154, 0x1

    :cond_3b
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v185

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3c

    const/16 v154, 0x0

    :cond_3c
    if-eqz v154, :cond_3d

    const-string v7, "SystemServer"

    const-string v9, "SpenGestureManagerService enable"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "spengestureservice"

    new-instance v9, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v244

    invoke-direct {v9, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_56

    :cond_3d
    :goto_61
    :try_start_8f
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v185

    if-eqz v185, :cond_3e

    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "com.sec.feature.healthcover"

    move-object/from16 v0, v185

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3e

    const-string v7, "SystemServer"

    const-string v9, "HealthCoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v146, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/healthcoverservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v146

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v7, "com.samsung.android.healthcover.HealthCoverService"

    move-object/from16 v0, v146

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v145

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v145

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v147

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v147

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v148

    check-cast v148, Landroid/os/IBinder;

    const-string v7, "healthcover"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_57

    :cond_3e
    :goto_62
    :try_start_90
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v87

    const-string v7, "com.sec.android.smartface.SmartFaceManager"

    const/4 v9, 0x1

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v88

    const-string v7, "SMARTFACE_SERVICE"

    move-object/from16 v0, v88

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v142

    const-string v7, "com.sec.android.smartface.SmartFaceService"

    const/4 v9, 0x1

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v89

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v89

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v97

    const/4 v7, 0x0

    move-object/from16 v0, v142

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v97

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "SmartFaceService loaded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_58

    :goto_63
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v7

    if-eqz v7, :cond_3f

    :try_start_91
    new-instance v74, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    const-string v7, "SamsungAppDisabler"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_59

    :cond_3f
    :goto_64
    :try_start_92
    const-string v7, "SystemServer"

    const-string v9, "Starting EPDG SERVICE"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v138, 0x0

    const-string v7, "com.sec.epdg.EpdgService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v138

    if-nez v138, :cond_53

    const-string v7, "SystemServer"

    const-string v9, "Epdg Service does not exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_5a

    :goto_65
    const-string v7, "SystemServer"

    const-string v9, "Window Manager detectSafeMode"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v244 .. v244}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    if-eqz v47, :cond_54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_66
    :try_start_93
    const-string v7, "SystemServer"

    const-string/jumbo v9, "vibrator systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v232 .. v232}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_93} :catch_5b

    :goto_67
    if-eqz v160, :cond_40

    :try_start_94
    const-string v7, "SystemServer"

    const-string v9, "lockSettings systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v160 .. v160}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_94} :catch_5c

    :cond_40
    :goto_68
    if-eqz v112, :cond_41

    :try_start_95
    const-string v7, "SystemServer"

    const-string v9, "devicePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v112 .. v112}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_95} :catch_5d

    :cond_41
    :goto_69
    if-eqz v136, :cond_42

    invoke-virtual/range {v136 .. v136}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    const-string v7, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    if-eqz v182, :cond_43

    :try_start_96
    const-string v7, "SystemServer"

    const-string v9, "notification systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-virtual/range {v182 .. v182}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_96} :catch_5e

    :cond_43
    :goto_6a
    :try_start_97
    const-string v7, "SystemServer"

    const-string v9, "Window Manager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v244 .. v244}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_97} :catch_5f

    :goto_6b
    if-eqz v47, :cond_44

    const-string v7, "SystemServer"

    const-string v9, "ActivityManager showSafeModeOverlay"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_44
    invoke-virtual/range {v244 .. v244}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v93

    new-instance v167, Landroid/util/DisplayMetrics;

    invoke-direct/range {v167 .. v167}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v236

    check-cast v236, Landroid/view/WindowManager;

    invoke-interface/range {v236 .. v236}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v167

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v93

    move-object/from16 v1, v167

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_98
    const-string v7, "SystemServer"

    const-string v9, "PowerManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v225

    move-object/from16 v1, v132

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_98} :catch_60

    :goto_6c
    :try_start_99
    const-string v7, "SystemServer"

    const-string v9, "LightsService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/server/LightsService;->systemReady()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_99} :catch_61

    :goto_6d
    if-eqz v128, :cond_45

    :try_start_9a
    const-string v7, "SystemServer"

    const-string v9, "AdaptiveDisplayColorService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v128 .. v128}, Lcom/android/server/AdaptiveDisplayColorService;->systemReady()V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9a} :catch_62

    :cond_45
    :goto_6e
    :try_start_9b
    const-string v7, "SystemServer"

    const-string v9, "PackageManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v188 .. v188}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9b} :catch_63

    :goto_6f
    :try_start_9c
    const-string v7, "SystemServer"

    const-string v9, "DisplayManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9c} :catch_64

    :goto_70
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v231

    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v231

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    :try_start_9d
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_9d} :catch_65

    :cond_46
    :goto_71
    :try_start_9e
    invoke-virtual/range {v201 .. v201}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_9e} :catch_66

    :goto_72
    move-object/from16 v34, v5

    move-object/from16 v35, v171

    move-object/from16 v36, v8

    move-object/from16 v37, v30

    move-object/from16 v38, v29

    move-object/from16 v39, v25

    move-object/from16 v40, v94

    move-object/from16 v41, v130

    move-object/from16 v42, v229

    move-object/from16 v43, v225

    move-object/from16 v44, v227

    move-object/from16 v46, v75

    move-object/from16 v48, v237

    move-object/from16 v49, v149

    move-object/from16 v45, v197

    move-object/from16 v51, v158

    move-object/from16 v52, v199

    move-object/from16 v53, v103

    move-object/from16 v54, v180

    move-object/from16 v55, v91

    move-object/from16 v56, v223

    move-object/from16 v50, v210

    move-object/from16 v57, v132

    move-object/from16 v58, v221

    move-object/from16 v59, v78

    move-object/from16 v60, v20

    move-object/from16 v61, v213

    move-object/from16 v62, v234

    move-object/from16 v65, v175

    move-object/from16 v66, v190

    move-object/from16 v67, v165

    move-object/from16 v64, v100

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v67}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/TranscloudMonitorService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/VRManagerService;ZLcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_47

    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_48
    :try_start_9f
    const-string v7, "1"

    move-object/from16 v0, v106

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto/16 :goto_7

    :cond_49
    const/4 v7, 0x0

    goto/16 :goto_8

    :catch_2
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9f
    .catch Ljava/lang/RuntimeException; {:try_start_9f .. :try_end_9f} :catch_3

    goto/16 :goto_a

    :catch_3
    move-exception v134

    move-object/from16 v20, v151

    move-object/from16 v16, v73

    move-object/from16 v8, v81

    move-object/from16 v6, v157

    :goto_73
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    :catch_4
    move-exception v134

    :goto_74
    :try_start_a0
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :catch_5
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catch Ljava/lang/RuntimeException; {:try_start_a0 .. :try_end_a0} :catch_3

    goto/16 :goto_c

    :cond_4a
    const/4 v7, 0x0

    goto/16 :goto_d

    :catch_6
    move-exception v134

    :try_start_a1
    const-string v7, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a1
    .catch Ljava/lang/RuntimeException; {:try_start_a1 .. :try_end_a1} :catch_89

    const/16 v108, 0x0

    goto/16 :goto_e

    :catch_7
    move-exception v134

    :goto_75
    :try_start_a2
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure starting Container Service"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v134 .. v134}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catch_8
    move-exception v134

    :goto_76
    const-string/jumbo v7, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :catch_9
    move-exception v134

    const-string/jumbo v7, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    :catch_a
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Unable to add TimaKesytore provider"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v134 .. v134}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a2
    .catch Ljava/lang/RuntimeException; {:try_start_a2 .. :try_end_a2} :catch_3

    goto/16 :goto_12

    :catch_b
    move-exception v134

    :try_start_a3
    const-string v7, "SystemServer"

    const-string/jumbo v9, "ssrm.jar not found"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_a3} :catch_c

    goto/16 :goto_13

    :catch_c
    move-exception v134

    move-object/from16 v20, v151

    move-object/from16 v16, v73

    move-object/from16 v232, v233

    goto/16 :goto_73

    :cond_4b
    const/16 v22, 0x0

    goto/16 :goto_14

    :cond_4c
    const/16 v23, 0x0

    goto/16 :goto_15

    :cond_4d
    const/4 v7, 0x1

    move/from16 v0, v140

    if-ne v0, v7, :cond_4e

    :try_start_a4
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :catch_d
    move-exception v134

    move-object/from16 v98, v99

    move-object/from16 v128, v129

    move-object/from16 v232, v233

    goto/16 :goto_73

    :cond_4e
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4f

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_4f
    if-eqz v119, :cond_50

    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_50
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v83, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v83

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a4
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_a4} :catch_d

    :try_start_a5
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Secure Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "bluetooth_secure_mode_manager"

    new-instance v9, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v9, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a5
    .catch Ljava/lang/RuntimeException; {:try_start_a5 .. :try_end_a5} :catch_91

    move-object/from16 v82, v83

    goto/16 :goto_16

    :catch_e
    move-exception v134

    :goto_77
    :try_start_a6
    const-string v7, "SystemServer"

    const-string v9, "Failure starting RCP Manager Service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_a6} :catch_d

    goto/16 :goto_17

    :catch_f
    move-exception v134

    :goto_78
    const-string/jumbo v7, "starting Input MethodManager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :catch_10
    move-exception v134

    const-string/jumbo v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :catch_11
    move-exception v134

    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    :catch_12
    move-exception v134

    const-string/jumbo v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    :catch_13
    move-exception v134

    const-string v7, "making Containerservice preSystemReady ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    :catch_14
    move-exception v134

    :goto_79
    const-string/jumbo v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    :catch_15
    move-exception v134

    :goto_7a
    const-string/jumbo v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :catch_16
    move-exception v134

    const-string/jumbo v7, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    :catch_17
    move-exception v134

    :goto_7b
    const-string/jumbo v7, "starting VR Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    :catch_18
    move-exception v134

    :goto_7c
    const-string/jumbo v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    :catch_19
    move-exception v134

    const-string v7, "Unable to call PMS preSystemReady method"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    :catch_1a
    move-exception v134

    :goto_7d
    const-string/jumbo v7, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    :catch_1b
    move-exception v134

    :goto_7e
    const-string v7, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    :catch_1c
    move-exception v134

    :goto_7f
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Harmony EAS service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    :catch_1d
    move-exception v134

    :goto_80
    const-string/jumbo v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    :catch_1e
    move-exception v134

    const-string/jumbo v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    :catch_1f
    move-exception v134

    const-string v7, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    :catch_20
    move-exception v134

    const-string/jumbo v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    :catch_21
    move-exception v134

    :goto_81
    const-string/jumbo v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    :catch_22
    move-exception v134

    :goto_82
    const-string/jumbo v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    :catch_23
    move-exception v134

    move-object/from16 v25, v178

    :goto_83
    const-string/jumbo v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    :catch_24
    move-exception v134

    :goto_84
    const-string/jumbo v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    :catch_25
    move-exception v134

    :goto_85
    const-string/jumbo v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    :catch_26
    move-exception v134

    :goto_86
    const-string/jumbo v7, "starting MSAP Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    :catch_27
    move-exception v134

    :goto_87
    const-string/jumbo v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    :catch_28
    move-exception v134

    const-string/jumbo v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    :catch_29
    move-exception v134

    const-string/jumbo v7, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    :catch_2a
    move-exception v134

    const-string/jumbo v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    :catch_2b
    move-exception v134

    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    :catch_2c
    move-exception v134

    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    :catch_2d
    move-exception v134

    :goto_88
    const-string/jumbo v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    :catch_2e
    move-exception v134

    const-string/jumbo v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    :catch_2f
    move-exception v134

    :goto_89
    const-string/jumbo v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    :catch_30
    move-exception v134

    :goto_8a
    const-string/jumbo v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    :catch_31
    move-exception v134

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v134 .. v134}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    :catch_32
    move-exception v134

    const-string/jumbo v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    :cond_51
    :try_start_a7
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_a7} :catch_33

    goto/16 :goto_3e

    :catch_33
    move-exception v134

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "starting Spell Service failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v134

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    :catch_34
    move-exception v134

    const-string/jumbo v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    :catch_35
    move-exception v134

    :goto_8b
    const-string/jumbo v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    :catch_36
    move-exception v134

    const-string/jumbo v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    :catch_37
    move-exception v134

    const-string/jumbo v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    :catch_38
    move-exception v134

    const-string/jumbo v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    :catch_39
    move-exception v134

    :goto_8c
    const-string/jumbo v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    :catch_3a
    move-exception v134

    :goto_8d
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_45

    :catch_3b
    move-exception v134

    const-string/jumbo v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    :catch_3c
    move-exception v134

    const-string/jumbo v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    :catch_3d
    move-exception v134

    const-string v7, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    :catch_3e
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_49

    :catch_3f
    move-exception v134

    :goto_8e
    const-string/jumbo v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    :catch_40
    move-exception v134

    const-string/jumbo v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    :cond_52
    :try_start_a8
    const-string v7, "SystemServer"

    const-string v9, "edsclass Service exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v77, v0

    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v77, v7

    move-object/from16 v0, v135

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v96

    const-string v9, "SecExternalDisplayService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v96

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_a8} :catch_41

    goto/16 :goto_4c

    :catch_41
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting eds Service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    :catch_42
    move-exception v134

    const-string/jumbo v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    :catch_43
    move-exception v134

    const-string/jumbo v7, "starting CocktailBarManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    :catch_44
    move-exception v134

    const-string/jumbo v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    :catch_45
    move-exception v134

    const-string/jumbo v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    :catch_46
    move-exception v134

    :goto_8f
    const-string/jumbo v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    :catch_47
    move-exception v134

    const-string/jumbo v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    :catch_48
    move-exception v134

    :goto_90
    const-string/jumbo v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    :catch_49
    move-exception v134

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure starting TranscloudService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v134 .. v134}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    :catch_4a
    move-exception v134

    :goto_91
    const-string/jumbo v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    :catch_4b
    move-exception v134

    const-string/jumbo v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    :catch_4c
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_57

    :catch_4d
    move-exception v134

    :goto_92
    const-string/jumbo v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    :catch_4e
    move-exception v134

    :goto_93
    const-string/jumbo v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    :catch_4f
    move-exception v134

    const-string/jumbo v7, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a

    :catch_50
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    :catch_51
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    :catch_52
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5d

    :catch_53
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5e

    :catch_54
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f

    :catch_55
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting CoverManager Service"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_60

    :catch_56
    move-exception v134

    const-string/jumbo v7, "starting SpenGestureManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61

    :catch_57
    move-exception v134

    const-string v7, "SystemServer"

    const-string v9, "Failure starting HealthCoverService"

    move-object/from16 v0, v134

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_62

    :catch_58
    move-exception v134

    const-string v7, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63

    :catch_59
    move-exception v134

    const-string v7, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_64

    :cond_53
    :try_start_a9
    const-string v7, "SystemServer"

    const-string v9, "Epdg Service exists"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v77, v0

    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v77, v7

    move-object/from16 v0, v138

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v96

    const-string v9, "epdg"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v96

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_a9} :catch_5a

    goto/16 :goto_65

    :catch_5a
    move-exception v134

    const-string v7, "Failed To Start Epdg Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_65

    :cond_54
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_66

    :catch_5b
    move-exception v134

    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_67

    :catch_5c
    move-exception v134

    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68

    :catch_5d
    move-exception v134

    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69

    :catch_5e
    move-exception v134

    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    :catch_5f
    move-exception v134

    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b

    :catch_60
    move-exception v134

    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6c

    :catch_61
    move-exception v134

    const-string v7, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    :catch_62
    move-exception v134

    const-string v7, "making Adaptive Display Color Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e

    :catch_63
    move-exception v134

    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f

    :catch_64
    move-exception v134

    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_70

    :catch_65
    move-exception v134

    const-string v7, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_71

    :catch_66
    move-exception v134

    const-string v7, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_72

    :catch_67
    move-exception v7

    goto/16 :goto_9

    :catch_68
    move-exception v134

    move-object/from16 v165, v166

    goto/16 :goto_93

    :catch_69
    move-exception v134

    move-object/from16 v190, v191

    goto/16 :goto_92

    :catch_6a
    move-exception v134

    move-object/from16 v78, v79

    goto/16 :goto_91

    :catch_6b
    move-exception v134

    move-object/from16 v132, v133

    goto/16 :goto_90

    :catch_6c
    move-exception v134

    move-object/from16 v91, v92

    goto/16 :goto_8f

    :catch_6d
    move-exception v134

    move-object/from16 v75, v76

    goto/16 :goto_8e

    :catch_6e
    move-exception v134

    move-object/from16 v203, v204

    goto/16 :goto_8d

    :catch_6f
    move-exception v134

    move-object/from16 v229, v230

    goto/16 :goto_8c

    :catch_70
    move-exception v134

    move-object/from16 v237, v238

    goto/16 :goto_8b

    :catch_71
    move-exception v134

    move-object/from16 v103, v104

    goto/16 :goto_8a

    :catch_72
    move-exception v134

    move-object/from16 v158, v159

    goto/16 :goto_89

    :catch_73
    move-exception v134

    move-object/from16 v182, v183

    goto/16 :goto_88

    :catch_74
    move-exception v134

    move-object/from16 v94, v95

    goto/16 :goto_87

    :catch_75
    move-exception v134

    move-object/from16 v173, v174

    goto/16 :goto_86

    :catch_76
    move-exception v134

    move-object/from16 v239, v240

    goto/16 :goto_85

    :catch_77
    move-exception v134

    move-object/from16 v242, v243

    goto/16 :goto_84

    :catch_78
    move-exception v134

    goto/16 :goto_83

    :catch_79
    move-exception v134

    move-object/from16 v29, v179

    goto/16 :goto_82

    :catch_7a
    move-exception v134

    move-object/from16 v223, v224

    goto/16 :goto_81

    :catch_7b
    move-exception v134

    move-object/from16 v210, v211

    goto/16 :goto_80

    :catch_7c
    move-exception v134

    move-object/from16 v162, v163

    goto/16 :goto_7f

    :catch_7d
    move-exception v134

    move-object/from16 v136, v137

    goto/16 :goto_7e

    :catch_7e
    move-exception v134

    move-object/from16 v201, v202

    goto/16 :goto_7d

    :catch_7f
    move-exception v134

    move-object/from16 v160, v161

    goto/16 :goto_7c

    :catch_80
    move-exception v134

    move-object/from16 v234, v235

    goto/16 :goto_7b

    :catch_81
    move-exception v134

    move-object/from16 v171, v172

    goto/16 :goto_7a

    :catch_82
    move-exception v134

    move-object/from16 v112, v113

    goto/16 :goto_79

    :catch_83
    move-exception v7

    goto/16 :goto_1d

    :catch_84
    move-exception v134

    move-object/from16 v149, v150

    goto/16 :goto_78

    :catch_85
    move-exception v134

    move-object/from16 v20, v151

    move-object/from16 v16, v73

    move-object/from16 v8, v81

    move-object/from16 v11, v127

    move-object/from16 v6, v157

    goto/16 :goto_73

    :catch_86
    move-exception v134

    move-object/from16 v213, v214

    move-object/from16 v20, v151

    move-object/from16 v16, v73

    move-object/from16 v8, v81

    move-object/from16 v6, v157

    goto/16 :goto_73

    :catch_87
    move-exception v134

    move-object/from16 v175, v176

    move-object/from16 v20, v151

    move-object/from16 v16, v73

    move-object/from16 v8, v81

    move-object/from16 v6, v157

    goto/16 :goto_73

    :catch_88
    move-exception v134

    move-object/from16 v20, v151

    move-object/from16 v16, v73

    move-object/from16 v8, v81

    move-object/from16 v6, v157

    move-object/from16 v71, v72

    goto/16 :goto_73

    :catch_89
    move-exception v134

    move-object/from16 v108, v109

    move-object/from16 v20, v151

    move-object/from16 v16, v73

    move-object/from16 v8, v81

    move-object/from16 v6, v157

    goto/16 :goto_73

    :catch_8a
    move-exception v134

    move-object/from16 v100, v101

    move-object/from16 v20, v151

    move-object/from16 v16, v73

    move-object/from16 v8, v81

    move-object/from16 v6, v157

    goto/16 :goto_73

    :catch_8b
    move-exception v134

    move-object/from16 v218, v219

    move-object/from16 v20, v151

    move-object/from16 v16, v73

    move-object/from16 v8, v81

    move-object/from16 v6, v157

    goto/16 :goto_73

    :catch_8c
    move-exception v134

    move-object/from16 v20, v151

    move-object/from16 v16, v73

    move-object/from16 v8, v81

    goto/16 :goto_73

    :catch_8d
    move-exception v134

    move-object/from16 v20, v151

    move-object/from16 v16, v73

    goto/16 :goto_73

    :catch_8e
    move-exception v134

    move-object/from16 v20, v151

    move-object/from16 v128, v129

    move-object/from16 v16, v73

    move-object/from16 v232, v233

    goto/16 :goto_73

    :catch_8f
    move-exception v134

    move-object/from16 v98, v99

    move-object/from16 v20, v151

    move-object/from16 v128, v129

    move-object/from16 v16, v73

    move-object/from16 v232, v233

    goto/16 :goto_73

    :catch_90
    move-exception v134

    move-object/from16 v98, v99

    move-object/from16 v20, v151

    move-object/from16 v128, v129

    move-object/from16 v232, v233

    goto/16 :goto_73

    :catch_91
    move-exception v134

    move-object/from16 v98, v99

    move-object/from16 v82, v83

    move-object/from16 v128, v129

    move-object/from16 v232, v233

    goto/16 :goto_73

    :catch_92
    move-exception v134

    move-object/from16 v193, v194

    move-object/from16 v98, v99

    move-object/from16 v128, v129

    move-object/from16 v232, v233

    goto/16 :goto_73

    :catch_93
    move-exception v134

    move-object/from16 v193, v194

    goto/16 :goto_77

    :catch_94
    move-exception v134

    move-object/from16 v218, v219

    goto/16 :goto_76

    :catch_95
    move-exception v134

    move-object/from16 v100, v101

    goto/16 :goto_75

    :catch_96
    move-exception v134

    move-object/from16 v71, v72

    goto/16 :goto_74

    :catch_97
    move-exception v134

    move-object/from16 v152, v153

    goto/16 :goto_6

    :catch_98
    move-exception v134

    move-object/from16 v4, v189

    move-object/from16 v152, v153

    goto/16 :goto_6

    :cond_55
    move-object/from16 v25, v178

    goto/16 :goto_34

    :cond_56
    move-object/from16 v25, v178

    goto/16 :goto_62
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
