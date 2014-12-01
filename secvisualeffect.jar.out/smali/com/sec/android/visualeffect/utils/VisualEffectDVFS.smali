.class public Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;
.super Ljava/lang/Object;
.source "VisualEffectDVFS.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10

.field private static cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private static cpuMaxTime:I

.field private static cpuMinClockBooster:Landroid/os/DVFSHelper;

.field private static cpuMinTime:I

.field private static gpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private static gpuMaxTime:I

.field private static gpuMinClockBooster:Landroid/os/DVFSHelper;

.field private static gpuMinTime:I

.field private static supportedCPUClockTable:[I

.field private static supportedGPUClockTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "VisualEffectDVFS"

    sput-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedCPUClockTable:[I

    sput-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedGPUClockTable:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBestFreq([II)I
    .locals 6

    const/4 v4, 0x0

    const v3, 0x7fffffff

    const/4 v1, 0x0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v5, p0, v2

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    move v4, v2

    move v3, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public static lock(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMaxTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == lockMax : cpuMaxClockBooster.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "cpuMaxClockBooster = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMaxClockBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMaxTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == lockMax : gpuMaxClockBooster.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "gpuMaxClockBooster = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMinClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMinClockBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMinTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == lockMin : cpuMinClockBooster.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "cpuMinClockBooster = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMinClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMinClockBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMinTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == lockMin : gpuMinClockBooster.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "gpuMinClockBooster = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static release(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedCPUClockTable:[I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMax : cpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMax : cpuMaxClockBooster = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMax : supportedCPUClockTable = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedGPUClockTable:[I

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMax : gpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMax : gpuMaxClockBooster = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMax : supportedGPUClockTable = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedCPUClockTable:[I

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMinClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMin : cpu MinClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMinClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMin : cpuMinClockBooster = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMin : supportedCPUClockTable = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedGPUClockTable:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMinClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMin : gpu MinClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMinClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMin : gpuMinClockBooster = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v1, "== DVFS == releaseMin : supportedGPUClockTable = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static setLimit(Landroid/content/Context;III)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "== DVFS == setMax : CPU, maxValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p3, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMaxTime:I

    new-instance v1, Landroid/os/DVFSHelper;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v1

    sput-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedCPUClockTable:[I

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedCPUClockTable:[I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedCPUClockTable:[I

    invoke-static {v1, p2}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->getBestFreq([II)I

    move-result v0

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v2, "CPU"

    sget-object v3, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedCPUClockTable:[I

    aget v3, v3, v0

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v2, "== DVFS == setMax : DVFSHelper.getSupportedCPUFrequency() = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "== DVFS == setMax : GPU, maxValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p3, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMaxTime:I

    new-instance v1, Landroid/os/DVFSHelper;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMaxClockBooster:Landroid/os/DVFSHelper;

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v1

    sput-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedGPUClockTable:[I

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedGPUClockTable:[I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedGPUClockTable:[I

    invoke-static {v1, p2}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->getBestFreq([II)I

    move-result v0

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v2, "GPU"

    sget-object v3, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedGPUClockTable:[I

    aget v3, v3, v0

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v2, "== DVFS == setMax : DVFSHelper.getSupportedGPUFrequency() = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "== DVFS == setMin : CPU, minValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", minTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p3, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMinTime:I

    new-instance v1, Landroid/os/DVFSHelper;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMinClockBooster:Landroid/os/DVFSHelper;

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMinClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v1

    sput-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedCPUClockTable:[I

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedCPUClockTable:[I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedCPUClockTable:[I

    invoke-static {v1, p2}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->getBestFreq([II)I

    move-result v0

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->cpuMinClockBooster:Landroid/os/DVFSHelper;

    const-string v2, "CPU"

    sget-object v3, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedCPUClockTable:[I

    aget v3, v3, v0

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v2, "== DVFS == setMin : DVFSHelper.getSupportedCPUFrequency() = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "== DVFS == setMin : GPU, minValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", minTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p3, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMinTime:I

    new-instance v1, Landroid/os/DVFSHelper;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMinClockBooster:Landroid/os/DVFSHelper;

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMinClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v1

    sput-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedGPUClockTable:[I

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedGPUClockTable:[I

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedGPUClockTable:[I

    invoke-static {v1, p2}, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->getBestFreq([II)I

    move-result v0

    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->gpuMinClockBooster:Landroid/os/DVFSHelper;

    const-string v2, "GPU"

    sget-object v3, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->supportedGPUClockTable:[I

    aget v3, v3, v0

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lcom/sec/android/visualeffect/utils/VisualEffectDVFS;->TAG:Ljava/lang/String;

    const-string v2, "== DVFS == setMin : DVFSHelper.getSupportedGPUFrequency() = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
