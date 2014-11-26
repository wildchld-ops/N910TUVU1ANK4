.class public Lcom/android/mms/rcs/Configuration$Im;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Im"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;
    }
.end annotation


# static fields
.field public static final CHARSET:Ljava/nio/charset/Charset;

.field private static final FAKE_CONFERENCE_URI:Ljava/lang/String; = "sip:foo@bar"

.field private static final MAX_ADHOC_GROUP_SIZE:I = 0xa

.field private static final MAX_SIZE_1_TO_1:I = 0x3e8

.field private static MAX_SIZE_1_TO_1_US:J = 0x0L

.field private static final MAX_SIZE_1_TO_M:I = 0x3e8

.field private static MAX_SIZE_1_TO_M_US:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/mms/rcs/Configuration$Im;->MAX_SIZE_1_TO_1_US:J

    const-wide/16 v0, 0x258

    sput-wide v0, Lcom/android/mms/rcs/Configuration$Im;->MAX_SIZE_1_TO_M_US:J

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/Configuration$Im;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupChatConferenceUri()Ljava/lang/String;
    .locals 2

    const-string v1, "root/application/1/im/conf-fcty-uri"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static getImMaxSize1To1()J
    .locals 2

    sget-wide v0, Lcom/android/mms/rcs/Configuration$Im;->MAX_SIZE_1_TO_1_US:J

    return-wide v0
.end method

.method public static getImMaxSize1ToM()J
    .locals 2

    sget-wide v0, Lcom/android/mms/rcs/Configuration$Im;->MAX_SIZE_1_TO_M_US:J

    return-wide v0
.end method

.method public static getMaxAdhocGroupSize()I
    .locals 2

    const-string v1, "root/application/1/im/max_adhoc_group_size"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0xa

    :cond_0
    return v0
.end method

.method public static getMaxsize1to1()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->getImMaxSize1To1()J

    move-result-wide v1

    long-to-int v0, v1

    :goto_0
    if-gtz v0, :cond_0

    const/16 v0, 0x3e8

    :cond_0
    return v0

    :cond_1
    const-string v1, "root/application/1/im/maxsize1to1"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getMaxsize1toM()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->getImMaxSize1ToM()J

    move-result-wide v1

    long-to-int v0, v1

    :goto_0
    if-gtz v0, :cond_0

    const/16 v0, 0x3e8

    :cond_0
    return v0

    :cond_1
    const-string v1, "root/application/1/im/maxsize1toM"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getStartingSessionPoint()Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;
    .locals 2

    const-string v1, "root/application/1/im/imsessionstart"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "WHEN_OPENS_CHAT_WINDOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->OPEN_CHAT_VIEW:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "WHEN_STARTS_TYPING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->START_TYPING:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    goto :goto_0

    :cond_1
    const-string v1, "WHEN_PRESSES_SEND_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->SEND_MESSAGE:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;->OPEN_CHAT_VIEW:Lcom/android/mms/rcs/Configuration$Im$SESSION_STARTING_POINT;

    goto :goto_0
.end method

.method public static isGroupChat()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "root/application/1/im/conf-fcty-uri"

    invoke-static {v2}, Lcom/android/mms/AutoConfigurationReader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "sip:foo@bar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isRcsServiceEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/rcs/RcsOwnCapsManager;->getInstance()Lcom/android/mms/rcs/RcsOwnCapsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsOwnCapsManager;->isEnableRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStoreAndForward()Z
    .locals 1

    const-string v0, "root/application/1/im/imcapalwayson"

    invoke-static {v0}, Lcom/android/mms/AutoConfigurationReader;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUseNaptr()Z
    .locals 3

    const-string v0, "1"

    const-string v1, "1"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "1"

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isWarnSF()Z
    .locals 1

    const-string v0, "root/application/1/im/imwarnsf"

    invoke-static {v0}, Lcom/android/mms/AutoConfigurationReader;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setImMaxSize1To1(J)V
    .locals 2
    .param p0    # J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sput-wide p0, Lcom/android/mms/rcs/Configuration$Im;->MAX_SIZE_1_TO_1_US:J

    :cond_0
    return-void
.end method

.method public static setImMaxSize1ToM(J)V
    .locals 2
    .param p0    # J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sput-wide p0, Lcom/android/mms/rcs/Configuration$Im;->MAX_SIZE_1_TO_M_US:J

    :cond_0
    return-void
.end method
