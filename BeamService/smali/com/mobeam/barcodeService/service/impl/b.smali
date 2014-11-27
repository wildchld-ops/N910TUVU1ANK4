.class public final Lcom/mobeam/barcodeService/service/impl/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/mobeam/barcodeService/service/impl/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobeam/barcodeService/service/impl/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobeam/barcodeService/service/impl/b;->b:Lcom/mobeam/barcodeService/service/impl/m;

    return-void
.end method

.method private static a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/16 v2, 0x400

    new-array v2, v2, [B

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0
.end method

.method private c()Lcom/mobeam/mbss/service/DeviceData;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lcom/mobeam/mbss/service/DeviceData;

    invoke-direct {v1}, Lcom/mobeam/mbss/service/DeviceData;-><init>()V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mobeam/mbss/service/DeviceData$Operator;->parse(Ljava/lang/String;)Lcom/mobeam/mbss/service/DeviceData$Operator;

    move-result-object v2

    iput-object v2, v1, Lcom/mobeam/mbss/service/DeviceData;->netOp:Lcom/mobeam/mbss/service/DeviceData$Operator;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mobeam/mbss/service/DeviceData$Operator;->parse(Ljava/lang/String;)Lcom/mobeam/mbss/service/DeviceData$Operator;

    move-result-object v2

    iput-object v2, v1, Lcom/mobeam/mbss/service/DeviceData;->simOp:Lcom/mobeam/mbss/service/DeviceData$Operator;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mobeam/mbss/service/DeviceData;->TAC:Ljava/lang/String;

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/mobeam/mbss/service/DeviceData;->model:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v1, Lcom/mobeam/mbss/service/DeviceData;->version:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v1, Lcom/mobeam/mbss/service/DeviceData;->manufacturer:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v1, Lcom/mobeam/mbss/service/DeviceData;->bsaVersionCode:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, v1, Lcom/mobeam/mbss/service/DeviceData;->bsaVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mobeam/mbss/service/DeviceData;->deviceLocale:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mobeam/mbss/service/DeviceData;->deviceCountry:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v4, v4, v2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mobeam/mbss/service/DeviceData;->deviceTimezone:Ljava/lang/String;

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/mobeam/barcodeService/service/impl/d;)Lcom/mobeam/barcodeService/service/impl/c;
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mobeam/barcodeService/service/impl/b;->b()Lcom/mobeam/mbss/service/DeviceAuth;

    move-result-object v4

    iget-object v5, p1, Lcom/mobeam/barcodeService/service/impl/d;->b:Lcom/mobeam/mbss/service/AppAuth;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "loadCachedRecord: searching for app record that matches "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/mobeam/mbss/service/AppAuth;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobeam/barcodeService/a/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/a/a;

    move-result-object v0

    iget-object v6, v5, Lcom/mobeam/mbss/service/AppAuth;->appPackage:Lcom/mobeam/mbss/service/Package;

    iget-object v6, v6, Lcom/mobeam/mbss/service/Package;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/mobeam/barcodeService/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/a/a/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "authenticate: Querying server for "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/mobeam/barcodeService/service/impl/d;->b:Lcom/mobeam/mbss/service/AppAuth;

    iget-object v5, v5, Lcom/mobeam/mbss/service/AppAuth;->appPackage:Lcom/mobeam/mbss/service/Package;

    iget-object v5, v5, Lcom/mobeam/mbss/service/Package;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/b;->b:Lcom/mobeam/barcodeService/service/impl/m;

    invoke-virtual {v1}, Lcom/mobeam/barcodeService/service/impl/m;->a()Lcom/mobeam/mbss/service/MBSS;

    move-result-object v1

    iget-object v5, p1, Lcom/mobeam/barcodeService/service/impl/d;->b:Lcom/mobeam/mbss/service/AppAuth;

    invoke-interface {v1, v4, v5}, Lcom/mobeam/mbss/service/MBSS;->authorize(Lcom/mobeam/mbss/service/DeviceAuth;Lcom/mobeam/mbss/service/AppAuth;)Lcom/mobeam/mbss/service/AppInfo;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "authenticate: Server response: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/mobeam/barcodeService/a/a/a;

    iget-object v5, p1, Lcom/mobeam/barcodeService/service/impl/d;->b:Lcom/mobeam/mbss/service/AppAuth;

    invoke-direct {v1, v5, v4}, Lcom/mobeam/barcodeService/a/a/a;-><init>(Lcom/mobeam/mbss/service/AppAuth;Lcom/mobeam/mbss/service/AppInfo;)V
    :try_end_0
    .catch La/a/a/b/b; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "authenticate: Created "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mobeam/barcodeService/a/a/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, v4, Lcom/mobeam/mbss/service/AppInfo;->flags:Lcom/mobeam/mbss/service/Flags;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/mobeam/mbss/service/AppInfo;->flags:Lcom/mobeam/mbss/service/Flags;

    iget-object v4, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/mobeam/barcodeService/a/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/a/a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mobeam/barcodeService/a/a;->a(Lcom/mobeam/barcodeService/a/a/a;)V

    new-instance v4, Lcom/mobeam/barcodeService/a;

    iget-object v5, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/mobeam/barcodeService/service/impl/b;->b:Lcom/mobeam/barcodeService/service/impl/m;

    invoke-direct {v4, v5, v6}, Lcom/mobeam/barcodeService/a;-><init>(Landroid/content/Context;Lcom/mobeam/barcodeService/service/impl/m;)V

    invoke-virtual {v4, v0}, Lcom/mobeam/barcodeService/a;->a(Lcom/mobeam/mbss/service/Flags;)V
    :try_end_1
    .catch La/a/a/b/b; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/mobeam/barcodeService/a/a/a;->e:Lcom/mobeam/barcodeService/a/a/d;

    sget-object v4, Lcom/mobeam/barcodeService/a/a/d;->c:Lcom/mobeam/barcodeService/a/a/d;

    if-ne v1, v4, :cond_6

    move v1, v2

    :goto_2
    if-eqz v1, :cond_7

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/a;

    sget-object v1, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->g:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-direct {v0, v1}, Lcom/mobeam/barcodeService/service/impl/a;-><init>(Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V

    throw v0

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobeam/barcodeService/a/a/a;

    iget-object v7, v0, Lcom/mobeam/barcodeService/a/a/a;->f:Lcom/mobeam/mbss/service/AppAuth;

    invoke-virtual {v5, v7}, Lcom/mobeam/mbss/service/AppAuth;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "loadCachedRecord: found matching app record "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/a/a/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/mobeam/barcodeService/a/a/a;->e:Lcom/mobeam/barcodeService/a/a/d;

    sget-object v4, Lcom/mobeam/barcodeService/a/a/d;->b:Lcom/mobeam/barcodeService/a/a/d;

    if-ne v1, v4, :cond_4

    iget-wide v4, v0, Lcom/mobeam/barcodeService/a/a/a;->d:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x48190800

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/mobeam/barcodeService/a/a/a;->d:J

    move v1, v2

    :goto_4
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobeam/barcodeService/a/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobeam/barcodeService/a/a;->a(Lcom/mobeam/barcodeService/a/a/a;)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/mobeam/barcodeService/service/impl/a;

    sget-object v1, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->f:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-direct {v0, v1}, Lcom/mobeam/barcodeService/service/impl/a;-><init>(Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V

    throw v0

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/mobeam/barcodeService/a/a/a;->b()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/mobeam/barcodeService/a/a/a;->e:Lcom/mobeam/barcodeService/a/a/d;

    sget-object v4, Lcom/mobeam/barcodeService/a/a/d;->b:Lcom/mobeam/barcodeService/a/a/d;

    if-ne v1, v4, :cond_8

    iget-wide v4, v0, Lcom/mobeam/barcodeService/a/a/a;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_8

    move v1, v2

    :goto_5
    if-nez v1, :cond_9

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/a;

    sget-object v1, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->h:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-direct {v0, v1}, Lcom/mobeam/barcodeService/service/impl/a;-><init>(Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V

    throw v0

    :cond_8
    move v1, v3

    goto :goto_5

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authenticate: authentication success: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/mobeam/barcodeService/service/impl/d;->a:Lcom/mobeam/barcodeService/service/impl/n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/mobeam/barcodeService/service/impl/c;

    iget-object v2, p1, Lcom/mobeam/barcodeService/service/impl/d;->a:Lcom/mobeam/barcodeService/service/impl/n;

    invoke-direct {v1, v2, v0}, Lcom/mobeam/barcodeService/service/impl/c;-><init>(Lcom/mobeam/barcodeService/service/impl/n;Lcom/mobeam/barcodeService/a/a/a;)V

    return-object v1

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3
.end method

.method public final a()Lcom/mobeam/barcodeService/service/impl/n;
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProcAuth: calling app ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Lcom/mobeam/barcodeService/service/impl/n;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/mobeam/barcodeService/service/impl/n;-><init>(IILjava/lang/String;)V

    return-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final a(Ljava/lang/String;)Lcom/mobeam/mbss/service/Package;
    .locals 7

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PackageInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/mobeam/mbss/service/Package;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/b;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/mobeam/mbss/service/Package;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    aget-object v4, v2, v0

    iget-object v5, v1, Lcom/mobeam/mbss/service/Package;->sigs:Lcom/mobeam/mbss/service/StringSet;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()Lcom/mobeam/mbss/service/DeviceAuth;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobeam/barcodeService/c/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/c/a;

    move-result-object v3

    :try_start_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v3, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    const-string v5, "LAST_VERSION_CODE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/mobeam/barcodeService/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/mobeam/barcodeService/service/impl/b;->c()Lcom/mobeam/mbss/service/DeviceData;

    move-result-object v0

    invoke-virtual {v3}, Lcom/mobeam/barcodeService/c/a;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mobeam/mbss/service/DeviceData;->gcmID:Ljava/lang/String;

    iget-object v4, v3, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    const-string v5, "REG_DELAY"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/mobeam/mbss/service/DeviceData;->regDelaySec:I

    invoke-virtual {v3}, Lcom/mobeam/barcodeService/c/a;->h()I

    move-result v4

    iput v4, v0, Lcom/mobeam/mbss/service/DeviceData;->beamingCapability:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDeviceConfig: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_1
    iget-object v4, p0, Lcom/mobeam/barcodeService/service/impl/b;->b:Lcom/mobeam/barcodeService/service/impl/m;

    invoke-virtual {v4}, Lcom/mobeam/barcodeService/service/impl/m;->a()Lcom/mobeam/mbss/service/MBSS;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mobeam/barcodeService/c/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/mobeam/mbss/service/MBSS;->registerDevice(Lcom/mobeam/mbss/service/DeviceData;Ljava/lang/String;)Lcom/mobeam/mbss/service/DeviceConf;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDeviceConfig: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v5, v0, Lcom/mobeam/mbss/service/DeviceData;->gcmID:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/mobeam/mbss/service/DeviceData;->gcmID:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/mobeam/barcodeService/c/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    iget v0, v0, Lcom/mobeam/mbss/service/DeviceData;->bsaVersionCode:I

    iget-object v1, v3, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "MOBEAM_TOKEN"

    iget-object v6, v4, Lcom/mobeam/mbss/service/DeviceAuth;->id:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "REPORT_INTERVAL"

    iget v6, v4, Lcom/mobeam/mbss/service/DeviceConf;->reportIntervalSec:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "SERVER_STALE"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LAST_VERSION_CODE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/mobeam/barcodeService/a;

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobeam/barcodeService/service/impl/b;->b:Lcom/mobeam/barcodeService/service/impl/m;

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/a;-><init>(Landroid/content/Context;Lcom/mobeam/barcodeService/service/impl/m;)V

    iget-object v1, v4, Lcom/mobeam/mbss/service/DeviceConf;->flags:Lcom/mobeam/mbss/service/Flags;

    invoke-virtual {v0, v1}, Lcom/mobeam/barcodeService/a;->a(Lcom/mobeam/mbss/service/Flags;)V
    :try_end_1
    .catch La/a/a/b/b; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    invoke-virtual {v3}, Lcom/mobeam/barcodeService/c/a;->e()Lcom/mobeam/mbss/service/DeviceConf;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v3}, Lcom/mobeam/barcodeService/c/a;->d()V

    throw v0
.end method
