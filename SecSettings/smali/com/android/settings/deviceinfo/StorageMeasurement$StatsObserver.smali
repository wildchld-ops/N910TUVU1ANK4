.class Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsObserver"
.end annotation


# instance fields
.field private final mCurrentUser:I

.field private final mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mFinished:Landroid/os/Message;

.field private final mIsInternal:Z

.field private mRemaining:I


# direct methods
.method public constructor <init>(ZLcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mIsInternal:Z

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput p3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    iput-object p4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    iput p5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    return-void
.end method

.method private addStatsLocked(Landroid/content/pm/PackageStats;)V
    .locals 13

    iget-boolean v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mIsInternal:Z

    if-eqz v6, :cond_2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v6

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalAppObbSize:J

    iget-wide v9, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalAppObbSize:J

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalAppDataSize:J

    iget-wide v9, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalAppDataSize:J

    :cond_0
    iget v6, p1, Landroid/content/pm/PackageStats;->userHandle:I

    iget v7, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    add-long/2addr v7, v2

    iput-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    :cond_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v6, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v7, p1, Landroid/content/pm/PackageStats;->userHandle:I

    # invokes: Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v6, v7, v4, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    add-long/2addr v7, v0

    iput-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    iget-wide v9, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v9, v11

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v9, v11

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    iget-wide v9, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    goto :goto_0
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->addStatsLocked(Landroid/content/pm/PackageStats;)V

    :cond_0
    iget v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
