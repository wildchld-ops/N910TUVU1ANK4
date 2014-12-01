.class public Lcom/android/mms/transaction/SelloutSmsService;
.super Landroid/app/Service;
.source "SelloutSmsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;,
        Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;
    }
.end annotation


# static fields
.field public static final DA_ARGENTINA:Ljava/lang/String; = "22511"

.field public static final DA_BRAZIL:Ljava/lang/String; = "28555"

.field private static final MAX_RETRY_ATTEMPTS:I = 0x3

.field public static final PLMN_AR_CLARO_1:Ljava/lang/String; = "72231"

.field public static final PLMN_AR_MOVISTAR_1:Ljava/lang/String; = "72207"

.field public static final PLMN_AR_PERSONAL_1:Ljava/lang/String; = "72234"

.field public static final PLMN_BR_CLARO_1:Ljava/lang/String; = "72405"

.field public static final PLMN_BR_OI_1:Ljava/lang/String; = "72431"

.field public static final PLMN_BR_OI_2:Ljava/lang/String; = "72416"

.field public static final PLMN_BR_OI_3:Ljava/lang/String; = "72424"

.field public static final PLMN_BR_TIM_1:Ljava/lang/String; = "72402"

.field public static final PLMN_BR_TIM_2:Ljava/lang/String; = "72403"

.field public static final PLMN_BR_TIM_3:Ljava/lang/String; = "72404"

.field public static final PLMN_BR_VIVO_1:Ljava/lang/String; = "72406"

.field public static final PLMN_BR_VIVO_2:Ljava/lang/String; = "72410"

.field public static final PLMN_BR_VIVO_3:Ljava/lang/String; = "72411"

.field public static final PLMN_BR_VIVO_4:Ljava/lang/String; = "72423"

.field public static final PLMN_KR_TEST_1:Ljava/lang/String; = "45001"

.field private static final TAG:Ljava/lang/String; = "SelloutSmsService"

.field private static sMsgSendingAttempt:I

.field static sellout_sms_on_progress:Ljava/lang/Boolean;


# instance fields
.field private mContext:Landroid/content/Context;

.field mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

.field mPhoneStatelistener2:Landroid/telephony/PhoneStateListener;

