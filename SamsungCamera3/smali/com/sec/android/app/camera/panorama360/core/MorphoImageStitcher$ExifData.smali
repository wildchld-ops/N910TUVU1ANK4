.class public Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;
.super Ljava/lang/Object;
.source "MorphoImageStitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifData"
.end annotation


# instance fields
.field public ColorSpace:I

.field public DateTime:Ljava/lang/String;

.field public DateTimeDigitized:Ljava/lang/String;

.field public DateTimeOriginal:Ljava/lang/String;

.field public ExifVersion:[B

.field public FocalLength:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

.field public GPSAltitude:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

.field public GPSAltitudeRef:[B

.field public GPSLatitude:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

.field public GPSLatitudeRef:Ljava/lang/String;

.field public GPSLongitude:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

.field public GPSLongitudeRef:Ljava/lang/String;

.field public GPSVersionID:[B

.field public ImageHeight:I

.field public ImageUniqueID:Ljava/lang/String;

.field public ImageWidth:I

.field public Maker:Ljava/lang/String;

.field public MaxApertureValue:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

.field public Model:Ljava/lang/String;

.field public Software:Ljava/lang/String;

.field public UserComment:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->MaxApertureValue:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    new-array v0, v1, [Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    iput-object v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;->FocalLength:[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    return-void
.end method

.method public static latitudeValueToNorS(D)Ljava/lang/String;
    .locals 3

    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-lez v1, :cond_0

    const-string v0, "N"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "S"

    goto :goto_0
.end method

.method public static locationValueToRational(D)[Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x3

    new-array v3, v4, [Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    new-instance v4, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    invoke-direct {v4, v1, v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;-><init>(II)V

    aput-object v4, v3, v8

    int-to-double v4, v1

    sub-double/2addr p0, v4

    const-wide/high16 v4, 0x404e000000000000L

    mul-double/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    new-instance v4, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    mul-int/lit8 v5, v2, 0x64

    const/16 v6, 0x64

    invoke-direct {v4, v5, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;-><init>(II)V

    aput-object v4, v3, v7

    const/4 v4, 0x2

    new-instance v5, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;

    invoke-direct {v5, v8, v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;-><init>(II)V

    aput-object v5, v3, v4

    return-object v3
.end method

.method public static longitudeValueToEorW(D)Ljava/lang/String;
    .locals 3

    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-lez v1, :cond_0

    const-string v0, "E"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "W"

    goto :goto_0
.end method
