.class public Lcom/android/mms/transaction/SimChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimChangeReceiver.java"


# static fields
.field private static final ACTION_AIRPLANE_MODE:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field private static final ACTION_SIM_ICCID_CHANGED:Ljava/lang/String; = "com.android.action.SIM_ICCID_CHANGED"

.field private static mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "CMAS/SimChangeReceiver"

    iput-object v0, p0, Lcom/android/mms/transaction/SimChangeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SimChangeReceiver;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/transaction/SimChangeReceiver;->isOperatorChanged()Z

    move-result v0

    return v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isOperatorChanged()Z
    .locals 6

    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v1, :cond_1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v3, "CMAS/SimChangeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOperatorChanged :  return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setOperatorNumeric(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCmasSettings(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "#cmas#type##extreme#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "#cmas#type##severe#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "#cmas#type##amber#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "#cmas#type##exercise#enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/transaction/SimChangeReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SimChangeReceiver$1;-><init>(Lcom/android/mms/transaction/SimChangeReceiver;)V

    sput-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    :cond_0
    sget-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/mms/transaction/SimChangeReceiver;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseAnotherCMASApp()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    const-string v0, "com.android.action.SIM_ICCID_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string v0, "CMAS/SimChangeReceiver"

    const-string v1, "SIMCard was changed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SimChangeReceiver;->resetCmasSettings(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CMAS/SimChangeReceiver"

    const-string v1, "AIRPLANE MODE CHANGED"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/mms/transaction/SimChangeReceiver;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CMAS/SimChangeReceiver"

    const-string v1, "AIRPLANE MODE ON"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "CMAS/SimChangeReceiver"

    const-string v1, "AIRPLANE MODE OFF"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/ui/ChannelUtils;->resetCMASSettings()V

    goto :goto_0
.end method
