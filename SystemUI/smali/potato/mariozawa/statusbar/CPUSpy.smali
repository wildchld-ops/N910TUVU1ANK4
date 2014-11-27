.class public Lpotato/mariozawa/statusbar/CPUSpy;
.super Landroid/widget/TextView;
.source "CPUSpy.java"


# static fields
.field private static final FREQINFO_CUR_FILE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"

.field private static FREQ_CUR_FILE:Ljava/lang/String; = null

.field private static final FREQ_CUR_PREF:Ljava/lang/String; = "pref_cpu_freq_cur"

.field private static final GOVERNOR:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

.field private static final SCALE_CUR_FILE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

.field private static final TAG:Ljava/lang/String; = "CPUSpy"


# instance fields
.field private CPUSPYENABLE:I

.field private CPUSPYGOVERNOR:I

.field private curCpu:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mLabel:Ljava/lang/String;

.field private final mResetCpu:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    sput-object v0, Lpotato/mariozawa/statusbar/CPUSpy;->FREQ_CUR_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lpotato/mariozawa/statusbar/CPUSpy$1;

    invoke-direct {v0, p0}, Lpotato/mariozawa/statusbar/CPUSpy$1;-><init>(Lpotato/mariozawa/statusbar/CPUSpy;)V

    iput-object v0, p0, Lpotato/mariozawa/statusbar/CPUSpy;->mResetCpu:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lpotato/mariozawa/statusbar/CPUSpy;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lpotato/mariozawa/statusbar/CPUSpy;->queryForCpuInformation()V

    iget-object v0, p0, Lpotato/mariozawa/statusbar/CPUSpy;->mResetCpu:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic access$0(Lpotato/mariozawa/statusbar/CPUSpy;)V
    .locals 0

    invoke-direct {p0}, Lpotato/mariozawa/statusbar/CPUSpy;->queryForCpuInformation()V

    return-void
.end method

.method static synthetic access$1(Lpotato/mariozawa/statusbar/CPUSpy;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lpotato/mariozawa/statusbar/CPUSpy;->mResetCpu:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static fileExists(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private queryForCpuInformation()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lpotato/mariozawa/statusbar/CPUSpy;->FREQ_CUR_FILE:Ljava/lang/String;

    invoke-static {v0}, Lpotato/mariozawa/statusbar/CPUSpy;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"

    sput-object v0, Lpotato/mariozawa/statusbar/CPUSpy;->FREQ_CUR_FILE:Ljava/lang/String;

    :cond_0
    sget-object v0, Lpotato/mariozawa/statusbar/CPUSpy;->FREQ_CUR_FILE:Ljava/lang/String;

    invoke-static {v0}, Lpotato/mariozawa/statusbar/CPUSpy;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpotato/mariozawa/statusbar/CPUSpy;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpotato/mariozawa/statusbar/CPUSpy;->curCpu:Ljava/lang/String;

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v0}, Lpotato/mariozawa/statusbar/CPUSpy;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpotato/mariozawa/statusbar/CPUSpy;->mLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lpotato/mariozawa/statusbar/CPUSpy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CPUSPYENABLE"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpotato/mariozawa/statusbar/CPUSpy;->CPUSPYENABLE:I

    invoke-virtual {p0}, Lpotato/mariozawa/statusbar/CPUSpy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CPUSPYGOVERNOR"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpotato/mariozawa/statusbar/CPUSpy;->CPUSPYGOVERNOR:I

    iget v0, p0, Lpotato/mariozawa/statusbar/CPUSpy;->CPUSPYENABLE:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpotato/mariozawa/statusbar/CPUSpy;->setVisibility(I)V

    iget v0, p0, Lpotato/mariozawa/statusbar/CPUSpy;->CPUSPYGOVERNOR:I

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpotato/mariozawa/statusbar/CPUSpy;->curCpu:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpotato/mariozawa/statusbar/CPUSpy;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpotato/mariozawa/statusbar/CPUSpy;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lpotato/mariozawa/statusbar/CPUSpy;->curCpu:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lpotato/mariozawa/statusbar/CPUSpy;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lpotato/mariozawa/statusbar/CPUSpy;->setVisibility(I)V

    goto :goto_0
.end method

.method private static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :goto_0
    return-object v2

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v3, "CPUSpy"

    const-string v4, "IO Exception when reading /sys/ file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private toMHz(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "-"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
