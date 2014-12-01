.class public Lcom/sec/epdg/EpdgContentReader;
.super Ljava/lang/Object;
.source "EpdgContentReader.java"


# static fields
.field private static final COLUMN_ALWAYSON_APNTYPE:Ljava/lang/String; = "alwayson_apntype"

.field private static final COLUMN_ALWAYS_ON_APN_RETRY_ENABLED:Ljava/lang/String; = "retry_enabled_for_always_on_apn"

.field private static final COLUMN_APN:Ljava/lang/String; = "apnname"

.field private static final COLUMN_ATTACH_PDN:Ljava/lang/String; = "attach_pdn"

.field private static final COLUMN_AUTH_TYPE:Ljava/lang/String; = "authtype"

.field private static final COLUMN_BROADCAST_HO_RESULT:Ljava/lang/String; = "broadcast_ho_result"

.field private static final COLUMN_CONN_NAME:Ljava/lang/String; = "connname"

.field private static final COLUMN_DYNAMIC_FQDN_ENABLED:Ljava/lang/String; = "dynamic_fqdn"

.field private static final COLUMN_EPDG_SERVER_IP:Ljava/lang/String; = "epdgserverip"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_IDI_IMSI:Ljava/lang/String; = "idiimsi"

.field private static final COLUMN_IDI_MAC:Ljava/lang/String; = "idimac"

.field private static final COLUMN_IKE_CONNECTION_TIMEOUT:Ljava/lang/String; = "ikeconnectiontimeout"

.field private static final COLUMN_IKE_DPD_TIMEOUT:Ljava/lang/String; = "ikedpdtimeout"

.field private static final COLUMN_IKE_EAP_TYPE:Ljava/lang/String; = "ikeeaptype"

.field private static final COLUMN_IKE_ENCRYPTION:Ljava/lang/String; = "ikeencryption"

.field private static final COLUMN_IKE_GROUP:Ljava/lang/String; = "ikegroup"

.field private static final COLUMN_IKE_INTEGRITY:Ljava/lang/String; = "ikeintegrity"

.field private static final COLUMN_IKE_LIFE:Ljava/lang/String; = "ikelife"

.field private static final COLUMN_IKE_NAT_VALUE:Ljava/lang/String; = "ikenatvalue"

.field private static final COLUMN_IKE_VERSION:Ljava/lang/String; = "ikeversion"

.field private static final COLUMN_IKE_VIRTUAL_ADAPTER_NAME:Ljava/lang/String; = "ikevirtualadaptername"

.field private static final COLUMN_IKE_WINDOW_SIZE:Ljava/lang/String; = "ikewindowsize"

.field private static final COLUMN_IPSEC_ENCRYPTION:Ljava/lang/String; = "ipsecencryption"

.field private static final COLUMN_IPSEC_GROUP:Ljava/lang/String; = "ipsecgroup"

.field private static final COLUMN_IPSEC_INTEGRITY:Ljava/lang/String; = "ipsecintegrity"

.field private static final COLUMN_IPSEC_LIFETYPE:Ljava/lang/String; = "ipseclifetime"

.field private static final COLUMN_IPSEC_LIFE_VALUE:Ljava/lang/String; = "ipseclifevalue"

.field private static final COLUMN_IS_THROTTLE_ENABLED:Ljava/lang/String; = "is_throttle_enabled"

.field private static final COLUMN_KEEP_ALIVE_TIMER:Ljava/lang/String; = "internet_pdn_keep_alive_timer"

.field private static final COLUMN_ON_DEMAND_PDN_HANDOFF:Ljava/lang/String; = "ondemand_pdn_handoff"

.field private static final COLUMN_OWN_IDENTITY:Ljava/lang/String; = "ownidentity"

.field private static final COLUMN_OWN_URI_TYPE:Ljava/lang/String; = "ownuritype"

.field private static final COLUMN_PERIODIC_DPD_TIMER:Ljava/lang/String; = "periodicdpdtimer"

.field private static final COLUMN_PFS:Ljava/lang/String; = "pfs"

.field private static final COLUMN_REMOTE_IDENTITY:Ljava/lang/String; = "remoteidentity"

.field private static final COLUMN_REMOTE_URI_TYPE:Ljava/lang/String; = "remoteuritype"

