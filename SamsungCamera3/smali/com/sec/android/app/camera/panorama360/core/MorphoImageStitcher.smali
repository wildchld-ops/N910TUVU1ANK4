.class public Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
.super Ljava/lang/Object;
.source "MorphoImageStitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$Rational;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$GalleryData;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$BgColor;,
        Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;
    }
.end annotation


# static fields
.field public static final ALPHA_BLEND_IMAGE_FRAME_OFF:I = 0x0

.field public static final ALPHA_BLEND_IMAGE_FRAME_ON:I = 0x1

.field public static final ANIMATION_TYPE_CENTER_GUIDE_CAPTURE:I = 0x3

.field public static final ANIMATION_TYPE_CENTER_GUIDE_NONE:I = 0x0

.field public static final ANIMATION_TYPE_CENTER_GUIDE_START:I = 0x2

.field public static final ANIMATION_TYPE_CENTER_GUIDE_WAITING:I = 0x1

.field public static final CONTENT_TYPE_MORPHO_PANORAMA:I = 0x1

.field public static final CONTENT_TYPE_NONE:I = 0x0

.field public static final CONTENT_TYPE_PHOTO_SPHERE:I = 0x2

.field public static final CURRENT_IMAGE_FIX_AT_CENTER:I = 0x1

.field public static final CURRENT_IMAGE_FREE:I = 0x0

.field public static final CURRENT_IMAGE_FREE_NEAR_EQUATOR:I = 0x2

.field public static final DISP_TYPE_BACKGROUND:I = 0x2

.field public static final DISP_TYPE_NONE:I = 0x0

.field public static final DISP_TYPE_WIRE_FRAME:I = 0x1

.field public static final ERROR_GENERAL_ERROR:I = -0x80000000

.field public static final ERROR_IO:I = -0x7ffffff8

.field public static final ERROR_MALLOC:I = -0x7ffffffc

.field public static final ERROR_PARAM:I = -0x7fffffff

.field public static final ERROR_STATE:I = -0x7ffffffe

.field public static final ERROR_UNKNOWN:I = -0x40000000

.field public static final ERROR_UNSUPPORTED:I = -0x7ffffff0

.field public static final GUIDE_IMAGE_TYPE_CENTER:I = 0xa

.field public static final GUIDE_IMAGE_TYPE_CENTER_DISABLE:I = 0x10

.field public static final GUIDE_IMAGE_TYPE_CENTER_ENABLE:I = 0xf

.field public static final GUIDE_IMAGE_TYPE_CORNER:I = 0xb

.field public static final GUIDE_IMAGE_TYPE_CURRENT_CALIBRATION:I = 0xe

.field public static final GUIDE_IMAGE_TYPE_CURRENT_DISABLE:I = 0xd

.field public static final GUIDE_IMAGE_TYPE_CURRENT_ENABLE:I = 0xc

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_LEFT:I = 0x2

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_LEFT_ON:I = 0x6

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_RIGHT:I = 0x4

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_RIGHT_ON:I = 0x8

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_UNDER:I = 0x5

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_UNDER_ON:I = 0x9

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_UPPER:I = 0x3

.field public static final GUIDE_IMAGE_TYPE_DIRECTION_UPPER_ON:I = 0x7

.field public static final GUIDE_IMAGE_TYPE_STOP_CENTER:I = 0x0

.field public static final GUIDE_IMAGE_TYPE_STOP_UPPER:I = 0x1

.field public static final GUIDE_TYPE_FREE:I = -0x1

.field public static final GUIDE_TYPE_HORIZONTAL:I = 0x0

.field public static final GUIDE_TYPE_RADIAL:I = 0x3

.field public static final GUIDE_TYPE_VANILLA:I = 0x4

.field public static final GUIDE_TYPE_VANILLA2:I = 0x5

.field public static final GUIDE_TYPE_VERTICAL:I = 0x1

.field public static final GUIDE_TYPE_WHIRLPOOL:I = 0x2

.field public static final MODE_STITCHING:I = 0x0

.field public static final MODE_VIEWING:I = 0x1

.field public static final MORPHO_DOPROCESS:I = 0x1

.field public static final MORPHO_OK:I = 0x0

.field private static final POINT_INFO_SIZE:I = 0x2

.field private static final POINT_X_OFFSET:I = 0x0

.field private static final POINT_Y_OFFSET:I = 0x1

