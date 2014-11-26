.class public Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;
.super Ljava/lang/Object;
.source "JniBrilliantCutLib.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mNativeJNI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BrilliantCutEffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->mNativeJNI:I

    const-string v0, "BrilliantCutRenderer JNI"

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static native clearEffect()V
.end method

.method public static native destroy()V
.end method

.method public static native getFinishRenderingFlag()Z
.end method

.method public static native init()V
.end method

.method public static native onDrawFrame()V
.end method

.method public static native onSurfaceChanged(III)V
.end method

.method public static native onSurfaceCreated()V
.end method

.method public static native onTouchEvent(FFI)V
.end method

.method public static native setLandscapeBGBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public static native setPortraitBGBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public static native setResourceBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public static native settingsForAffordance(FFFI)V
.end method

.method public static native settingsForGeneral(IF)V
.end method

.method public static native settingsForImageType(I)V
.end method

.method public static native settingsForTouch(FFIII)V
.end method

.method public static native settingsForUnlock(I)V
.end method

.method public static native showAffordance()V
.end method

.method public static native unlockEffect()V
.end method
