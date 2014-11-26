.class public Lcom/android/services/telephony/common/AudioMode;
.super Ljava/lang/Object;
.source "AudioMode.java"


# static fields
.field public static ALL_MODES:I

.field public static BLUETOOTH:I

.field public static EARPIECE:I

.field public static SPEAKER:I

.field public static WIRED_HEADSET:I

.field public static WIRED_OR_EARPIECE:I

.field public static WIRED_OR_EARPIECE_OR_SPEAKER:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    const/4 v0, 0x4

    sput v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    const/16 v0, 0x8

    sput v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE_OR_SPEAKER:I

    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/services/telephony/common/AudioMode;->ALL_MODES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/StringBuffer;
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3
    .param p0    # I

    sget v1, Lcom/android/services/telephony/common/AudioMode;->ALL_MODES:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const-string v1, "UNKNOWN"

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    if-ne v1, v2, :cond_1

    const-string v1, "EARPIECE"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/AudioMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1
    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v1, v2, :cond_2

    const-string v1, "BLUETOOTH"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/AudioMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_2
    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-ne v1, v2, :cond_3

    const-string v1, "WIRED_HEADSET"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/AudioMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_3
    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v1, v2, :cond_4

    const-string v1, "SPEAKER"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/AudioMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
