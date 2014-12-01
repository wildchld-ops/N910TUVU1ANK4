.class public Lcom/sec/android/visualeffect/jni/JNILoadClass;
.super Ljava/lang/Object;
.source "JNILoadClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/jni/JNILoadClass$1;,
        Lcom/sec/android/visualeffect/jni/JNILoadClass$JNILoadClassHolder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "VEJNI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/visualeffect/jni/JNILoadClass$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/jni/JNILoadClass;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/visualeffect/jni/JNILoadClass;
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/jni/JNILoadClass$JNILoadClassHolder;->single:Lcom/sec/android/visualeffect/jni/JNILoadClass;

    return-object v0
.end method