.field private static final COLUMN_SMARTWIFI_LEVEL_WIFI:Ljava/lang/String; = "smartwifilevelwifi"

.field private static final COLUMN_SMARTWIFI_PKT_LOSS_PERCENT:Ljava/lang/String; = "smartpktlosspercent"

.field private static final COLUMN_SMARTWIFI_TIMER:Ljava/lang/String; = "smartwifitimer"

.field private static final COLUMN_SMART_WIFI_ANS_INTEGRATION:Ljava/lang/String; = "smart_wifi_ans_integration"

.field private static final COLUMN_SMART_WIFI_RTCP_INTEGRATION:Ljava/lang/String; = "smart_wifi_rtcp_integration"

.field private static final COLUMN_SUBNET_TYPE:Ljava/lang/String; = "subnettype"

.field private static final COLUMN_SYS_SEL_TIMER:Ljava/lang/String; = "sysseltimer"

.field private static final COLUMN_TUNNEL_TYPE:Ljava/lang/String; = "tunneltype"

.field private static final COLUMN_USER_AUTH_TYPE:Ljava/lang/String; = "userauthtype"

.field private static final COLUMN_VENDOR_ATTRIBUTE:Ljava/lang/String; = "vendorattribute"

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/todo"

.field private static final TABLE_IWLANSETTINGS:Ljava/lang/String; = "iwlansetting"

.field private static final TAG:Ljava/lang/String; = "[DBREADER]"

.field private static mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;


# instance fields
.field colName:Ljava/lang/String;

.field private epdgSettings:Lcom/sec/epdg/EpdgSettings;

