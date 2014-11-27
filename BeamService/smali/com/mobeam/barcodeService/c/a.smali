.class public final Lcom/mobeam/barcodeService/c/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/mobeam/barcodeService/c/a;


# instance fields
.field public a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mobeam/barcodeService/c/a;
    .locals 2

    const-class v1, Lcom/mobeam/barcodeService/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mobeam/barcodeService/c/a;->b:Lcom/mobeam/barcodeService/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mobeam/barcodeService/c/a;

    invoke-direct {v0, p0}, Lcom/mobeam/barcodeService/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mobeam/barcodeService/c/a;->b:Lcom/mobeam/barcodeService/c/a;

    :cond_0
    sget-object v0, Lcom/mobeam/barcodeService/c/a;->b:Lcom/mobeam/barcodeService/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "GCM_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/mobeam/barcodeService/c/a;->h()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DEV_CAPABALE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GCM_REGISTERED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "MOBEAM_TOKEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "SERVER_STALE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SERVER_STALE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final e()Lcom/mobeam/mbss/service/DeviceConf;
    .locals 5

    new-instance v0, Lcom/mobeam/mbss/service/DeviceConf;

    invoke-virtual {p0}, Lcom/mobeam/barcodeService/c/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "REPORT_INTERVAL"

    const v4, 0x93a80

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mobeam/mbss/service/DeviceConf;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final f()J
    .locals 4

    iget-object v0, p0, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "LAST_PULL"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 4

    iget-object v0, p0, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "LAST_SERVER_UPDATE"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 3

    iget-object v0, p0, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "DEV_CAPABALE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
