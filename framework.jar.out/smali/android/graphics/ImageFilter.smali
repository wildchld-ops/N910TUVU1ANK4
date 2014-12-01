.class public Landroid/graphics/ImageFilter;
.super Ljava/lang/Object;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageFilter$1;,
        Landroid/graphics/ImageFilter$BitmapMaskFilter;,
        Landroid/graphics/ImageFilter$MosaicFilter;,
        Landroid/graphics/ImageFilter$VignetteFilter;,
        Landroid/graphics/ImageFilter$DistortionFilter;,
        Landroid/graphics/ImageFilter$ColorClampFilter;,
        Landroid/graphics/ImageFilter$DesaturationFilter;,
        Landroid/graphics/ImageFilter$ColorizeFilter;,
        Landroid/graphics/ImageFilter$ZoomBlurFilter;,
        Landroid/graphics/ImageFilter$DirectionalBlurFilter;,
        Landroid/graphics/ImageFilter$SgiBlurFilter;,
        Landroid/graphics/ImageFilter$CosineBlurFilter;,
        Landroid/graphics/ImageFilter$GaussianBlurFilter;
    }
.end annotation


# static fields
.field public static final DEBUG_HWUI_IMAGE_FILTER_ENABLE_PROPERTY:Ljava/lang/String; = "debug.hwui.imagefilter.enable"

.field public static final DEBUG_HWUI_IMAGE_FILTER_LOG_PROPERTY:Ljava/lang/String; = "debug.hwui.imagefilter.log"

.field public static final TYPE_BITMAP_MASK:I = 0x34

.field public static final TYPE_COLORIZE:I = 0x10

.field public static final TYPE_COLOR_CLAMP:I = 0x12

.field public static final TYPE_COSINE_BLUR:I = 0x4

.field public static final TYPE_DESATURATION:I = 0x11

.field public static final TYPE_DIRECTIONAL_BLUR:I = 0x2

.field public static final TYPE_DISTORTION:I = 0x31

.field public static final TYPE_GAUSSIAN_BLUR:I = 0x1

.field public static final TYPE_MOSAIC:I = 0x33

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SGI_BLUR:I = 0x5

.field public static final TYPE_VIGNETTE:I = 0x32

.field public static final TYPE_ZOOM_BLUR:I = 0x3


# instance fields
.field public final mNativeImageFilter:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/graphics/ImageFilter;->native_init()I

    move-result v0

    iput v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    iget v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    invoke-static {v0, p1}, Landroid/graphics/ImageFilter;->native_setType(II)V

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/ImageFilter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    invoke-static {v0}, Landroid/graphics/ImageFilter;->native_copy(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    return-void
.end method

.method public static createImageFilter(I)Landroid/graphics/ImageFilter;
    .locals 2

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$GaussianBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/graphics/ImageFilter$ZoomBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$ZoomBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/graphics/ImageFilter$CosineBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$CosineBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Landroid/graphics/ImageFilter$SgiBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$SgiBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Landroid/graphics/ImageFilter$ColorizeFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$ColorizeFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Landroid/graphics/ImageFilter$DesaturationFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$DesaturationFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_7
    new-instance v0, Landroid/graphics/ImageFilter$ColorClampFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$ColorClampFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_8
    new-instance v0, Landroid/graphics/ImageFilter$DistortionFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$DistortionFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_9
    new-instance v0, Landroid/graphics/ImageFilter$VignetteFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$VignetteFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_a
    new-instance v0, Landroid/graphics/ImageFilter$MosaicFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$MosaicFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_b
    new-instance v0, Landroid/graphics/ImageFilter$BitmapMaskFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$BitmapMaskFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x31 -> :sswitch_8
        0x32 -> :sswitch_9
        0x33 -> :sswitch_a
        0x34 -> :sswitch_b
    .end sparse-switch
.end method

.method private static native finalizer(I)V
.end method

.method private static native native_copy(I)I
.end method

.method private static native native_getType(I)I
.end method

.method private static native native_getValue(II)F
.end method

.method private static native native_init()I
.end method

.method private static native native_setBitmapMask(II[B)V
.end method

.method private static native native_setType(II)V
.end method

.method private static native native_setValue(IIF)V
.end method


# virtual methods
.method public copy()Landroid/graphics/ImageFilter;
    .locals 1

    new-instance v0, Landroid/graphics/ImageFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ImageFilter;-><init>(Landroid/graphics/ImageFilter;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    invoke-static {v0}, Landroid/graphics/ImageFilter;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected getType()I
    .locals 1

    iget v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    invoke-static {v0}, Landroid/graphics/ImageFilter;->native_getType(I)I

    move-result v0

    return v0
.end method

.method protected getValue(I)F
    .locals 1

    iget v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    invoke-static {v0, p1}, Landroid/graphics/ImageFilter;->native_getValue(II)F

    move-result v0

    return v0
.end method

.method protected setBitmapMask(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v2, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    invoke-static {v0, v1, v2}, Landroid/graphics/ImageFilter;->native_setBitmapMask(II[B)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/ImageFilter;->native_setBitmapMask(II[B)V

    goto :goto_0
.end method

.method protected setValue(IF)V
    .locals 1

    iget v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:I

    invoke-static {v0, p1, p2}, Landroid/graphics/ImageFilter;->native_setValue(IIF)V

    return-void
.end method
