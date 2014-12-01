.class public Lcom/android/phone/SettingSearchManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingSearchManagerReceiver.java"


# static fields
.field private static final SETTINGINFO_URI:Landroid/net/Uri;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.providers.settingsearch/searchinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SettingSearchManagerReceiver;->SETTINGINFO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "SettingSearchManagerReceiver"

    iput-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    return-void
.end method

.method private addSearchInfoDB()V
    .locals 2

    const-string v0, "SettingSearchManagerReceiver"

    const-string v1, "addSearchInfoDB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/SettingSearchManagerReceiver;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SettingSearchManagerReceiver"

    const-string v1, "addSearchInfoDB_NetworkSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_NetworkSettings()V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->endInsert()V

    return-void
.end method

.method private addSearchInfoDB_NetworkSettings()V
    .locals 8

    const v7, 0x7f09004f

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "mobile_network_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "button_data_enabled_key"

    const v1, 0x7f0909f6

    const v2, 0x7f0909f7

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_0
    :goto_0
    const-string v0, "usa_spr_roaming_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "setting_search_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "global_data_roaming_access_key"

    const v1, 0x7f090701

    const v2, 0x7f090703

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_1
    :goto_1
    const-string v0, "ctc_4g_single_data"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "button_enable_4g_single_data_key"

    const v1, 0x7f090a56

    const v2, 0x7f090a57

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_2
    const-string v0, "feature_cdma_us"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "cdma_apn_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "button_apn_key"

    invoke-direct {p0, v0, v7, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_3
    :goto_2
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f0909f2

    const v2, 0x7f0909f3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_4
    :goto_3
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "button_carrier_sel_key"

    const v1, 0x7f0909f4

    const v2, 0x7f0909f5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_5
    :goto_4
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f0909f8

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_6
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f090050

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_7
    return-void

    :cond_8
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "button_data_enabled_key"

    const v1, 0x7f090529

    const v2, 0x7f0900b7

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "national_roaming_mode_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "button_roaming_key"

    const v1, 0x7f0900b8

    const v2, 0x7f0900b9

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "button_roaming_key"

    const v1, 0x7f0900b8

    const v2, 0x7f0900b9

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "button_apn_key"

    invoke-direct {p0, v0, v7, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_2

    :cond_c
    const-string v0, "setting_search_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "network_mode_cdma_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const-string v0, "preferred_network_mode_key"

    const v1, 0x7f0900a0

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_3

    :cond_e
    const-string v0, "network_mode_list_kdi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "japan_system_select_key"

    const v1, 0x7f090a73

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_3

    :cond_f
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f0900a0

    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_3

    :cond_10
    const-string v0, "feature_cdma_us"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "button_carrier_sel_key"

    const v1, 0x7f090053

    const v2, 0x7f09009b

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_4

    :cond_11
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "button_carrier_sel_key"

    const v1, 0x7f090053

    const v2, 0x7f09009b

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_4
.end method

.method private addSearchInfoDBforTablet()V
    .locals 2

    const-string v0, "SettingSearchManagerReceiver"

    const-string v1, "addSearchInfoDB for Tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_NetworkSettings()V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->endInsert()V

    return-void
.end method

.method private endInsert()V
    .locals 3

    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "endInsert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.FINISH_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private putValues(Ljava/lang/String;III)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "id_key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "title_res_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "summary"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "summary_res_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "icon_res_id"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "menu_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "package_name"

    const-string v3, "com.android.phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/SettingSearchManagerReceiver;->SETTINGINFO_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SettingSearchManagerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putValues : exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    if-nez p2, :cond_1

    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "onReceive - intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "The device does not support Voice call..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingSearchManagerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.settings.INSERT_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.settings.INSERT_SEARCHDB_VER_TWO_EXTRA_APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDBforTablet()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB()V

    goto :goto_0
.end method
