.class public Lcom/sec/android/visualeffect/utils/BitmapTools;
.super Ljava/lang/Object;
.source "BitmapTools.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapTools"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    const-string v7, "BitmapTools"

    const-string v8, "getCenterCropBitmap()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    int-to-float v7, v2

    int-to-float v8, v0

    div-float v1, v7, v8

    cmpl-float v7, v1, v4

    if-lez v7, :cond_0

    const-string v7, "BitmapTools"

    const-string v8, "bmp is horizontally"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v7, v0

    mul-float/2addr v7, v4

    float-to-int v6, v7

    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-static {p0, v7, v9, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const-string v7, "BitmapTools"

    const-string v8, "bmp is vertically"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v7, v2

    div-float/2addr v7, v4

    float-to-int v5, v7

    sub-int v7, v0, v5

    div-int/lit8 v7, v7, 0x2

    invoke-static {p0, v9, v7, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method
