.class public Landroid/graphics/LayerRasterizer;
.super Landroid/graphics/Rasterizer;
.source "LayerRasterizer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Rasterizer;-><init>()V

    invoke-static {}, Landroid/graphics/LayerRasterizer;->nativeConstructor()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rasterizer;->native_instance:I

    return-void
.end method

.method private static native nativeAddLayer(IIFF)V
.end method

.method private static native nativeConstructor()I
.end method


# virtual methods
.method public addLayer(Landroid/graphics/Paint;)V
    .locals 3
    .param p1    # Landroid/graphics/Paint;

    const/4 v2, 0x0

    iget v0, p0, Landroid/graphics/Rasterizer;->native_instance:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1, v2, v2}, Landroid/graphics/LayerRasterizer;->nativeAddLayer(IIFF)V

    return-void
.end method

.method public addLayer(Landroid/graphics/Paint;FF)V
    .locals 2
    .param p1    # Landroid/graphics/Paint;
    .param p2    # F
    .param p3    # F

    iget v0, p0, Landroid/graphics/Rasterizer;->native_instance:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1, p2, p3}, Landroid/graphics/LayerRasterizer;->nativeAddLayer(IIFF)V

    return-void
.end method