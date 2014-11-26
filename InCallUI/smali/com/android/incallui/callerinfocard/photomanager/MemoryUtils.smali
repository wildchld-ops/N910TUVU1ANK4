.class public final Lcom/android/incallui/callerinfocard/photomanager/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field private static sTotalMemorySize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/incallui/callerinfocard/photomanager/MemoryUtils;->sTotalMemorySize:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTotalMemorySize()J
    .locals 5

    sget-wide v1, Lcom/android/incallui/callerinfocard/photomanager/MemoryUtils;->sTotalMemorySize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    sput-wide v1, Lcom/android/incallui/callerinfocard/photomanager/MemoryUtils;->sTotalMemorySize:J

    :cond_0
    sget-wide v1, Lcom/android/incallui/callerinfocard/photomanager/MemoryUtils;->sTotalMemorySize:J

    return-wide v1
.end method
