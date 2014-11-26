.class public Lcom/sec/android/visualeffect/utils/VisualEffectDVFSValue;
.super Ljava/lang/Object;
.source "VisualEffectDVFSValue.java"


# static fields
.field public static final CPU_MAX_ENABLE:Ljava/lang/Boolean;

.field public static final CPU_MAX_FREQ:I = 0x0

.field public static final CPU_MIN_ENABLE:Ljava/lang/Boolean;

.field public static final CPU_MIN_FREQ:I = 0x0

.field public static final GPU_MAX_ENABLE:Ljava/lang/Boolean;

.field public static final GPU_MAX_FREQ:I = 0xe4e1c00

.field public static final GPU_MIN_ENABLE:Ljava/lang/Boolean;

.field public static final GPU_MIN_FREQ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFSValue;->GPU_MAX_ENABLE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFSValue;->GPU_MIN_ENABLE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFSValue;->CPU_MAX_ENABLE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFSValue;->CPU_MIN_ENABLE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
