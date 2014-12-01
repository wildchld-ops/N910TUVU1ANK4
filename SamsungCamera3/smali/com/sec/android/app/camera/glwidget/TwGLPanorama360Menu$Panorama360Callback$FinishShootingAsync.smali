.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;
.super Landroid/os/AsyncTask;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinishShootingAsync"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final FT_CANCEL:I = 0x2

.field public static final FT_RESTART:I = 0x1

.field private static final useBGSaveImage:Z


# instance fields
.field private mAccumTime:J

.field private mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

.field private mFinishType:I

.field private mIsSaveImage:Z

.field private mLocation:Landroid/location/Location;

.field private mProgress:I

.field private mProgressUpdator:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;

.field private mSaveShootingSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

.field private mStarttime:J

.field final synthetic this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;IZ)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc FinishShootingAsync FinishShootingAsync "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mFinishType:I

    iput-boolean p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mIsSaveImage:Z

    const/4 v0, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOutputType:I
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$7402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I

    iget-object v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    iget-object v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    return v0
.end method

.method static synthetic access$7200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private saveOutputImage(Ljava/lang/String;Ljava/lang/String;[JLandroid/graphics/Rect;Landroid/location/Location;I)I
    .locals 29

    const/4 v1, 0x1

    new-array v4, v1, [I

    const-string v1, "TwGLPanorama360Menu"

    const-string v3, "pc saveOutputImage"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aget-wide v7, p3, v1

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$MediaProviderUtils;->createDateStringForAppSeg(J)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    aget-wide v7, p3, v1

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$MediaProviderUtils;->createDateStringForAppSeg(J)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [I

    move-object/from16 v21, v0

    const/4 v1, 0x0

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    aput v3, v21, v1

    const/4 v1, 0x1

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aput v3, v21, v1

    const/4 v1, 0x2

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->right:I

    aput v3, v21, v1

    const/4 v1, 0x3

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    aput v3, v21, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v7

    iput v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->ImageWidth:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v7

    iput v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->ImageHeight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    const-string v3, "SAMSUNG"

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->Maker:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->Model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    sget-object v3, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->Software:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->ExifVersion:[B

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    const-string v3, "dd/MM/yyyy h:mm"

    const/4 v7, 0x1

    aget-wide v7, p3, v7

    invoke-static {v3, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->DateTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    const-string v3, "dd/MM/yyyy h:mm"

    const/4 v7, 0x1

    aget-wide v7, p3, v7

    invoke-static {v3, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->DateTimeOriginal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    const-string v3, "yyyy-MM-dd hh:mm:kk"

    const/4 v7, 0x1

    aget-wide v7, p3, v7

    invoke-static {v3, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->DateTimeDigitized:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    const/4 v3, 0x1

    iput v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->ColorSpace:I

    if-eqz p5, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->GPSVersionID:[B

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v24

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getAltitude()D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    invoke-static/range {v22 .. v23}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->locationValueToRational(D)[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->GPSLatitude:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    invoke-static/range {v22 .. v23}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->GPSLatitudeRef:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->locationValueToRational(D)[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->GPSLongitude:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->GPSLongitudeRef:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->locationValueToRational(D)[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    const/4 v7, 0x0

    new-instance v8, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    const/4 v9, 0x0

    aget-object v9, v27, v9

    iget v9, v9, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;->numerator:I

    const/4 v10, 0x0

    aget-object v10, v27, v10

    iget v10, v10, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;->denominator:I

    invoke-direct {v8, v9, v10}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;-><init>(II)V

    aput-object v8, v3, v7

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->GPSAltitude:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    const/4 v3, 0x1

    new-array v3, v3, [B

    iput-object v3, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->GPSAltitudeRef:[B

    const-wide/16 v7, 0x0

    cmpg-double v1, v19, v7

    if-gez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    iget-object v1, v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->GPSAltitudeRef:[B

    const/4 v3, 0x0

    const/4 v7, 0x1

    aput-byte v7, v1, v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    move/from16 v3, p6

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->saveCreatedOutputImage(Ljava/lang/String;I[ILjava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;)I

    move-result v26

    if-eqz v26, :cond_1

    const-string v1, "TwGLPanorama360Menu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.saveOutputJpeg error ret:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v26

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "image/jpeg"

    const/4 v10, 0x0

    const/4 v1, 0x0

    aget-wide v11, p3, v1

    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v14, v1, v3

    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v15, v1, v3

    move-object v8, v2

    move-object/from16 v13, p5

    invoke-static/range {v7 .. v18}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$MediaProviderUtils;->addImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;IIJI)Landroid/net/Uri;

    move-result-object v28

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$9200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    move-object/from16 v0, v28

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$9300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    move-object/from16 v0, v28

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$9400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->updateThumbnailButton()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$9500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showThumbnailButton()V

    goto :goto_0

    :array_0
    .array-data 1
        0x30t
        0x32t
        0x32t
        0x30t
    .end array-data

    :array_1
    .array-data 1
        0x2t
        0x2t
        0x0t
        0x0t
    .end array-data
.end method

.method private declared-synchronized updateGetImageProgress(I)V
    .locals 8

    monitor-enter p0

    const-wide/high16 v0, 0x4069000000000000L

    const-wide v2, 0x4085e00000000000L

    int-to-double v4, p1

    const-wide/high16 v6, 0x40e0000000000000L

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    :try_start_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgressUpdator updateGetImageProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgressUpdator:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 24

    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pc FinishShootingAsync doInBackground mFinishType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mFinishType:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " mAllGuideTaken: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v8, v8, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z
    invoke-static {v8}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgressUpdator:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgressUpdator:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;->start()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v14, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->end()I

    move-result v21

    if-eqz v21, :cond_1

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pc FinishShootingAsync mMorphoImageStitcher.end() "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v12, v18

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v12, v14

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$8700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "TwGLPanorama360Menu"

    const-string v6, "mActivityContext is NULL!"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mFinishType:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mIsSaveImage:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    add-int/lit8 v3, v3, 0x64

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgressUpdator:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->publishProgress([Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->checkSaveDirectory()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$8900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveDirPath:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$8802(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveDirPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$8800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$7700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[J

    move-result-object v6

    const/4 v8, 0x0

    aget-wide v8, v6, v8

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".jpg"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->getBoundingRect(Landroid/graphics/Rect;)I

    move-result v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pc FinishShootingAsync mMorphoImageStitcher.getBoundingRect() "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v12, v18

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v12, v14

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v21, :cond_4

    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMorphoImageStitcher.getBoundingRect error ret:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    add-int/lit8 v3, v3, 0x64

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgressUpdator:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;

    if-nez v3, :cond_5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->publishProgress([Ljava/lang/Object;)V

    :cond_5
    const/4 v3, 0x4

    new-array v0, v3, [I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOutputType:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$7400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v17, 0x0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v3, v7, v0, v1, v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->createOutputImage(Landroid/graphics/Rect;Ljava/lang/Object;[IZ)I

    move-result v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pc FinishShootingAsync mMorphoImageStitcher.createOutputImage() "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v12, v18

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v12, v14

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v21, :cond_6

    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMorphoImageStitcher.createOutputImage error ret:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pc FinishShootingAsync doInBackground output_rect: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v21, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$7700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[J

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mLocation:Landroid/location/Location;

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->saveOutputImage(Ljava/lang/String;Ljava/lang/String;[JLandroid/graphics/Rect;Landroid/location/Location;I)I

    move-result v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pc FinishShootingAsync saveOutputImage() "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v12, v18

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v12, v14

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    add-int/lit8 v3, v3, 0x64

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgressUpdator:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;

    if-nez v3, :cond_8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->publishProgress([Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$8500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$7700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[J

    move-result-object v6

    const/4 v8, 0x0

    aget-wide v8, v6, v8

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveImagePathList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v3, v6, v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->saveRegisteredImage(Z[Ljava/lang/Object;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->releaseRegisteredImage()I

    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mSaveShootingSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSavePreviewSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$9000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    move-result-object v3

    if-eqz v3, :cond_c

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSavePreviewSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$9000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mSaveShootingSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    if-eqz v3, :cond_d

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mSaveShootingSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_d
    :goto_4
    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$9100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[I

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$9100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[I

    move-result-object v3

    const/4 v6, 0x0

    aput v6, v3, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_e
    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$8500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$7700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[J

    move-result-object v6

    const/4 v8, 0x0

    aget-wide v8, v6, v8

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveImagePathList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v3, v6, v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->saveRegisteredImage(Z[Ljava/lang/Object;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pc FinishShootingAsync saveRegisteredImage() "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v12, v18

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v12, v14

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->releaseRegisteredImage()I

    goto/16 :goto_2

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->clearStockData()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$8600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$8600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveImagePathList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveImagePathList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgressUpdator:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;

    if-eqz v3, :cond_16

    const/16 v3, 0x3e8

    :try_start_2
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgressUpdator:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_16
    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v11

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/16 v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->publishProgress([Ljava/lang/Object;)V

    goto :goto_6
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->reset()V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mFinishType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->enablePreviewCallbackManagerPanorama360()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    return-void

    :pswitch_0
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc onPostExecute FT_RESTART"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStartShooting()V

    goto :goto_0

    :pswitch_1
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc onPostExecute FT_CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStartShooting()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v1, 0x3

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$602(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 13

    const/16 v2, 0xbea

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z
    invoke-static {v0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc FinishShootingAsync onPreExecute "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$5600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$7500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[I

    move-result-object v0

    aput v12, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishFlg:Z
    invoke-static {v0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$7602(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v1, 0x3

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$602(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$7700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[J

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getUniqueID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->ImageUniqueID:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getMaxaperture()[I

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getFocalLength()[I

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    iget-object v0, v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->MaxApertureValue:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    new-instance v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    aget v4, v7, v12

    aget v8, v7, v11

    invoke-direct {v1, v4, v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;-><init>(II)V

    aput-object v1, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mExifData:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    iget-object v0, v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->FocalLength:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    new-instance v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    aget v4, v6, v12

    aget v8, v6, v11

    invoke-direct {v1, v4, v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;-><init>(II)V

    aput-object v1, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgressMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->showPostCaptureLayout()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mStarttime:J

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x514

    int-to-long v10, v4

    add-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;J)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgressUpdator:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync$ProgressUpdator;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$8500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$7700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[J

    move-result-object v1

    aget-wide v8, v1, v12

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$8600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getStockData()[Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mSaveShootingSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mSaveShootingSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;->start()V

    :cond_1
    return-void

    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$8000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$8100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$8200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v9, v9, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$8300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v9

    const v10, 0x7f0c000f

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Ljava/lang/String;)V

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v8, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$8400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->showPostCaptureLayout()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
