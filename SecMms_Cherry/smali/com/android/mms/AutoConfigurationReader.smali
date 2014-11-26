.class public Lcom/android/mms/AutoConfigurationReader;
.super Ljava/lang/Object;
.source "AutoConfigurationReader.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.autoconfigurationprovider"

.field public static final AUTO_CONFIGURATION_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "Mms/AutoConfigurationReader"

.field protected static configurationCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/AutoConfigurationReader;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p0    # Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/mms/AutoConfigurationReader;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "Mms/AutoConfigurationReader"

    const-string v3, "Error while parsing integer in parseBoolean() - NumberFormatException"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "Mms/AutoConfigurationReader"

    const-string v3, "getIntValue: String value used as Boolean is null. Returning -1 instead."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static getIntValue(Ljava/lang/String;)I
    .locals 5
    .param p0    # Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/android/mms/AutoConfigurationReader;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "Mms/AutoConfigurationReader"

    const-string v4, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "Mms/AutoConfigurationReader"

    const-string v4, "getIntValue: String value used as integer is null. Returning -1 instead."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/mms/AutoConfigurationReader;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    const-class v1, Lcom/android/mms/AutoConfigurationReader;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/mms/AutoConfigurationReader;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mms/AutoConfigurationReader"

    const-string v3, "AutoConfigurationReader is not Ready"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/AutoConfigurationReader;->init(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    if-nez v2, :cond_1

    const-string v2, "Mms/AutoConfigurationReader"

    const-string v3, "configurationCache is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    const-string v2, "Mms/AutoConfigurationReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Z
    .locals 8
    .param p0    # Landroid/content/Context;

    const-class v7, Lcom/android/mms/AutoConfigurationReader;

    monitor-enter v7

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    const-string v2, "*"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms/AutoConfigurationReader"

    const-string v1, "AutoConfigurationReader init : query"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "root/application/1/apn/rcseonlyapn"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/apn/enablercseswitch"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/appauth/authtype"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/appauth/realm"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/appauth/username"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/appauth/userpwd"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/capdiscovery/pollingperiod"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/capdiscovery/capinfoexpiry"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/capdiscovery/presencedisc"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/capdiscovery/ext/joynmsgcapvalidity"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/conrefs/0"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/conrefs/1"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/favlink/autma"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/icsi_list/0/icsi"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/icsi_list/0/icsi_resource_allocation_mode"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/appid"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/name"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/appref"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/pdp_contextoperpref"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/timer_t1"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/timer_t2"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/timer_t4"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/private_user_identity"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/home_network_domain_name"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/voice_domain_preference_e_utran"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/sms_over_ip_networks_indication"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/keep_alive_enabled"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/voice_domain_preference_utran"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/mobility_management_ims_voice"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/regretrybasetime"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/regretrymaxtime"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/ext/naturlfmt"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/ext/inturlfmt"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/ext/q-value"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/lbo_p-cscf_address/0/address"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/lbo_p-cscf_address/0/addresstype"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/msg/title"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/msg/message"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/msg/accept_btn"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/msg/reject_btn"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/other/enduserconfreqid"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/other/deviceid"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/other/uuid_value"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/phonecontext_list/0/phonecontext"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/phonecontext_list/0/public_user_identity/0"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/phonecontext_list/0/public_user_identity/1"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/usepresence"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/presenceprfl"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/availabilityauth"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/iconmaxsize"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/notemaxsize"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/publishtimer"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/client-obj-datalimit"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/content-serveruri"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/source-throttlepublish"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/max-number-ofsubscriptions-inpresence-list"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/service-uritemplate"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/public_user_identity_list/0/public_user_identity"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/0/public_user_identity_list/1/public_user_identity"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/ext/secondarydevicepar/voicecall"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/ext/secondarydevicepar/chat"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/ext/secondarydevicepar/sendsms"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/ext/secondarydevicepar/filetransfer"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/ext/secondarydevicepar/videoshare"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/ext/secondarydevicepar/imageshare"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/servcappresentity/watcherfetchauth"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/servcapwatch/fetchauth"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/presence/servcapwatch/contactcappresaut"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/other/transportproto/pssignalling"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/other/transportproto/psmedia"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/other/transportproto/psrtmedia"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/other/transportproto/wifisignalling"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/other/transportproto/wifimedia"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/other/transportproto/wifirtmedia"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/vers/version"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/vers/validity"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/xdms/revoketimer"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/xdms/xcaprooturi"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/xdms/xcapauthenticationusername"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/xdms/xcapauthenticationsecret"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/xdms/xcapauthenticationtype"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/ftwarnsize"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/maxsizefiletr"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/ftcapalwayson"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/autaccept"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/imcapalwayson"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/imwarnsf"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/imsessionstart"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/chatauth"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/smsfallbackauth"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/autacceptgroupchat"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/maxsize1to1"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/maxsize1toM"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/timeridle"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/pres-srv-cap"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/deferred-msg-func-uri"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/max_adhoc_group_size"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/conf-fcty-uri"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/ftautaccept"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/im/exploder-uri"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/ext/maxtimevideoshare"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/ext/maxsizeimageshare"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/other/warnsizeimageshare"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/serviceproviderext/joyn/messagingdeliverytimeout"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/serviceproviderext/joyn/messagingfthttpcapalwayson"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "root/application/1/serviceproviderext/joyn/uxmessagingux"

    sget-object v1, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-static {v6, v0, v1}, Lcom/android/mms/AutoConfigurationReader;->putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    if-eqz v6, :cond_0

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    monitor-exit v7

    return v0

    :cond_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v0, "Mms/AutoConfigurationReader"

    const-string v1, "AutoConfigurationReader init : false"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized isReady()Z
    .locals 3

    const/4 v0, 0x0

    const-class v1, Lcom/android/mms/AutoConfigurationReader;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/mms/AutoConfigurationReader;->configurationCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static putValue(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p0    # Landroid/database/Cursor;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v2, "Mms/AutoConfigurationReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoConfigurationReader putValue :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Mms/AutoConfigurationReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoConfigurationReader configurationValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