.field private iWlanApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->iWlanApns:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/epdg/EpdgSettings;->getInstance()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->epdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgContentReader;
    .locals 2

    const-class v1, Lcom/sec/epdg/EpdgContentReader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/epdg/EpdgContentReader;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgContentReader;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createIWlanApnList(Landroid/content/Context;)V
    .locals 64

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v61, Landroid/net/Uri$Builder;

    invoke-direct/range {v61 .. v61}, Landroid/net/Uri$Builder;-><init>()V

    const-string v62, "content"

    invoke-virtual/range {v61 .. v62}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v61

    const-string v62, "iwlansettings"

    invoke-virtual/range {v61 .. v62}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v61

    const-string/jumbo v62, "todos"

    invoke-virtual/range {v61 .. v62}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/16 v61, 0x1d

    move/from16 v0, v61

    new-array v4, v0, [Ljava/lang/String;

    const/16 v61, 0x0

    const-string v62, "connname"

    aput-object v62, v4, v61

    const/16 v61, 0x1

    const-string v62, "apnname"

    aput-object v62, v4, v61

    const/16 v61, 0x2

    const-string v62, "authtype"

    aput-object v62, v4, v61

    const/16 v61, 0x3

    const-string/jumbo v62, "subnettype"

    aput-object v62, v4, v61

    const/16 v61, 0x4

    const-string/jumbo v62, "userauthtype"

    aput-object v62, v4, v61

    const/16 v61, 0x5

    const-string/jumbo v62, "pfs"

    aput-object v62, v4, v61

    const/16 v61, 0x6

    const-string v62, "ownuritype"

    aput-object v62, v4, v61

    const/16 v61, 0x7

    const-string v62, "ownidentity"

    aput-object v62, v4, v61

    const/16 v61, 0x8

    const-string/jumbo v62, "remoteuritype"

    aput-object v62, v4, v61

    const/16 v61, 0x9

    const-string/jumbo v62, "remoteidentity"

    aput-object v62, v4, v61

    const/16 v61, 0xa

    const-string/jumbo v62, "tunneltype"

    aput-object v62, v4, v61

    const/16 v61, 0xb

    const-string v62, "ipsecencryption"

    aput-object v62, v4, v61

    const/16 v61, 0xc

    const-string v62, "ipsecintegrity"

    aput-object v62, v4, v61

    const/16 v61, 0xd

    const-string v62, "ipsecgroup"

    aput-object v62, v4, v61

    const/16 v61, 0xe

    const-string v62, "ipseclifetime"

    aput-object v62, v4, v61

    const/16 v61, 0xf

    const-string v62, "ipseclifevalue"

    aput-object v62, v4, v61

    const/16 v61, 0x10

    const-string v62, "ikeversion"

    aput-object v62, v4, v61

    const/16 v61, 0x11

    const-string v62, "ikeencryption"

    aput-object v62, v4, v61

    const/16 v61, 0x12

    const-string v62, "ikeintegrity"

    aput-object v62, v4, v61

    const/16 v61, 0x13

    const-string v62, "ikegroup"

    aput-object v62, v4, v61

    const/16 v61, 0x14

    const-string v62, "ikeeaptype"

    aput-object v62, v4, v61

    const/16 v61, 0x15

    const-string v62, "ikelife"

    aput-object v62, v4, v61

    const/16 v61, 0x16

    const-string v62, "ikewindowsize"

    aput-object v62, v4, v61

    const/16 v61, 0x17

    const-string v62, "ikedpdtimeout"

    aput-object v62, v4, v61

    const/16 v61, 0x18

    const-string v62, "ikeconnectiontimeout"

    aput-object v62, v4, v61

    const/16 v61, 0x19

    const-string v62, "ikenatvalue"

    aput-object v62, v4, v61

    const/16 v61, 0x1a

    const-string v62, "ikevirtualadaptername"

    aput-object v62, v4, v61

    const/16 v61, 0x1b

    const-string/jumbo v62, "vendorattribute"

    aput-object v62, v4, v61

    const/16 v61, 0x1c

    const-string/jumbo v62, "periodicdpdtimer"

    aput-object v62, v4, v61

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v54

    if-eqz v54, :cond_7e

    :try_start_1
    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->getCount()I

    move-result v61

    if-lez v61, :cond_7e

    :goto_0
    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->moveToNext()Z

    move-result v61

    if-eqz v61, :cond_80

    const/16 v53, 0x0

    const-string v61, "connname"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v61, "userauthtype"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    const-string/jumbo v61, "true"

    move-object/from16 v0, v61

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_11

    sget-object v6, Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;->ENABLED:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    :cond_0
    :goto_1
    const/4 v7, 0x0

    const-string/jumbo v61, "pfs"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    const-string/jumbo v61, "true"

    move-object/from16 v0, v61

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_12

    sget-object v7, Lcom/sec/epdg/IWlanEnum$PfsState;->ENABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    :cond_1
    :goto_2
    const/4 v8, 0x0

    const-string/jumbo v61, "subnettype"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    const-string v61, "IPV4"

    move-object/from16 v0, v52

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_13

    sget-object v8, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    :goto_3
    const/4 v9, 0x0

    const-string v61, "ownuritype"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    const-string v61, "IPV4_ADDR"

    move-object/from16 v0, v55

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_15

    sget-object v9, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    :cond_2
    :goto_4
    const-string v61, "ownidentity"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string/jumbo v61, "remoteuritype"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    const-string v61, "IPV4_ADDR"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1a

    sget-object v11, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    :cond_3
    :goto_5
    const-string/jumbo v61, "remoteidentity"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v61, "apnname"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const-string v61, "authtype"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    const-string v61, "EAP"

    move-object/from16 v0, v46

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1f

    sget-object v14, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    :cond_4
    :goto_6
    const/4 v15, 0x0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataPathUsingTcEnabled()Ljava/lang/Boolean;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v61

    if-nez v61, :cond_21

    sget-object v15, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    :goto_7
    const/16 v16, 0x0

    const-string/jumbo v61, "tunneltype"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v60

    const-string v61, "IPSEC_RAC"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_22

    sget-object v16, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->IPSEC_RAC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    :cond_5
    :goto_8
    const/16 v17, 0x0

    const-string v61, "ipsecencryption"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    const-string v61, "IPSEC_ENCRYPTION_3DES_CBC"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_23

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    :cond_6
    :goto_9
    const/16 v18, 0x0

    const-string v61, "ipsecintegrity"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    const-string v61, "IPSEC_INTEGRITY_HMAC_MD5_96"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_30

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    :cond_7
    :goto_a
    const/16 v19, 0x0

    const-string v61, "ipsecgroup"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    const-string v61, "IPSEC_GROUP_MODP_768"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_3d

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    :cond_8
    :goto_b
    const/16 v20, 0x0

    const-string v61, "ipseclifetime"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    const-string v61, "IPSEC_LIFE_TYPE_SECONDS"

    move-object/from16 v0, v50

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_4e

    sget-object v20, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    :cond_9
    :goto_c
    const-string v61, "ipseclifevalue"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x0

    const-string v61, "ikeversion"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    const-string v61, "IKE_VERSION_1"

    move-object/from16 v0, v43

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_4f

    sget-object v22, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_1:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    :cond_a
    :goto_d
    const/16 v23, 0x0

    const-string v61, "ikeencryption"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    const-string v61, "IKE_ENCRYPTION_3DES_CBC"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_50

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    :cond_b
    :goto_e
    const/16 v24, 0x0

    const-string v61, "ikeintegrity"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    const-string v61, "IKE_INTEGRITY_HMAC_MD5_96"

    move-object/from16 v0, v40

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_5d

    sget-object v24, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    :cond_c
    :goto_f
    const/16 v25, 0x0

    const-string v61, "ikegroup"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    const-string v61, "IKE_GROUP_MODP_768"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_66

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    :cond_d
    :goto_10
    const-string v61, "ikelife"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const-string v61, "ikewindowsize"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    const-string v61, "ikeconnectiontimeout"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    const-string v61, "ikedpdtimeout"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x0

    const-string v61, "ikeeaptype"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    const-string v61, "EAP_METHOD_MD5_CHALLENGE"

    move-object/from16 v0, v35

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_78

    sget-object v30, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    :cond_e
    :goto_11
    const-string v61, "ikenatvalue"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/16 v32, 0x0

    const-string/jumbo v61, "vendorattribute"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    const-string v61, "NONE"

    move-object/from16 v0, v56

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_7b

    sget-object v32, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    :cond_f
    :goto_12
    const-string/jumbo v61, "periodicdpdtimer"

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    invoke-static/range {v5 .. v33}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanApnSettingInstance(Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/IWlanEnum$PfsState;Lcom/sec/epdg/IWlanEnum$IPSecIpType;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/IWlanEnum$AdapterConf;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;ILcom/sec/epdg/IWlanEnum$PcscfConf;I)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgContentReader;->iWlanApns:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v61, "[DBREADER]"

    const-string v62, "iwlanapn added successfully"

    invoke-static/range {v61 .. v62}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v34

    :try_start_2
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v61, "[DBREADER]"

    const-string v62, "iwlanapn settings corrupted"

    invoke-static/range {v61 .. v62}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v54, :cond_10

    :try_start_3
    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_13
    const/16 v54, 0x0

    :cond_10
    monitor-exit p0

    return-void

    :cond_11
    :try_start_4
    const-string v61, "false"

    move-object/from16 v0, v61

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_0

    sget-object v6, Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;->DISABLED:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    goto/16 :goto_1

    :cond_12
    const-string v61, "false"

    move-object/from16 v0, v61

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_1

    sget-object v7, Lcom/sec/epdg/IWlanEnum$PfsState;->DISABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    goto/16 :goto_2

    :cond_13
    const-string v61, "IPV6"

    move-object/from16 v0, v52

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_14

    sget-object v8, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto/16 :goto_3

    :cond_14
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto/16 :goto_3

    :cond_15
    const-string v61, "IPV6_ADDR"

    move-object/from16 v0, v55

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_16

    sget-object v9, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    :cond_16
    const-string v61, "FQDN"

    move-object/from16 v0, v55

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_17

    sget-object v9, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    :cond_17
    const-string v61, "USER_FQDN"

    move-object/from16 v0, v55

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_18

    sget-object v9, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    :cond_18
    const-string v61, "DN"

    move-object/from16 v0, v55

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_19

    sget-object v9, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    :cond_19
    const-string v61, "KEY_ID"

    move-object/from16 v0, v55

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_2

    sget-object v9, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    :cond_1a
    const-string v61, "IPV6_ADDR"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1b

    sget-object v11, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_5

    :cond_1b
    const-string v61, "FQDN"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1c

    sget-object v11, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_5

    :cond_1c
    const-string v61, "USER_FQDN"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1d

    sget-object v11, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_5

    :cond_1d
    const-string v61, "DN"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1e

    sget-object v11, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_5

    :cond_1e
    const-string v61, "KEY_ID"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_3

    sget-object v11, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_5

    :cond_1f
    const-string v61, "Pre Shared"

    move-object/from16 v0, v46

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_20

    sget-object v14, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto/16 :goto_6

    :cond_20
    const-string v61, "Public Key"

    move-object/from16 v0, v46

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_4

    sget-object v14, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto/16 :goto_6

    :cond_21
    sget-object v15, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    goto/16 :goto_7

    :cond_22
    const-string v61, "L2TP_OVER_IPSEC"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_5

    sget-object v16, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->L2TP_OVER_IPSEC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    goto/16 :goto_8

    :cond_23
    const-string v61, "IPSEC_ENCRYPTION_AES_CBC_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_24

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_24
    const-string v61, "IPSEC_ENCRYPTION_AES_CBC_192"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_25

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_25
    const-string v61, "IPSEC_ENCRYPTION_AES_CBC_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_26

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_26
    const-string v61, "IPSEC_ENCRYPTION_AES_CTR_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_27

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_27
    const-string v61, "IPSEC_ENCRYPTION_AES_CTR_192"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_28

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_28
    const-string v61, "IPSEC_ENCRYPTION_AES_CTR_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_29

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_29
    const-string v61, "IPSEC_ENCRYPTION_AES_GCM_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_2a

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_2a
    const-string v61, "IPSEC_ENCRYPTION_AES_GCM_192"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_2b

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_2b
    const-string v61, "IPSEC_ENCRYPTION_AES_GCM_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_2c

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_2c
    const-string v61, "IPSEC_ENCRYPTION_BASIC"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_2d

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_2d
    const-string v61, "IPSEC_ENCRYPTION_ANY"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_2e

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_2e
    const-string v61, "IPSEC_ENCRYPTION_SUITE_B_GCM_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_2f

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_2f
    const-string v61, "IPSEC_ENCRYPTION_SUITE_B_GCM_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_6

    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_9

    :cond_30
    const-string v61, "IPSEC_INTEGRITY_HMAC_SHA1_96"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_31

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_31
    const-string v61, "IPSEC_INTEGRITY_AES_XCBC_MAC_96"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_32

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_32
    const-string v61, "IPSEC_INTEGRITY_HMAC_SHA_256_128"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_33

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_33
    const-string v61, "IPSEC_INTEGRITY_HMAC_SHA_384_192"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_34

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_34
    const-string v61, "IPSEC_INTEGRITY_HMAC_SHA_512_256"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_35

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_35
    const-string v61, "IPSEC_INTEGRITY_AES_GMAC_128"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_36

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_36
    const-string v61, "IPSEC_INTEGRITY_AES_GMAC_192"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_37

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_37
    const-string v61, "IPSEC_INTEGRITY_AES_GMAC_256"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_38

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_38
    const-string v61, "IPSEC_INTEGRITY_BASIC"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_39

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_39
    const-string v61, "IPSEC_INTEGRITY_ANY"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_3a

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_3a
    const-string v61, "IPSEC_INTEGRITY_NULL"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_3b

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_3b
    const-string v61, "IPSEC_INTEGRITY_SUITE_B_GCM_128"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_3c

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_3c
    const-string v61, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_7

    sget-object v18, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_a

    :cond_3d
    const-string v61, "IPSEC_GROUP_MODP_1024"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_3e

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_3e
    const-string v61, "IPSEC_GROUP_MODP_1536"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_3f

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_3f
    const-string v61, "IPSEC_GROUP_MODP_2048"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_40

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_40
    const-string v61, "IPSEC_GROUP_MODP_3072"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_41

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_41
    const-string v61, "IPSEC_GROUP_MODP_4096"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_42

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_42
    const-string v61, "IPSEC_GROUP_MODP_6144"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_43

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_43
    const-string v61, "IPSEC_GROUP_MODP_8192"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_44

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_44
    const-string v61, "IPSEC_GROUP_ECP_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_45

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_45
    const-string v61, "IPSEC_GROUP_ECP_384"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_46

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_46
    const-string v61, "IPSEC_GROUP_ECP_521"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_47

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_47
    const-string v61, "IPSEC_GROUP_MODP_1024_160"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_48

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_48
    const-string v61, "IPSEC_GROUP_MODP_2048_224"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_49

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_49
    const-string v61, "IPSEC_GROUP_MODP_2048_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_4a

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_4a
    const-string v61, "IPSEC_GROUP_ECP_192"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_4b

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_4b
    const-string v61, "IPSEC_GROUP_ECP_224"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_4c

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_4c
    const-string v61, "IPSEC_GROUP_ANY"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_4d

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_4d
    const-string v61, "IPSEC_GROUP_ANY_OR_NONE"

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_8

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_b

    :cond_4e
    const-string v61, "IPSEC_LIFE_TYPE_KILOBYTES"

    move-object/from16 v0, v50

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_9

    sget-object v20, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    goto/16 :goto_c

    :cond_4f
    const-string v61, "IKE_VERSION_2"

    move-object/from16 v0, v43

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_a

    sget-object v22, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    goto/16 :goto_d

    :cond_50
    const-string v61, "IKE_ENCRYPTION_AES_CBC_128"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_51

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_51
    const-string v61, "IKE_ENCRYPTION_AES_CBC_192"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_52

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_52
    const-string v61, "IKE_ENCRYPTION_AES_CBC_256"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_53

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_53
    const-string v61, "IKE_ENCRYPTION_AES_CTR_128"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_54

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_54
    const-string v61, "IKE_ENCRYPTION_AES_CTR_192"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_55

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_55
    const-string v61, "IKE_ENCRYPTION_AES_CTR_256"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_56

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_56
    const-string v61, "IKE_ENCRYPTION_AES_GCM_128"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_57

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_57
    const-string v61, "IKE_ENCRYPTION_AES_GCM_192"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_58

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_58
    const-string v61, "IKE_ENCRYPTION_AES_GCM_256"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_59

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_59
    const-string v61, "IKE_ENCRYPTION_BASIC"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_5a

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_5a
    const-string v61, "IKE_ENCRYPTION_ANY"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_5b

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_5b
    const-string v61, "IKE_ENCRYPTION_SUITE_B_GCM_128"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_5c

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_5c
    const-string v61, "IKE_ENCRYPTION_SUITE_B_GCM_256"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_b

    sget-object v23, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_e

    :cond_5d
    const-string v61, "IKE_INTEGRITY_HMAC_SHA1_96"

    move-object/from16 v0, v40

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_5e

    sget-object v24, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_f

    :cond_5e
    const-string v61, "IKE_INTEGRITY_AES_XCBC_MAC_96"

    move-object/from16 v0, v40

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_5f

    sget-object v24, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_f

    :cond_5f
    const-string v61, "IKE_INTEGRITY_HMAC_SHA_256_128"

    move-object/from16 v0, v40

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_60

    sget-object v24, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_f

    :cond_60
    const-string v61, "IKE_INTEGRITY_HMAC_SHA_384_192"

    move-object/from16 v0, v40

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_61

    sget-object v24, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_f

    :cond_61
    const-string v61, "IKE_INTEGRITY_HMAC_SHA_512_256"

    move-object/from16 v0, v40

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_62

    sget-object v24, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_f

    :cond_62
    const-string v61, "IKE_INTEGRITY_BASIC"

    move-object/from16 v0, v40

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_63

    sget-object v24, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_f

    :cond_63
    const-string v61, "IKE_INTEGRITY_ANY"

    move-object/from16 v0, v40

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_64

    sget-object v24, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_f

    :cond_64
    const-string v61, "IKE_INTEGRITY_SUITE_B_GCM_128"

    move-object/from16 v0, v40

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_65

    sget-object v24, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_f

    :cond_65
    const-string v61, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    move-object/from16 v0, v40

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_c

    sget-object v24, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_f

    :cond_66
    const-string v61, "IKE_GROUP_MODP_1024"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_67

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_67
    const-string v61, "IKE_GROUP_MODP_1536"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_68

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_68
    const-string v61, "IKE_GROUP_MODP_2048"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_69

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_69
    const-string v61, "IKE_GROUP_MODP_3072"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_6a

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_6a
    const-string v61, "IKE_GROUP_MODP_4096"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_6b

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_6b
    const-string v61, "IKE_GROUP_MODP_6144"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_6c

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_6c
    const-string v61, "IKE_GROUP_MODP_8192"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_6d

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_6d
    const-string v61, "IKE_GROUP_ECP_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_6e

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_6e
    const-string v61, "IKE_GROUP_ECP_384"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_6f

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_6f
    const-string v61, "IKE_GROUP_ECP_521"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_70

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_70
    const-string v61, "IKE_GROUP_MODP_1024_160"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_71

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_71
    const-string v61, "IKE_GROUP_MODP_2048_224"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_72

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_72
    const-string v61, "IKE_GROUP_MODP_2048_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_73

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_73
    const-string v61, "IKE_GROUP_ECP_192"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_74

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_74
    const-string v61, "IKE_GROUP_ECP_224"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_75

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_75
    const-string v61, "IKE_GROUP_ANY"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_76

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_76
    const-string v61, "IKE_GROUP_SUITE_B_GCM_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_77

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_77
    const-string v61, "IKE_GROUP_SUITE_B_GCM_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_d

    sget-object v25, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_10

    :cond_78
    const-string v61, "EAP_METHOD_SIM"

    move-object/from16 v0, v35

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_79

    sget-object v30, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_SIM:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_11

    :cond_79
    const-string v61, "EAP_METHOD_AKA"

    move-object/from16 v0, v35

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_7a

    sget-object v30, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_11

    :cond_7a
    const-string v61, "EAP_METHOD_MSCHAPV2"

    move-object/from16 v0, v35

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_e

    sget-object v30, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_11

    :cond_7b
    const-string v61, "P-CSCF-V4"

    move-object/from16 v0, v56

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_7c

    sget-object v32, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_12

    :cond_7c
    const-string v61, "P-CSCF-V6"

    move-object/from16 v0, v56

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_7d

    sget-object v32, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_12

    :cond_7d
    const-string v61, "P-CSCF-V4V6"

    move-object/from16 v0, v56

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_f

    sget-object v32, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_12

    :cond_7e
    new-instance v61, Ljava/lang/IllegalStateException;

    const-string v62, "iwlansettings - message cursor is null or entries returned <= 0"

    invoke-direct/range {v61 .. v62}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v61
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v34

    :try_start_5
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v61, "[DBREADER]"

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "caught:"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v54, :cond_10

    :try_start_6
    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_13

    :catchall_0
    move-exception v61

    monitor-exit p0

    throw v61

    :catchall_1
    move-exception v61

    if-eqz v54, :cond_7f

    :try_start_7
    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->close()V

    const/16 v54, 0x0

    :cond_7f
    throw v61

    :cond_80
    if-eqz v54, :cond_10

    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_13
.end method

.method public getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    iget-object v0, v0, Lcom/sec/epdg/EpdgContentReader;->epdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-object v0
.end method

.method public getIWlanApnList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    iget-object v0, v0, Lcom/sec/epdg/EpdgContentReader;->iWlanApns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized readEpdgSettings(Landroid/content/Context;)V
    .locals 41

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v38, Landroid/net/Uri$Builder;

    invoke-direct/range {v38 .. v38}, Landroid/net/Uri$Builder;-><init>()V

    const-string v39, "content"

    invoke-virtual/range {v38 .. v39}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v38

    const-string v39, "iwlansettings"

    invoke-virtual/range {v38 .. v39}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v38

    const-string/jumbo v39, "todos"

    invoke-virtual/range {v38 .. v39}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v38

    const-string v39, "epdgsettings"

    invoke-virtual/range {v38 .. v39}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/16 v38, 0x11

    move/from16 v0, v38

    new-array v4, v0, [Ljava/lang/String;

    const/16 v38, 0x0

    const-string/jumbo v39, "smartwifilevelwifi"

    aput-object v39, v4, v38

    const/16 v38, 0x1

    const-string/jumbo v39, "smartpktlosspercent"

    aput-object v39, v4, v38

    const/16 v38, 0x2

    const-string/jumbo v39, "sysseltimer"

    aput-object v39, v4, v38

    const/16 v38, 0x3

    const-string v39, "idimac"

    aput-object v39, v4, v38

    const/16 v38, 0x4

    const-string v39, "idiimsi"

    aput-object v39, v4, v38

    const/16 v38, 0x5

    const-string/jumbo v39, "retry_enabled_for_always_on_apn"

    aput-object v39, v4, v38

    const/16 v38, 0x6

    const-string/jumbo v39, "smartwifitimer"

    aput-object v39, v4, v38

    const/16 v38, 0x7

    const-string v39, "internet_pdn_keep_alive_timer"

    aput-object v39, v4, v38

    const/16 v38, 0x8

    const-string v39, "epdgserverip"

    aput-object v39, v4, v38

    const/16 v38, 0x9

    const-string v39, "dynamic_fqdn"

    aput-object v39, v4, v38

    const/16 v38, 0xa

    const-string/jumbo v39, "smart_wifi_ans_integration"

    aput-object v39, v4, v38

    const/16 v38, 0xb

    const-string/jumbo v39, "smart_wifi_rtcp_integration"

    aput-object v39, v4, v38

    const/16 v38, 0xc

    const-string v39, "broadcast_ho_result"

    aput-object v39, v4, v38

    const/16 v38, 0xd

    const-string v39, "attach_pdn"

    aput-object v39, v4, v38

    const/16 v38, 0xe

    const-string v39, "alwayson_apntype"

    aput-object v39, v4, v38

    const/16 v38, 0xf

    const-string v39, "ondemand_pdn_handoff"

    aput-object v39, v4, v38

    const/16 v38, 0x10

    const-string v39, "is_throttle_enabled"

    aput-object v39, v4, v38

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v23

    if-eqz v23, :cond_b

    :try_start_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v38

    if-lez v38, :cond_b

    :goto_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v38

    if-eqz v38, :cond_d

    const-string/jumbo v38, "smartwifilevelwifi"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v38, "smartpktlosspercent"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v38, "sysseltimer"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v38, "idimac"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v38, "idiimsi"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v38, "retry_enabled_for_always_on_apn"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    :goto_1
    const-string/jumbo v38, "smartwifitimer"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v38, "internet_pdn_keep_alive_timer"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v38, "epdgserverip"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v38, "dynamic_fqdn"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    const/4 v14, 0x1

    :goto_2
    const-string/jumbo v38, "smart_wifi_ans_integration"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_4

    const/4 v15, 0x1

    :goto_3
    const-string/jumbo v38, "smart_wifi_rtcp_integration"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_5

    const/16 v16, 0x1

    :goto_4
    const-string v38, "broadcast_ho_result"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    :goto_5
    const-string v38, "attach_pdn"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v38, "alwayson_apntype"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v38, "ondemand_pdn_handoff"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    const/16 v20, 0x1

    :goto_6
    const-string v38, "is_throttle_enabled"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_8

    const/16 v21, 0x1

    :goto_7
    invoke-static/range {v5 .. v21}, Lcom/sec/epdg/EpdgSettings;->getInstance(IIIIIZIILjava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;ZZ)Lcom/sec/epdg/EpdgSettings;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/epdg/EpdgContentReader;->epdgSettings:Lcom/sec/epdg/EpdgSettings;

    const-string v39, "[DBREADER]"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "epdgsettings read successfully :  Wifi Level : "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " Pkt Loss Percent : "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " Sys Sel Timer : "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " IDi MAC : "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v38

    if-eqz v38, :cond_9

    const-string/jumbo v38, "suppressed in user binary"

    :goto_8
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " IDi IMSI : "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v38

    if-eqz v38, :cond_a

    const-string/jumbo v38, "suppressed in user binary"

    :goto_9
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " Data retry enabled: "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " SmartWifi Timer : "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " Internet Keep-Alive Timer "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " EPDG Server IP "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v40

    if-eqz v40, :cond_0

    const-string v13, "Suppressed in user binary"

    :cond_0
    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " dynamic_fqdn "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " Smart WiFi ANS Integration "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " Smart WiFi RTCP Integration "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " Broadcast HO result "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " Attach PDN "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " alwaysOn Apn "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " Testing On demand PDN Handoff "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, " IsThrottlingEnabled: "

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v22

    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v38, "[DBREADER]"

    const-string v39, "epdg settings corrupted"

    invoke-static/range {v38 .. v39}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v23, :cond_1

    :try_start_3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_a
    const/16 v23, 0x0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_6

    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_7

    :cond_9
    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    goto/16 :goto_8

    :cond_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    goto/16 :goto_9

    :cond_b
    new-instance v38, Ljava/lang/IllegalStateException;

    const-string v39, "EpdgSettings - message cursor is null or entries returned <= 0"

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v38
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v22

    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v38, "[DBREADER]"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "caught:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v23, :cond_1

    :try_start_6
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v38

    monitor-exit p0

    throw v38

    :catchall_1
    move-exception v38

    if-eqz v23, :cond_c

    :try_start_7
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    const/16 v23, 0x0

    :cond_c
    throw v38

    :cond_d
    if-eqz v23, :cond_1

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a
.end method
