.class public Lcom/sec/android/app/camera/QuickShot;
.super Landroid/app/Activity;
.source "QuickShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/QuickShot$1;,
        Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;,
        Lcom/sec/android/app/camera/QuickShot$ShutterCallback;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "QuickShot"


# instance fields
.field private mActivityContext:Landroid/content/Context;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/QuickShot;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/QuickShot;)J
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/QuickShot;->getDateTaken()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/QuickShot;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/QuickShot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/QuickShot;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/QuickShot;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/QuickShot;->isSecureKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method private getDateTaken()J
    .locals 5

    const-string v3, "QuickShot"

    const-string v4, "getDateTaken"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iget-object v3, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    return-wide v3
.end method

.method private getSizeRatio(II)I
    .locals 5

    const/4 v0, 0x0

    int-to-double v1, p1

    int-to-double v3, p2

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v0, v1

    return v0
.end method

.method private isSecureKeyguardLocked()Z
    .locals 2

    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private openCamera(I)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "QuickShot"

    const-string v11, "openCamera"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/16 v11, 0x64

    :try_start_0
    iget-object v12, p0, Lcom/sec/android/app/camera/QuickShot;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/seccamera/SecCamera;->open(IILandroid/os/Looper;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v10, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v10}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v10, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v10, :cond_0

    const-string v9, "QuickShot"

    const-string v10, "CameraParameters is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v8

    :catch_0
    move-exception v1

    const-string v10, "QuickShot"

    const-string v11, "Camera open failed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera$Size;

    iget v8, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v10, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-direct {p0, v8, v10}, Lcom/sec/android/app/camera/QuickShot;->getSizeRatio(II)I

    move-result v3

    iget-object v8, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v10, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v11, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    const-string v8, "QuickShot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set picture size - width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/seccamera/SecCamera$Size;

    iget v8, v7, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v10, v7, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-direct {p0, v8, v10}, Lcom/sec/android/app/camera/QuickShot;->getSizeRatio(II)I

    move-result v5

    if-ne v3, v5, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v10, v7, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v11, v7, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v10, "no-display-mode"

    invoke-virtual {v8, v10, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v10, p0, Lcom/sec/android/app/camera/QuickShot;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v10}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    iget-object v8, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V

    :cond_3
    move v8, v9

    goto/16 :goto_1
.end method

.method private sleep(I)V
    .locals 3

    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private takePicture()Z
    .locals 6

    const-wide/16 v4, 0x400

    const/4 v3, 0x0

    const-string v0, "QuickShot"

    const-string v1, "takePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    const-string v0, "TakePicture as QuickShot"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    new-instance v1, Lcom/sec/android/app/camera/QuickShot$ShutterCallback;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/camera/QuickShot$ShutterCallback;-><init>(Lcom/sec/android/app/camera/QuickShot;Lcom/sec/android/app/camera/QuickShot$1;)V

    new-instance v2, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;-><init>(Lcom/sec/android/app/camera/QuickShot;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "QuickShot"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mActivityContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Callback Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mCallbackThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/app/camera/QuickShot;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/QuickShot;->openCamera(I)Z

    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/QuickShot;->sleep(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/QuickShot;->takePicture()Z

    return-void
.end method