.field public static final PROJECTION_TYPE_CYLINDRICAL_H:I = 0x3

.field public static final PROJECTION_TYPE_CYLINDRICAL_V:I = 0x4

.field public static final PROJECTION_TYPE_FISHEYE:I = 0x5

.field public static final PROJECTION_TYPE_MERCATOR_H:I = 0x0

.field public static final PROJECTION_TYPE_MERCATOR_V:I = 0x1

.field public static final PROJECTION_TYPE_PERSPECTIVE:I = 0x2

.field private static final RECT_BOTTOM_OFFSET:I = 0x3

.field private static final RECT_INFO_SIZE:I = 0x4

.field private static final RECT_LEFT_OFFSET:I = 0x0

.field private static final RECT_RIGHT_OFFSET:I = 0x2

.field private static final RECT_TOP_OFFSET:I = 0x1

.field public static final RENDER_MODE_OPEN_GL:I = 0x1

.field public static final RENDER_MODE_SOFT:I = 0x0

.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0x2

.field public static final ROTATE_270:I = 0x3

.field public static final ROTATE_90:I = 0x1

.field public static final SCENE_INDOOR:I = 0x1

.field public static final SCENE_OUTDOOR:I = 0x0

.field public static final SCROLL_LIMIT_TYPE_BOUNDARY_CENTER:I = 0x1

.field public static final SCROLL_LIMIT_TYPE_BOUNDARY_EDGE:I = 0x0

.field public static final SENSOR_TYPE_ACCELEROMETER:I = 0x3

.field public static final SENSOR_TYPE_CORRECTED_GYROSCOPE:I = 0x2

.field public static final SENSOR_TYPE_GYROSCOPE:I = 0x0

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x1

.field public static final STATUS_2_3RD_LATITUDE_COMPLETE:I = 0xb

.field public static final STATUS_ALIGN_FAILURE:I = 0x3

.field public static final STATUS_GUIDE_ENDED:I = 0x2

.field public static final STATUS_OUT_OF_MEMORY:I = 0x1

.field public static final STATUS_STITCHING:I = 0x0

.field public static final STATUS_STOPPED_BY_ERROR:I = 0x4

.field public static final STATUS_WARNING_ALIGN_FAILURE:I = 0x8

.field public static final STATUS_WARNING_NEED_TO_STOP:I = 0x5

.field public static final STATUS_WARNING_ROTATED_CLOCKWISE:I = 0x9

.field public static final STATUS_WARNING_ROTATED_COUNTERCLOCKWISE:I = 0xa

.field public static final STATUS_WARNING_TOO_FAR:I = 0x7

.field public static final STATUS_WARNING_TOO_FAST:I = 0x6

.field public static final STATUS_WHOLE_SPHERE_COMPLETE:I = 0xc

.field public static final STILL_IMAGE_FORMAT_JPEG:I = 0x100

.field public static final STILL_IMAGE_FORMAT_YVU420SP:I = 0x11

.field private static final STITCH_INFO_ANGLE_OFFSET:I = 0x1

.field private static final STITCH_INFO_INFO_SIZE:I = 0x2

.field private static final STITCH_INFO_SCALE_OFFSET:I = 0x0

.field public static final TEXTURE_IMAGE_TYPE_BACKGROUND_SPHERE:I = 0x11

.field public static final TEXTURE_IMAGE_TYPE_BACKGROUND_SPHERE_MINI:I = 0x13

.field public static final TEXTURE_IMAGE_TYPE_GROUND_FLOOR:I = 0x12

.field public static final USE_IMAGE_FORCE:I = 0x1

.field public static final USE_IMAGE_NONE:I = -0x1

.field public static final USE_IMAGE_NORMAL:I = 0x0

.field public static final USE_SENSOR_FOR_ALIGNMENT_WHEN_FAILED:I = 0x0

.field public static final USE_SENSOR_FOR_GLOBAL_ALIGNMENT:I = 0x1

.field public static final VERSION_1:I = 0x0

.field public static final VERSION_2:I = 0x1

.field private static mFinished:Z


# instance fields
.field private mInitialized:Z

