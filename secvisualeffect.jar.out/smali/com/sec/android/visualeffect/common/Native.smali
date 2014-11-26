.class public Lcom/sec/android/visualeffect/common/Native;
.super Ljava/lang/Object;
.source "Native.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "stlport_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "secvesrkcommon"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native loadModel(Ljava/lang/String;[B)V
.end method

.method public static native loadTexture(Ljava/lang/String;[III)V
.end method

.method public static native prehandleAffordance()V
.end method

.method public static native prehandleClearEffect()V
.end method

.method public static native prehandleDraw()I
.end method

.method public static native prehandleInitEffect()V
.end method

.method public static native prehandleMenuPressed()V
.end method

.method public static native prehandleParam(II)V
.end method

.method public static native prehandlePause()V
.end method

.method public static native prehandleRecycleTextures()V
.end method

.method public static native prehandleRestart()V
.end method

.method public static native prehandleSetOrientation(I)V
.end method

.method public static native prehandleStart(Ljava/lang/String;II)[Ljava/lang/String;
.end method

.method public static native prehandleStop()V
.end method

.method public static native prehandleTouch(III)V
.end method

.method public static native prehandleUnlock()V
.end method

.method public static native prehandleVolumeDownPressed()V
.end method

.method public static native prehandleVolumeUpPressed()V
.end method
