.class public Lcom/android/mms/util/DummyFramework;
.super Ljava/lang/Object;
.source "DummyFramework.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DummyFramework$SearchManager;,
        Lcom/android/mms/util/DummyFramework$CallerInfo;,
        Lcom/android/mms/util/DummyFramework$ContentType;,
        Lcom/android/mms/util/DummyFramework$Linkify;,
        Lcom/android/mms/util/DummyFramework$Cmas;,
        Lcom/android/mms/util/DummyFramework$CellBroadcasts;,
        Lcom/android/mms/util/DummyFramework$Channels;,
        Lcom/android/mms/util/DummyFramework$SpamMms;,
        Lcom/android/mms/util/DummyFramework$SpamSms;,
        Lcom/android/mms/util/DummyFramework$Mms;,
        Lcom/android/mms/util/DummyFramework$Sms;,
        Lcom/android/mms/util/DummyFramework$Threads;
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Mms/DummyFramework"

    sput-object v0, Lcom/android/mms/util/DummyFramework;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodedString(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v5, "utf-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move v2, p0

    if-nez v2, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/mms/util/DummyFramework;->TAG:Ljava/lang/String;

    const-string v6, "Default encoding must be supported."

    invoke-static {v5, v6, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v5, Ljava/lang/String;

    const-string v6, "iso-8859-1"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
