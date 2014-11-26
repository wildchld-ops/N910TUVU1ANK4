.class public Lcom/sec/android/app/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/sec/android/app/camera/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mCameraId:I

.field private mDualBackCameraId:I

.field private mDualFrontCameraId:I

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 7

    const-wide/16 v5, 0x400

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualBackCameraId:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualFrontCameraId:I

    const-string v2, "CameraHolder"

    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v2, Lcom/sec/android/app/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/CameraHolder$MyHandler;-><init>(Lcom/sec/android/app/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/sec/android/seccamera/SecCamera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    new-instance v3, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v3}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-nez v2, :cond_0

    iput v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iput v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0xa

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualBackCameraId:I

    const/16 v2, 0xc

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualFrontCameraId:I

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraHolder;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/CameraHolder;

    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraHolder;)V
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/CameraHolder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/sec/android/app/camera/CameraHolder;
    .locals 2

    const-class v1, Lcom/sec/android/app/camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/CameraHolder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x400

    :try_start_1
    const-string v4, "releaseCamera"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v2, "CameraHolder"

    const-string v3, "mCameraDevice.release();"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo(I)Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .locals 2
    .param p1    # I

    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualBackCameraId:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualFrontCameraId:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualBackCameraId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualBackCameraId:I

    return v0
.end method

.method public getDualFrontCameraId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualFrontCameraId:I

    return v0
.end method

.method public getFrontCameraId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public getuser()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    return v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Lcom/sec/android/seccamera/SecCamera;
    .locals 5
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/camera/CameraHardwareException;
        }
    .end annotation

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    :try_start_1
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iput p1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v2, 0xc8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {p1}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iput p1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v2, Lcom/sec/android/app/camera/CameraHardwareException;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_5
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnect camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->reconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_6
    const-string v2, "CameraHolder"

    const-string v3, "reconnect failed."

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/app/camera/CameraHardwareException;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized open(II)Lcom/sec/android/seccamera/SecCamera;
    .locals 5
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/camera/CameraHardwareException;
        }
    .end annotation

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    :try_start_1
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " priority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/sec/android/seccamera/SecCamera;->open(II)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iput p1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v2, 0xc8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {p1, p2}, Lcom/sec/android/seccamera/SecCamera;->open(II)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iput p1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v2, Lcom/sec/android/app/camera/CameraHardwareException;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_5
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnect camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->reconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_6
    const-string v2, "CameraHolder"

    const-string v3, "reconnect failed."

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/app/camera/CameraHardwareException;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryOpen(I)Lcom/sec/android/seccamera/SecCamera;
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraHolder;->open(I)Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catch Lcom/sec/android/app/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
