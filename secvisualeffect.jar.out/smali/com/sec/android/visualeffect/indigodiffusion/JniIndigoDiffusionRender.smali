.class public Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;
.super Ljava/lang/Object;
.source "JniIndigoDiffusionRender.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IndigoDiffusionEffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native clearInkValue()V
.end method

.method public static native getClearInkValue()I
.end method

.method public static native initWaters([F[SIIIII)V
.end method

.method public static native move([F[FIIIIIIZFF)I
.end method

.method public static native onDrawFrame([F[F[SIII[FIIIIFFFFFFFFFFZ)V
.end method

.method public static native onInitGPU()V
.end method

.method public static native onInitSetting(IIZZ)V
.end method

.method public static native onLoadLandscapeBGTextures()V
.end method

.method public static native onLoadPortraitBGTextures()V
.end method

.method public static native onLoadWaterTextures()V
.end method

.method public static native onTouch(IIIF)V
.end method

.method public static native ripple([FIIIIFFF)V
.end method

.method public static native transferLandscapeBGBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public static native transferPortraitBGBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public static native transferWaterBitmap(Landroid/graphics/Bitmap;)V
.end method
