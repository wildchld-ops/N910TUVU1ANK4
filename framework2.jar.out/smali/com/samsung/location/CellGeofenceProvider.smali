.class public Lcom/samsung/location/CellGeofenceProvider;
.super Ljava/lang/Object;
.source "CellGeofenceProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellGeofenceProvider"


# instance fields
.field private mEnabled:Z

.field private mSGeofenceCellInterface:Lcom/samsung/location/ISLocationCellInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/samsung/location/CellGeofenceProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/location/CellGeofenceProvider;->mEnabled:Z

    new-instance v0, Lcom/samsung/location/CellGeofenceProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/location/CellGeofenceProvider$1;-><init>(Lcom/samsung/location/CellGeofenceProvider;)V

    iput-object v0, p0, Lcom/samsung/location/CellGeofenceProvider;->mSGeofenceCellInterface:Lcom/samsung/location/ISLocationCellInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/location/CellGeofenceProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/location/CellGeofenceProvider;->native_init_cell_geofence(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/location/CellGeofenceProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/location/CellGeofenceProvider;->native_add_cell_geofence(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/location/CellGeofenceProvider;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/location/CellGeofenceProvider;->native_enable_cell_geofence(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/location/CellGeofenceProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/location/CellGeofenceProvider;->native_remove_cell_geofence(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/location/CellGeofenceProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/location/CellGeofenceProvider;->native_start_collect_cell(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/location/CellGeofenceProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/location/CellGeofenceProvider;->native_stop_collect_cell(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/location/CellGeofenceProvider;[II[II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/location/CellGeofenceProvider;->native_sync_cell_geofence([II[II)V

    return-void
.end method

.method private static native class_init_native()V
.end method

.method private native native_add_cell_geofence(I)V
.end method

.method private native native_cleanup_cell_geofence()V
.end method

.method private native native_enable_cell_geofence(II)V
.end method

.method private native native_init()Z
.end method

.method private native native_init_cell_geofence(I)V
.end method

.method private native native_remove_cell_geofence(I)V
.end method

.method private native native_start_collect_cell(I)V
.end method

.method private native native_stop_collect_cell(I)V
.end method

.method private native native_sync_cell_geofence([II[II)V
.end method

.method private reportCellGeofenceDetected(II)V
    .locals 4

    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p2, p1}, Lcom/samsung/location/ISLocationManager;->reportCellGeofenceDetected(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CellGeofenceProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportCellGeofenceRequestFail(I)V
    .locals 4

    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->reportCellGeofenceRequestFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CellGeofenceProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 2

    const-string v0, "CellGeofenceProvider"

    const-string v1, "CellGeofenceProvider is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enable()V
    .locals 4

    const-string v2, "CellGeofenceProvider"

    const-string v3, "CellGeofenceProvider is enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/location/CellGeofenceProvider;->getSGeofenceCellInterface()Lcom/samsung/location/ISLocationCellInterface;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/location/ISLocationManager;->setGeofenceCellInterface(Lcom/samsung/location/ISLocationCellInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/location/CellGeofenceProvider;->native_init()Z

    return-void

    :catch_0
    move-exception v0

    const-string v2, "CellGeofenceProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSGeofenceCellInterface()Lcom/samsung/location/ISLocationCellInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/location/CellGeofenceProvider;->mSGeofenceCellInterface:Lcom/samsung/location/ISLocationCellInterface;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/location/CellGeofenceProvider;->mEnabled:Z

    return v0
.end method
