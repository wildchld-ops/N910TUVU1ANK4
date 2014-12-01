.class public Lcom/android/mms/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/exif/ExifInterface$GpsDifferential;,
        Lcom/android/mms/exif/ExifInterface$GpsTrackRef;,
        Lcom/android/mms/exif/ExifInterface$GpsSpeedRef;,
        Lcom/android/mms/exif/ExifInterface$GpsMeasureMode;,
        Lcom/android/mms/exif/ExifInterface$GpsStatus;,
        Lcom/android/mms/exif/ExifInterface$GpsAltitudeRef;,
        Lcom/android/mms/exif/ExifInterface$GpsLongitudeRef;,
        Lcom/android/mms/exif/ExifInterface$GpsLatitudeRef;,
        Lcom/android/mms/exif/ExifInterface$SubjectDistance;,
        Lcom/android/mms/exif/ExifInterface$Sharpness;,
        Lcom/android/mms/exif/ExifInterface$Saturation;,
        Lcom/android/mms/exif/ExifInterface$Contrast;,
        Lcom/android/mms/exif/ExifInterface$GainControl;,
        Lcom/android/mms/exif/ExifInterface$SceneType;,
        Lcom/android/mms/exif/ExifInterface$FileSource;,
        Lcom/android/mms/exif/ExifInterface$SensingMethod;,
        Lcom/android/mms/exif/ExifInterface$LightSource;,
        Lcom/android/mms/exif/ExifInterface$ComponentsConfiguration;,
        Lcom/android/mms/exif/ExifInterface$SceneCapture;,
        Lcom/android/mms/exif/ExifInterface$WhiteBalance;,
        Lcom/android/mms/exif/ExifInterface$ExposureMode;,
        Lcom/android/mms/exif/ExifInterface$ColorSpace;,
        Lcom/android/mms/exif/ExifInterface$Flash;,
        Lcom/android/mms/exif/ExifInterface$MeteringMode;,
        Lcom/android/mms/exif/ExifInterface$ExposureProgram;,
        Lcom/android/mms/exif/ExifInterface$PlanarConfiguration;,
        Lcom/android/mms/exif/ExifInterface$PhotometricInterpretation;,
        Lcom/android/mms/exif/ExifInterface$ResolutionUnit;,
        Lcom/android/mms/exif/ExifInterface$Compression;,
        Lcom/android/mms/exif/ExifInterface$YCbCrPositioning;,
        Lcom/android/mms/exif/ExifInterface$Orientation;
    }