.field private mSelloutSmsReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceHandler:Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mServiceStartId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_sms_on_progress:Ljava/lang/Boolean;

    sput v1, Lcom/android/mms/transaction/SelloutSmsService;->sMsgSendingAttempt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v1, p0, Lcom/android/mms/transaction/SelloutSmsService;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mServiceStartId:I

    iput-object v1, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_MAX:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    iput-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SelloutSmsService$1;-><init>(Lcom/android/mms/transaction/SelloutSmsService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SelloutSmsService$2;-><init>(Lcom/android/mms/transaction/SelloutSmsService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mPhoneStatelistener2:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/mms/transaction/SelloutSmsService$3;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SelloutSmsService$3;-><init>(Lcom/android/mms/transaction/SelloutSmsService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mSelloutSmsReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SelloutSmsService;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/SelloutSmsService;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SelloutSmsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SelloutSmsService;->isSelloutNetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SelloutSmsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SelloutSmsService;->isSelloutSim(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SelloutSmsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/android/mms/transaction/SelloutSmsService;->sMsgSendingAttempt:I

    return v0
.end method

.method static synthetic access$408()I
    .locals 2

    sget v0, Lcom/android/mms/transaction/SelloutSmsService;->sMsgSendingAttempt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/mms/transaction/SelloutSmsService;->sMsgSendingAttempt:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SelloutSmsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SelloutSmsService;->sendSelloutSMS(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SelloutSmsService;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/SelloutSmsService;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mServiceStartId:I

    return v0
.end method

.method private isSelloutNetwork(I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x1

    const-string v0, ""

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_d

    const-string v2, "SelloutSmsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSelloutNetwork subscription : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", operator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ZTO"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSSMSOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "72406"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_0

    const-string v2, "72410"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_0

    const-string v2, "72411"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_0

    const-string v2, "72423"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    :cond_0
    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_VIVO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    iput-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "72402"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_3

    const-string v2, "72403"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_3

    const-string v2, "72404"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_4

    :cond_3
    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_TIM:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    iput-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    goto :goto_1

    :cond_4
    const-string v2, "72405"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_5

    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_CLARO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    iput-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    goto :goto_1

    :cond_5
    const-string v2, "72431"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_6

    const-string v2, "72416"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_6

    const-string v2, "72424"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_7

    :cond_6
    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_OI:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    iput-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_MAX:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    iput-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    const-string v2, "ARO"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSSMSOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "72207"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_9

    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_MOVISTAR:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    iput-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    goto :goto_1

    :cond_9
    const-string v2, "72231"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_a

    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_CLARO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    iput-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    goto :goto_1

    :cond_a
    const-string v2, "72234"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_b

    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_PERSONAL:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    iput-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    goto/16 :goto_1

    :cond_b
    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_MAX:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    iput-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_c
    sget-object v2, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_MAX:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    iput-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_d
    const-string v2, "SelloutSmsService"

    const-string v3, "isSelloutNetwork operator is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private isSelloutSim(I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x1

    const-string v0, ""

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_c

    const-string v2, "SelloutSmsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSelloutSim subscription : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", operator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ZTO"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSSMSOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "72406"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_0

    const-string v2, "72410"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_0

    const-string v2, "72411"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_0

    const-string v2, "72423"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "72402"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_3

    const-string v2, "72403"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_3

    const-string v2, "72404"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "72405"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const-string v2, "72431"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_6

    const-string v2, "72416"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v5, :cond_6

    const-string v2, "72424"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_7

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    const-string v2, "ARO"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSSMSOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "72207"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_9

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    const-string v2, "72231"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    goto :goto_1

    :cond_c
    const-string v2, "SelloutSmsService"

    const-string v3, "isSelloutSim operator is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private sendSelloutSMS(I)V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SelloutSmsService;->createMessage()Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    iget-object v5, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    sget-object v8, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_VIVO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    if-eq v5, v8, :cond_0

    iget-object v5, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    sget-object v8, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_TIM:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    if-eq v5, v8, :cond_0

    iget-object v5, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    sget-object v8, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_CLARO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    if-eq v5, v8, :cond_0

    iget-object v5, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    sget-object v8, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_BR_OI:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    if-ne v5, v8, :cond_2

    :cond_0
    const-string v1, "28555"

    :cond_1
    :goto_0
    const-string v5, "SelloutSmsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendSelloutSMS serverNumber : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SMS_SENT"

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "SimID"

    invoke-virtual {v7, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v10, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/SelloutSmsService;->mSelloutSmsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v8}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/android/mms/transaction/SelloutSmsService;->sellout_sms_on_progress:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const-string v2, "SelloutSmsService"

    const-string v5, "sendSelloutSMS sendTextMessage"

    invoke-static {v2, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    sget-object v8, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_MOVISTAR:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    if-eq v5, v8, :cond_3

    iget-object v5, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    sget-object v8, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_CLARO:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    if-eq v5, v8, :cond_3

    iget-object v5, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    sget-object v8, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_AR_PERSONAL:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    if-ne v5, v8, :cond_4

    :cond_3
    const-string v1, "22511"

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/mms/transaction/SelloutSmsService;->sellout_network:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    sget-object v8, Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;->SMS_SELLOUT_NETWORK_TEST_QC:Lcom/android/mms/transaction/SelloutSmsService$SelloutNetworkId;

    if-ne v5, v8, :cond_1

    const-string v1, "+821080004618"

    goto :goto_0
.end method


# virtual methods
.method public createMessage()Ljava/lang/String;
    .locals 8

    iget-object v5, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/mms/transaction/SelloutSmsService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getSsmsInfo(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "product_code"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "product_info"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SelloutSmsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createMessage message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SelloutSmsService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SelloutSmsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SelloutSmsService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/SelloutSmsService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SelloutSmsService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/SelloutSmsService;->mServiceHandler:Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SelloutSmsService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mSelloutSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SelloutSmsService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/SelloutSmsService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SelloutSmsService;->mPhoneStatelistener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    iput p2, p0, Lcom/android/mms/transaction/SelloutSmsService;->mServiceStartId:I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/SelloutSmsService;->mServiceHandler:Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/mms/transaction/SelloutSmsService;->mServiceHandler:Lcom/android/mms/transaction/SelloutSmsService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
