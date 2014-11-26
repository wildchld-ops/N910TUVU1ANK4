.class Lcom/sec/android/visualeffect/jni/JNILoadClass$JNILoadClassHolder;
.super Ljava/lang/Object;
.source "JNILoadClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/jni/JNILoadClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JNILoadClassHolder"
.end annotation


# static fields
.field static final single:Lcom/sec/android/visualeffect/jni/JNILoadClass;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/visualeffect/jni/JNILoadClass;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/visualeffect/jni/JNILoadClass;-><init>(Lcom/sec/android/visualeffect/jni/JNILoadClass$1;)V

    sput-object v0, Lcom/sec/android/visualeffect/jni/JNILoadClass$JNILoadClassHolder;->single:Lcom/sec/android/visualeffect/jni/JNILoadClass;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
