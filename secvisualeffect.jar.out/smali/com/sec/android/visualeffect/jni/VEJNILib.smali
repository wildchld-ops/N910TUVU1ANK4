.class public Lcom/sec/android/visualeffect/jni/VEJNILib;
.super Ljava/lang/Object;
.source "VEJNILib.java"


# static fields
.field static tmp:Lcom/sec/android/visualeffect/jni/JNILoadClass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/visualeffect/jni/JNILoadClass;->getInstance()Lcom/sec/android/visualeffect/jni/JNILoadClass;

    move-result-object v0

    sput-object v0, Lcom/sec/android/visualeffect/jni/VEJNILib;->tmp:Lcom/sec/android/visualeffect/jni/JNILoadClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native deleteDestroy()V
.end method

.method public static native deleteInitModel(FFFFFFFFFZII)V
.end method

.method public static native deleteInitView(IIFFF)V
.end method

.method public static native deleteInitialize()V
.end method

.method public static native deleteNewLib()V
.end method

.method public static native deleteSetPaperTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native deleteSetShadowTexture(Landroid/graphics/Bitmap;)V
.end method

.method public static native deleteStartAnimation(FFFFFFFF)V
.end method

.method public static native deleteStep()V
.end method