.end annotation


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field public static MAX_COMPONENT_COUNT:I = 0x0

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/android/mms/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    sput v3, Lcom/android/mms/exif/ExifInterface;->MAX_COMPONENT_COUNT:I

    const/16 v0, 0x100

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/16 v0, 0x101

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/16 v0, 0x102

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/16 v0, 0x103

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSION:I

    const/16 v0, 0x106

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/16 v0, 0x10e

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/16 v0, 0x10f

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MAKE:I

    const/16 v0, 0x110

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MODEL:I

    const/16 v0, 0x111

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/16 v0, 0x112

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ORIENTATION:I

    const/16 v0, 0x115

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/16 v0, 0x116

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/16 v0, 0x117

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/16 v0, 0x11a

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/16 v0, 0x11b

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/16 v0, 0x11c

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/16 v0, 0x128

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/16 v0, 0x12d

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/16 v0, 0x131

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SOFTWARE:I

    const/16 v0, 0x132

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME:I

    const/16 v0, 0x13b

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ARTIST:I

    const/16 v0, 0x13e

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/16 v0, 0x13f

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/16 v0, 0x211

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/16 v0, 0x212

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/16 v0, 0x213

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/16 v0, 0x214

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/16 v0, -0x7d68

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/16 v0, -0x7897

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/16 v0, -0x77db

    invoke-static {v3, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    const/16 v0, 0x201

    invoke-static {v1, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/16 v0, 0x202

    invoke-static {v1, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/16 v0, -0x7d66

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/16 v0, -0x7d63

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_F_NUMBER:I

    const/16 v0, -0x77de

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/16 v0, -0x77dc

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/16 v0, -0x77d9

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/16 v0, -0x77d8

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_OECF:I

    const/16 v0, -0x7000

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/16 v0, -0x6ffd

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/16 v0, -0x6ffc

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/16 v0, -0x6eff

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/16 v0, -0x6efe

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/16 v0, -0x6dff

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/16 v0, -0x6dfe

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/16 v0, -0x6dfd

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/16 v0, -0x6dfc

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/16 v0, -0x6dfb

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/16 v0, -0x6dfa

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/16 v0, -0x6df9

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v0, -0x6df8

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/16 v0, -0x6df7

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH:I

    const/16 v0, -0x6df6

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/16 v0, -0x6dec

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/16 v0, -0x6d84

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/16 v0, -0x6d7a

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/16 v0, -0x6d70

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/16 v0, -0x6d6f

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/16 v0, -0x6d6e

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/16 v0, -0x6000

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/16 v0, -0x5fff

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/16 v0, -0x5ffe

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/16 v0, -0x5ffd

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/16 v0, -0x5ffc

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/16 v0, -0x5ffb

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/16 v0, -0x5df5

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/16 v0, -0x5df4

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/16 v0, -0x5df2

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/16 v0, -0x5df1

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/16 v0, -0x5df0

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/16 v0, -0x5dec

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/16 v0, -0x5deb

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/16 v0, -0x5de9

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/16 v0, -0x5d00

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/16 v0, -0x5cff

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/16 v0, -0x5cfe

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/16 v0, -0x5bff

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/16 v0, -0x5bfe

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/16 v0, -0x5bfd

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v0, -0x5bfc

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/16 v0, -0x5bfb

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/16 v0, -0x5bfa

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/16 v0, -0x5bf9

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/16 v0, -0x5bf8

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_CONTRAST:I

    const/16 v0, -0x5bf7

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SATURATION:I

    const/16 v0, -0x5bf6

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SHARPNESS:I

    const/16 v0, -0x5bf5

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/16 v0, -0x5bf4

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/16 v0, -0x5be0

    invoke-static {v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    invoke-static {v4, v3, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    invoke-static {v4, v1, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-static {v4, v2, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {v4, v5, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-static {v4, v4, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/4 v0, 0x5

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/4 v0, 0x6

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/4 v0, 0x7

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/16 v0, 0x8

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/16 v0, 0x9

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/16 v0, 0xa

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/16 v0, 0xb

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DOP:I

    const/16 v0, 0xc

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/16 v0, 0xd

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/16 v0, 0xe

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/16 v0, 0xf

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/16 v0, 0x10

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/16 v0, 0x11

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/16 v0, 0x12

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/16 v0, 0x13

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/16 v0, 0x14

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/16 v0, 0x15

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    const/16 v0, 0x16

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    const/16 v0, 0x17

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/16 v0, 0x18

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/16 v0, 0x19

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/16 v0, 0x1a

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/16 v0, 0x1b

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/16 v0, 0x1c

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/16 v0, 0x1d

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/16 v0, 0x1e

    invoke-static {v4, v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    invoke-static {v5, v1, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/android/mms/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/mms/exif/ExifData;

    sget-object v1, Lcom/android/mms/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/mms/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertLatOrLongToDouble([Lcom/android/mms/exif/Rational;Ljava/lang/String;)D
    .locals 13

    const/4 v9, 0x0

    :try_start_0
    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/android/mms/exif/Rational;->toDouble()D

    move-result-wide v0

    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/android/mms/exif/Rational;->toDouble()D

    move-result-wide v3

    const/4 v9, 0x2

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/android/mms/exif/Rational;->toDouble()D

    move-result-wide v7

    const-wide/high16 v9, 0x404e000000000000L

    div-double v9, v3, v9

    add-double/2addr v9, v0

    const-wide v11, 0x40ac200000000000L

    div-double v11, v7, v11

    add-double v5, v9, v11

    const-string v9, "S"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "W"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    neg-double v5, v5

    :cond_1
    return-wide v5

    :catch_0
    move-exception v2

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9
.end method

.method public static defineTag(IS)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(ISZ)I

    move-result v0

    return v0
.end method

.method public static defineTag(ISZ)I
    .locals 2

    if-eqz p2, :cond_0

    sget v0, Lcom/android/mms/exif/ExifInterface;->MAX_COMPONENT_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/exif/ExifInterface;->MAX_COMPONENT_COUNT:I

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x400

    const/4 v3, 0x0

    new-array v0, v4, [B

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getAllowedIfdsFromInfo(I)[I
    .locals 10

    invoke-static {p0}, Lcom/android/mms/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v3

    invoke-static {}, Lcom/android/mms/exif/IfdData;->getIfds()[I

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v9, 0x5

    if-ge v1, v9, :cond_1

    shr-int v9, v3, v1

    and-int/lit8 v0, v9, 0x1

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    aget v9, v4, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_3

    const/4 v8, 0x0

    :cond_2
    return-object v8

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v8, v9, [I

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v6, v5, 0x1

    aput v1, v8, v5

    move v5, v6

    goto :goto_1
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8

    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/exif/IfdData;->getIfds()[I

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v2, v7, :cond_1

    move-object v0, p0

    array-length v6, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_3

    aget v5, v0, v3

    aget v7, v4, v2

    if-ne v7, v5, :cond_4

    const/4 v7, 0x1

    shl-int/2addr v7, v2

    or-int/2addr v1, v7

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1

    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getTrueIfd(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1

    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 1

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .locals 13

    const/4 v10, 0x2

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v6, v10, 0x18

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_ORIENTATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit16 v12, v12, 0x300

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_MODEL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SOFTWARE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_ARTIST:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v4, v10

    invoke-static {v4}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v7, v10, 0x18

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v0, v10

    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v1, v10, 0x18

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0xd

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x21

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_F_NUMBER:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_OECF:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_METERING_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_CONTRAST:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SATURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SHARPNESS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v2, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v2, v10

    invoke-static {v2}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v3, v10, 0x18

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DOP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v8, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v8, v10

    invoke-static {v8}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v9, v10, 0x18

    iget-object v10, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v9

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/mms/exif/IfdData;->getIfds()[I

    move-result-object v2

    invoke-static {p0}, Lcom/android/mms/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget v4, v2, v0

    if-ne p1, v4, :cond_0

    shr-int v4, v1, v0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_0

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected static isOffsetTag(S)Z
    .locals 2

    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toExifLatLong(D)[Lcom/android/mms/exif/Rational;
    .locals 10

    const-wide/16 v8, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v0, p0

    int-to-double v3, v0

    sub-double v3, p0, v3

    const-wide/high16 v5, 0x404e000000000000L

    mul-double p0, v3, v5

    double-to-int v1, p0

    int-to-double v3, v1

    sub-double v3, p0, v3

    const-wide v5, 0x40b7700000000000L

    mul-double p0, v3, v5

    double-to-int v2, p0

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/mms/exif/Rational;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/mms/exif/Rational;

    int-to-long v6, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/mms/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/android/mms/exif/Rational;

    int-to-long v6, v1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/mms/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/android/mms/exif/Rational;

    int-to-long v6, v2

    const-wide/16 v8, 0x64

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/mms/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    return-object v3
.end method


# virtual methods
.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 4

    const/4 v1, 0x0

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/mms/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v2, p0, Lcom/android/mms/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/mms/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifInterface;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addGpsDateTimeStampTag(J)Z
    .locals 11

    const/4 v2, 0x1

    const-wide/16 v9, 0x1

    const/4 v1, 0x0

    sget v3, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v4, p0, Lcom/android/mms/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifInterface;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    iget-object v3, p0, Lcom/android/mms/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget v3, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/mms/exif/Rational;

    new-instance v5, Lcom/android/mms/exif/Rational;

    iget-object v6, p0, Lcom/android/mms/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v9, v10}, Lcom/android/mms/exif/Rational;-><init>(JJ)V

    aput-object v5, v4, v1

    new-instance v5, Lcom/android/mms/exif/Rational;

    iget-object v6, p0, Lcom/android/mms/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v9, v10}, Lcom/android/mms/exif/Rational;-><init>(JJ)V

    aput-object v5, v4, v2

    const/4 v5, 0x2

    new-instance v6, Lcom/android/mms/exif/Rational;

    iget-object v7, p0, Lcom/android/mms/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/mms/exif/Rational;-><init>(JJ)V

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifInterface;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    move v1, v2

    goto :goto_0
.end method

.method public addGpsTags(DD)Z
    .locals 8

    const-wide/16 v6, 0x0

    sget v4, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/android/mms/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/mms/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/mms/exif/ExifTag;

    move-result-object v1

    sget v4, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/android/mms/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/mms/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/mms/exif/ExifTag;

    move-result-object v3

    sget v5, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_1

    const-string v4, "N"

    :goto_0
    invoke-virtual {p0, v5, v4}, Lcom/android/mms/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    sget v5, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double v4, p3, v6

    if-ltz v4, :cond_2

    const-string v4, "E"

    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/android/mms/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/mms/exif/ExifTag;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_3

    :cond_0
    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_1
    const-string v4, "S"

    goto :goto_0

    :cond_2
    const-string v4, "W"

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/mms/exif/ExifInterface;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    invoke-virtual {p0, v3}, Lcom/android/mms/exif/ExifInterface;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifInterface;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    invoke-virtual {p0, v2}, Lcom/android/mms/exif/ExifInterface;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    const/4 v4, 0x1

    goto :goto_2
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/android/mms/exif/ExifTag;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eqz v6, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object v0, v7

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {v6}, Lcom/android/mms/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    invoke-static {v6}, Lcom/android/mms/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-static {v6, p2}, Lcom/android/mms/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v7

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/mms/exif/ExifTag;

    invoke-static {p1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/exif/ExifTag;-><init>(SSIIZ)V

    invoke-virtual {v0, p3}, Lcom/android/mms/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    goto :goto_0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/android/mms/exif/ExifTag;
    .locals 2

    invoke-static {p1}, Lcom/android/mms/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/mms/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/android/mms/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method protected buildUninitializedTag(I)Lcom/android/mms/exif/ExifTag;
    .locals 7

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lcom/android/mms/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    invoke-static {v6}, Lcom/android/mms/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static {p1}, Lcom/android/mms/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    new-instance v0, Lcom/android/mms/exif/ExifTag;

    invoke-static {p1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/exif/ExifTag;-><init>(SSIIZ)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public clearExif()V
    .locals 2

    new-instance v0, Lcom/android/mms/exif/ExifData;

    sget-object v1, Lcom/android/mms/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/mms/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    return-void
.end method

.method public deleteTag(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->deleteTag(II)V

    return-void
.end method

.method public deleteTag(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-static {p1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/mms/exif/ExifData;->removeTag(SI)V

    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v6, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    new-instance v7, Lcom/android/mms/exif/ExifData;

    sget-object v8, Lcom/android/mms/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v7, v8}, Lcom/android/mms/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v7, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, v5, v1}, Lcom/android/mms/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/exif/ExifInterface;->readExif([B)V

    invoke-virtual {p0, p2}, Lcom/android/mms/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/mms/exif/ExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    iput-object v6, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    :cond_0
    return-void

    :catch_0
    move-exception v2

    :goto_0
    :try_start_3
    invoke-static {v4}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    :goto_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    iput-object v6, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    throw v7

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_1

    :catchall_2
    move-exception v7

    move-object v0, v1

    move-object v4, v5

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v4, v5

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_0
.end method

.method public getActualTagCount(II)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTag(II)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v1

    goto :goto_0
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefinedTagCount(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    goto :goto_0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/mms/exif/ExifInterface;->getTrueIfd(I)I

    move-result v1

    goto :goto_0
.end method

.method public getDefinedTagType(I)S
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v1

    goto :goto_0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/android/mms/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/android/mms/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/android/mms/exif/ExifInterface;)V

    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/android/mms/exif/ExifOutputStream;->setExifData(Lcom/android/mms/exif/ExifData;)V

    return-object v0
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v2}, Lcom/android/mms/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public getLatLongAsDoubles()[D
    .locals 8

    const/4 v6, 0x3

    sget v5, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v5}, Lcom/android/mms/exif/ExifInterface;->getTagRationalValues(I)[Lcom/android/mms/exif/Rational;

    move-result-object v1

    sget v5, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/android/mms/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v5}, Lcom/android/mms/exif/ExifInterface;->getTagRationalValues(I)[Lcom/android/mms/exif/Rational;

    move-result-object v3

    sget v5, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/android/mms/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    array-length v5, v1

    if-lt v5, v6, :cond_0

    array-length v5, v3

    if-ge v5, v6, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v5, 0x2

    new-array v0, v5, [D

    const/4 v5, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/android/mms/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/android/mms/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    goto :goto_0
.end method

.method public getTag(I)Lcom/android/mms/exif/ExifTag;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTag(II)Lcom/android/mms/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method public getTag(II)Lcom/android/mms/exif/ExifTag;
    .locals 2

    invoke-static {p2}, Lcom/android/mms/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-static {p1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/mms/exif/ExifData;->getTag(SI)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0
.end method

.method public getTagByteValues(I)[B
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValues(II)[B
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTag(II)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method protected getTagDefinition(SI)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method protected getTagDefinitionForTag(Lcom/android/mms/exif/ExifTag;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v2

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/android/mms/exif/ExifInterface;->getTagDefinitionForTag(SSII)I

    move-result v3

    return v3
.end method

.method protected getTagDefinitionForTag(SSII)I
    .locals 18

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v15, -0x1

    :cond_0
    :goto_0
    return v15

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v11

    const/4 v15, -0x1

    move-object v1, v6

    array-length v13, v1

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v13, :cond_0

    aget v7, v1, v9

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-static {v10}, Lcom/android/mms/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v5

    invoke-static {v10}, Lcom/android/mms/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v10}, Lcom/android/mms/exif/ExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-static {v10}, Lcom/android/mms/exif/ExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v4

    :cond_2
    const/16 v16, 0x0

    if-nez v4, :cond_3

    const/4 v15, -0x1

    goto :goto_0

    :cond_3
    move-object v2, v4

    array-length v14, v2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_4

    aget v12, v2, v8

    move/from16 v0, p4

    if-ne v12, v0, :cond_6

    const/16 v16, 0x1

    :cond_4
    if-eqz v16, :cond_7

    move/from16 v0, p2

    if-ne v0, v5, :cond_7

    move/from16 v0, p3

    if-eq v0, v3, :cond_5

    if-nez v3, :cond_7

    :cond_5
    move v15, v7

    goto :goto_0

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_1
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .locals 11

    invoke-static {}, Lcom/android/mms/exif/IfdData;->getIfds()[I

    move-result-object v7

    array-length v10, v7

    new-array v4, v10, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v8

    move-object v0, v7

    array-length v9, v0

    const/4 v6, 0x0

    move v2, v1

    :goto_0
    if-ge v6, v9, :cond_0

    aget v5, v0, v6

    invoke-static {v5, p1}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v1, v2, 0x1

    aput v3, v4, v2

    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v10, 0x0

    :goto_2
    return-object v10

    :cond_1
    const/4 v10, 0x0

    invoke-static {v4, v10, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v10

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/android/mms/exif/ExifInterface;->initTagInfo()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public getTagIntValues(I)[I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValues(II)[I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTag(II)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getValueAsInts()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Long;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method

.method public getTagLongValues(I)[J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValues(II)[J
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTag(II)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v1

    goto :goto_0
.end method

.method public getTagRationalValue(I)Lcom/android/mms/exif/Rational;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagRationalValue(II)Lcom/android/mms/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValue(II)Lcom/android/mms/exif/Rational;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTagRationalValues(II)[Lcom/android/mms/exif/Rational;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/android/mms/exif/Rational;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lcom/android/mms/exif/Rational;-><init>(Lcom/android/mms/exif/Rational;)V

    goto :goto_0
.end method

.method public getTagRationalValues(I)[Lcom/android/mms/exif/Rational;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagRationalValues(II)[Lcom/android/mms/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValues(II)[Lcom/android/mms/exif/Rational;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTag(II)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getValueAsRationals()[Lcom/android/mms/exif/Rational;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTag(II)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTag(II)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/mms/exif/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/mms/exif/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/mms/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/mms/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/mms/exif/ExifData;->hasUncompressedStrip()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public isTagCountDefined(I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isThumbnailCompressed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/android/mms/exif/ExifReader;

    invoke-direct {v2, p0}, Lcom/android/mms/exif/ExifReader;-><init>(Lcom/android/mms/exif/ExifInterface;)V

    invoke-virtual {v2, p1}, Lcom/android/mms/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/mms/exif/ExifData;
    :try_end_0
    .catch Lcom/android/mms/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exif format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/mms/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public readExif([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/exif/ExifData;->setCompressedThumbnail([B)V

    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v14, 0x0

    :try_start_0
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v16, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/android/mms/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/mms/exif/ExifInterface;)Lcom/android/mms/exif/ExifParser;
    :try_end_1
    .catch Lcom/android/mms/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v16

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/exif/ExifParser;->getOffsetToExifEndFromSOF()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v14, 0x0

    :try_start_3
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    cmp-long v2, v12, v6

    if-gez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Filesize changed during operation"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    move-exception v9

    move-object v10, v11

    :goto_0
    :try_start_5
    invoke-static {v10}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v14}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    :catch_1
    move-exception v9

    :try_start_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid exif format : "

    invoke-direct {v2, v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_2
    move-exception v9

    move-object v14, v15

    goto :goto_0

    :cond_0
    :try_start_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/android/mms/exif/ExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v17

    invoke-static {v14}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    return v17

    :catchall_1
    move-exception v2

    move-object v14, v15

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v10, v11

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_0
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/android/mms/exif/ExifModifier;

    invoke-direct {v3, p1, p0}, Lcom/android/mms/exif/ExifModifier;-><init>(Ljava/nio/ByteBuffer;Lcom/android/mms/exif/ExifInterface;)V
    :try_end_0
    .catch Lcom/android/mms/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/exif/ExifTag;

    invoke-virtual {v3, v4}, Lcom/android/mms/exif/ExifModifier;->modifyTag(Lcom/android/mms/exif/ExifTag;)V
    :try_end_1
    .catch Lcom/android/mms/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid exif format : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/mms/exif/ExifModifier;->commit()Z
    :try_end_2
    .catch Lcom/android/mms/exif/ExifInvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    return v5

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/exif/ExifInterface;->setCompressedThumbnail([B)Z

    move-result v1

    goto :goto_0
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifData;->clearThumbnailAndStrips()V

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/mms/exif/ExifData;->setCompressedThumbnail([B)V

    const/4 v0, 0x1

    return v0
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->clearExif()V

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    return-void
.end method

.method public setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/mms/exif/ExifData;->addTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public setTagDefinition(SISS[I)I
    .locals 17

    sget-object v14, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v12, -0x1

    :goto_0
    return v12

    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/mms/exif/ExifTag;->isValidType(S)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static/range {p2 .. p2}, Lcom/android/mms/exif/ExifTag;->isValidIfd(I)Z

    move-result v14

    if-eqz v14, :cond_8

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v12

    const/4 v14, -0x1

    if-ne v12, v14, :cond_1

    const/4 v12, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v9

    const/4 v5, 0x0

    move-object/from16 v3, p5

    array-length v10, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_4

    aget v6, v3, v7

    move/from16 v0, p2

    if-ne v0, v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-static {v6}, Lcom/android/mms/exif/ExifTag;->isValidIfd(I)Z

    move-result v14

    if-nez v14, :cond_3

    const/4 v12, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    const/4 v12, -0x1

    goto :goto_0

    :cond_5
    invoke-static/range {p5 .. p5}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v8

    if-eqz v11, :cond_7

    move-object v3, v11

    array-length v10, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_7

    aget v4, v3, v7

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-static {v13}, Lcom/android/mms/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v2

    and-int v14, v8, v2

    if-eqz v14, :cond_6

    const/4 v12, -0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v14

    shl-int/lit8 v15, v8, 0x18

    shl-int/lit8 v16, p3, 0x10

    or-int v15, v15, v16

    or-int v15, v15, p4

    invoke-virtual {v14, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_8
    const/4 v12, -0x1

    goto :goto_0
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTag(II)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/mms/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/mms/exif/ExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/exif/ExifTag;

    invoke-virtual {p0, v1}, Lcom/android/mms/exif/ExifInterface;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/mms/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/mms/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/mms/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/mms/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/android/mms/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/mms/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeExif([BLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/mms/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method