.field private mNative:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mInitialized:Z

    const/16 v1, 0x14b

    const-string v2, "morpho_panorama_wa"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->loadExternalLibrary(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->createNativeObject()I

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mFinished:Z

    iput v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    const v0, -0x7ffffffc

    goto :goto_0
.end method

.method private final native createNativeObject()I
.end method

.method private final native deleteNativeObject(I)V
.end method

.method public static isFinished()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mFinished:Z

    return v0
.end method

.method private final native nativeAttach(I[BI[I[I)I
.end method

.method private final native nativeConvertImage(ILandroid/graphics/Bitmap;[BIIILjava/lang/String;)I
.end method

.method private final native nativeCreateOutputImage(IIIIILjava/lang/Object;[IZ)I
.end method

.method private final native nativeDecodeJpeg(ILjava/lang/String;[BLjava/lang/String;II)I
.end method

.method private final native nativeDecodePostview(ILjava/lang/String;[I[I[I[I[I)I
.end method

.method private final native nativeEnd(I)I
.end method

.method private final native nativeFinish(I)I
.end method

.method private static final native nativeGetAngleOfViewDegree()D
.end method

.method private final native nativeGetBoundingRect(I[I)I
.end method

.method private final native nativeGetClippingRect(I[I)I
.end method

.method private static final native nativeGetContentType(Ljava/lang/String;)I
.end method

.method private final native nativeGetGalleryDataOfAppSeg(I[B)I
.end method

.method private final native nativeGetGuideType(I[I)I
.end method

.method private final native nativeGetImage(I[BIIII)I
.end method

.method private final native nativeGetIsShootable(I[I)I
.end method

.method private final native nativeGetIsStop(I[I)I
.end method

.method private final native nativeGetPolesDispPosition(I[I[I)I
.end method

.method private final native nativeGetPostviewParam(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I
.end method

.method private final native nativeGetPreviewImage(III[B[B)I
.end method

.method private final native nativeGetProjectionType(I[I)I
.end method

.method private final native nativeGetThumbnailImage(ILandroid/graphics/Bitmap;II)I
.end method

.method private final native nativeGetUseSensorAssist(II[I)I
.end method

.method private final native nativeGetUsedHeapSize(I[I)I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native nativeInitialize(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;[I)I
.end method

.method private final native nativeRegisterStillImage(I[BIILjava/lang/String;)I
.end method

.method private final native nativeReleaseRegisteredImage(I)I
.end method

.method private final native nativeRenderPostview(IDDDI)I
.end method

.method private final native nativeRenderPostviewAngle(IDDDI)I
.end method

.method private final native nativeRenderPostviewDefault(II)I
.end method

.method private final native nativeRenderPreview(I[BIIII)I
.end method

.method private final native nativeRenderPreviewWithAnimation(I[BIIIIII)I
.end method

.method private final native nativeResetGL(II)I
.end method

.method private final native nativeSaveCreatedOutputImage(ILjava/lang/String;I[ILjava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;)I
.end method

.method private final native nativeSaveJpeg(ILjava/lang/String;[BLjava/lang/String;III)I
.end method

.method private final native nativeSaveOutputJpeg(ILjava/lang/String;IIIII[ILjava/lang/String;Ljava/lang/String;Z)I
.end method

.method private final native nativeSaveRegisteredImage(IZ[Ljava/lang/Object;)I
.end method

.method private final native nativeSetAngleMatrix(I[DI)I
.end method

.method private final native nativeSetDrawBgBlankMode(II)I
.end method

.method private final native nativeSetGalleryData(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$GalleryData;II)I
.end method

.method private final native nativeSetGuideImage(IILandroid/graphics/Bitmap;)I
.end method

.method private final native nativeSetGuideType(II)I
.end method

.method private final native nativeSetListenerFromNative(ILandroid/app/Activity;)I
.end method

.method private final native nativeSetMotionlessThreshold(II)I
.end method

.method private final native nativeSetPostviewData(III)I
.end method

.method private final native nativeSetPostviewParam(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I
.end method

.method private final native nativeSetProjectionType(II)I
.end method

.method private final native nativeSetScene(II)I
.end method

.method private final native nativeSetTextureShrinkRatio(II)I
.end method

.method private final native nativeSetUseReplayMode(II)I
.end method

.method private final native nativeSetUseSensorAssist(III)I
.end method

.method private final native nativeSetUseSensorThreshold(II)I
.end method

.method private final native nativeSetUseThreshold(II)I
.end method

.method private final native nativeStart(II)I
.end method

.method private final native nativeUndo(I)I
.end method

.method private final native nativereReRegisterTexture(I)I
.end method


# virtual methods
.method public attach([BI[I[I)I
    .locals 7
    .param p1    # [B
    .param p2    # I
    .param p3    # [I
    .param p4    # [I

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeAttach(I[BI[I[I)I

    move-result v6

    :goto_0
    monitor-exit p0

    return v6

    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public convertImage(Landroid/graphics/Bitmap;[BIIILjava/lang/String;)I
    .locals 9
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # [B
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/String;

    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeConvertImage(ILandroid/graphics/Bitmap;[BIIILjava/lang/String;)I

    move-result v8

    :goto_0
    return v8

    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public createOutputImage(Landroid/graphics/Rect;Ljava/lang/Object;[IZ)I
    .locals 10
    .param p1    # Landroid/graphics/Rect;
    .param p2    # Ljava/lang/Object;
    .param p3    # [I
    .param p4    # Z

    const/4 v9, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeCreateOutputImage(IIIIILjava/lang/Object;[IZ)I

    move-result v9

    :goto_0
    return v9

    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public decodeJpeg(Ljava/lang/String;[BLjava/lang/String;II)I
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # [B
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I

    const/4 v7, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeDecodeJpeg(ILjava/lang/String;[BLjava/lang/String;II)I

    move-result v7

    :goto_0
    return v7

    :cond_0
    const v7, -0x7ffffffe

    goto :goto_0
.end method

.method public decodePostview(Ljava/lang/String;[I[I[I[I[I)I
    .locals 9
    .param p1    # Ljava/lang/String;
    .param p2    # [I
    .param p3    # [I
    .param p4    # [I
    .param p5    # [I
    .param p6    # [I

    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeDecodePostview(ILjava/lang/String;[I[I[I[I[I)I

    move-result v8

    :goto_0
    return v8

    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public end()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeEnd(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mFinished:Z

    iget-boolean v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeFinish(I)I

    move-result v0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mInitialized:Z

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->deleteNativeObject(I)V

    iput v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    :goto_0
    return v0

    :cond_1
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getAngleOfViewDegree()D
    .locals 2

    invoke-static {}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetAngleOfViewDegree()D

    move-result-wide v0

    return-wide v0
.end method

.method public getBoundingRect(Landroid/graphics/Rect;)I
    .locals 7
    .param p1    # Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v0, v2, [I

    iget v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetBoundingRect(I[I)I

    move-result v1

    if-nez v1, :cond_0

    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return v1

    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)I
    .locals 7
    .param p1    # Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v0, v2, [I

    iget v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetClippingRect(I[I)I

    move-result v1

    if-nez v1, :cond_0

    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return v1

    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getContentType(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetContentType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGalleryDataOfAppSeg([B)I
    .locals 2
    .param p1    # [B

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetGalleryDataOfAppSeg(I[B)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getGuideType([I)I
    .locals 2
    .param p1    # [I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetGuideType(I[I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getImage([BLandroid/graphics/Rect;)I
    .locals 8
    .param p1    # [B
    .param p2    # Landroid/graphics/Rect;

    const/4 v7, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetImage(I[BIIII)I

    move-result v7

    :goto_0
    return v7

    :cond_0
    const v7, -0x7ffffffe

    goto :goto_0
.end method

.method public getIsShootable([I)I
    .locals 2
    .param p1    # [I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetIsShootable(I[I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getIsStop([I)I
    .locals 2
    .param p1    # [I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetIsStop(I[I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getPolesDispPosition(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 7
    .param p1    # Landroid/graphics/Point;
    .param p2    # Landroid/graphics/Point;

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v3, :cond_0

    new-array v0, v6, [I

    new-array v2, v6, [I

    iget v3, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v3, v0, v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetPolesDispPosition(I[I[I)I

    move-result v1

    aget v3, v0, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    aget v3, v0, v5

    iput v3, p1, Landroid/graphics/Point;->y:I

    aget v3, v2, v4

    iput v3, p2, Landroid/graphics/Point;->x:I

    aget v3, v2, v5

    iput v3, p2, Landroid/graphics/Point;->y:I

    :goto_0
    return v1

    :cond_0
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getPostviewParam(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;
    .param p2    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetPostviewParam(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getPreviewImage(II[B[B)I
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # [B
    .param p4    # [B

    const/4 v6, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetPreviewImage(III[B[B)I

    move-result v6

    :goto_0
    return v6

    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public getProjectionType([I)I
    .locals 2
    .param p1    # [I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetProjectionType(I[I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getThumbnailImage(Landroid/graphics/Bitmap;II)I
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetThumbnailImage(ILandroid/graphics/Bitmap;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getUseSensorAssist(I[I)I
    .locals 2
    .param p1    # I
    .param p2    # [I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetUseSensorAssist(II[I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getUsedHeapSize([I)I
    .locals 2
    .param p1    # [I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetUsedHeapSize(I[I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;[I)I
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;
    .param p2    # [I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeInitialize(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;[I)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mInitialized:Z

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public reRegisterTexture()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativereReRegisterTexture(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public registerStillImage([BIILjava/lang/String;)I
    .locals 7
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;

    const/4 v6, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRegisterStillImage(I[BIILjava/lang/String;)I

    move-result v6

    :goto_0
    return v6

    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public releaseRegisteredImage()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeReleaseRegisteredImage(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPostview(DDDI)I
    .locals 10
    .param p1    # D
    .param p3    # D
    .param p5    # D
    .param p7    # I

    const/4 v9, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRenderPostview(IDDDI)I

    move-result v9

    :goto_0
    return v9

    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPostviewAngle(DDDI)I
    .locals 10
    .param p1    # D
    .param p3    # D
    .param p5    # D
    .param p7    # I

    const/4 v9, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRenderPostviewAngle(IDDDI)I

    move-result v9

    :goto_0
    return v9

    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPostviewDefault(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRenderPostviewDefault(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPreview([BIIII)I
    .locals 8
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRenderPreview(I[BIIII)I

    move-result v7

    :goto_0
    monitor-exit p0

    return v7

    :cond_0
    const v7, -0x7ffffffe

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renderPreviewWithAnimation([BIIIIII)I
    .locals 10
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I

    const/4 v9, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeRenderPreviewWithAnimation(I[BIIIIII)I

    move-result v9

    :goto_0
    return v9

    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public resetGL(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeResetGL(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public saveCreatedOutputImage(Ljava/lang/String;I[ILjava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;)I
    .locals 10
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # [I
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Z
    .param p7    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;

    const/4 v9, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSaveCreatedOutputImage(ILjava/lang/String;I[ILjava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ExifData;)I

    move-result v9

    :goto_0
    return v9

    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public saveJpeg(Ljava/lang/String;[BLjava/lang/String;III)I
    .locals 9
    .param p1    # Ljava/lang/String;
    .param p2    # [B
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # I

    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSaveJpeg(ILjava/lang/String;[BLjava/lang/String;III)I

    move-result v8

    :goto_0
    return v8

    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 13
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/graphics/Rect;
    .param p3    # I
    .param p4    # [I
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Z

    const/4 v12, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v2, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSaveOutputJpeg(ILjava/lang/String;IIIII[ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v12

    :goto_0
    return v12

    :cond_0
    const v12, -0x7ffffffe

    goto :goto_0
.end method

.method public saveRegisteredImage(Z[Ljava/lang/Object;)I
    .locals 2
    .param p1    # Z
    .param p2    # [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSaveRegisteredImage(IZ[Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setAngleMatrix([DI)I
    .locals 2
    .param p1    # [D
    .param p2    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetAngleMatrix(I[DI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setDrawBgBlankMode(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetDrawBgBlankMode(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setGalleryData(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$GalleryData;II)I
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$GalleryData;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetGalleryData(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$GalleryData;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setGuideImage(ILandroid/graphics/Bitmap;)I
    .locals 2
    .param p1    # I
    .param p2    # Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetGuideImage(IILandroid/graphics/Bitmap;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setGuideType(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetGuideType(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setListenerFromNative(Landroid/app/Activity;)I
    .locals 2
    .param p1    # Landroid/app/Activity;

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetListenerFromNative(ILandroid/app/Activity;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMotionlessThreshold(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetMotionlessThreshold(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setPostviewData(II)I
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetPostviewData(III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setPostviewParam(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;
    .param p2    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetPostviewParam(ILcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setProjectionType(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetProjectionType(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setScene(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetScene(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setTextureShrinkRatio(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetTextureShrinkRatio(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseReplayMode(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetUseReplayMode(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorAssist(II)I
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetUseSensorAssist(III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorThreshold(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetUseSensorThreshold(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseThreshold(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeSetUseThreshold(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public start(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeStart(II)I

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public undo()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->nativeUndo(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
