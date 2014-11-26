.class public Lcom/sec/epdg/IWlanApnSetting;
.super Ljava/lang/Object;
.source "IWlanApnSetting.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IWlanApnSetting$1;,
        Lcom/sec/epdg/IWlanApnSetting$IKeSetting;,
        Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IWlanSettingName:Ljava/lang/String;

.field private ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

.field private ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

.field private mApnType:Ljava/lang/String;

.field private mIkeVirtualAdapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

.field private mIpSecIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

.field private mIpSecUserAuthval:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

.field private mIpSecauthType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

.field private mIpsecOwnUri:Ljava/lang/String;

.field private mIpsecRemoteUri:Ljava/lang/String;

.field private mOwnUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field private mPeriodicDpdTimer:I

.field private mPfsval:Lcom/sec/epdg/IWlanEnum$PfsState;

.field private mRemoteUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field private pcscfattributes:Lcom/sec/epdg/IWlanEnum$PcscfConf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/epdg/IWlanApnSetting;->instances:Ljava/util/Map;

    const-string v0, "[IWLANAPNSETTING]"

    sput-object v0, Lcom/sec/epdg/IWlanApnSetting;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->pcscfattributes:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    new-instance v0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;-><init>(Lcom/sec/epdg/IWlanApnSetting;Lcom/sec/epdg/IWlanApnSetting$1;)V

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    new-instance v0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;-><init>(Lcom/sec/epdg/IWlanApnSetting;Lcom/sec/epdg/IWlanApnSetting$1;)V

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    return-void
.end method

.method public static declared-synchronized getIWlanApnSettingInstance(Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/IWlanEnum$PfsState;Lcom/sec/epdg/IWlanEnum$IPSecIpType;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/IWlanEnum$AdapterConf;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;ILcom/sec/epdg/IWlanEnum$PcscfConf;I)Lcom/sec/epdg/IWlanApnSetting;
    .locals 32
    .param p0    # Ljava/lang/String;
    .param p1    # Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;
    .param p2    # Lcom/sec/epdg/IWlanEnum$PfsState;
    .param p3    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .param p4    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p5    # Ljava/lang/String;
    .param p6    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .param p10    # Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .param p11    # Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .param p12    # Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .param p13    # Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .param p14    # Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .param p15    # Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .param p16    # I
    .param p17    # Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .param p18    # Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .param p19    # Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .param p20    # Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .param p21    # I
    .param p22    # I
    .param p23    # I
    .param p24    # I
    .param p25    # Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .param p26    # I
    .param p27    # Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .param p28    # I

    const-class v31, Lcom/sec/epdg/IWlanApnSetting;

    monitor-enter v31

    :try_start_0
    sget-object v2, Lcom/sec/epdg/IWlanApnSetting;->instances:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/IWlanApnSetting;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/epdg/IWlanApnSetting;

    invoke-direct {v1}, Lcom/sec/epdg/IWlanApnSetting;-><init>()V

    sget-object v2, Lcom/sec/epdg/IWlanApnSetting;->instances:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move/from16 v25, p23

    move/from16 v26, p24

    move-object/from16 v27, p25

    move/from16 v28, p26

    move-object/from16 v29, p27

    move/from16 v30, p28

    invoke-direct/range {v1 .. v30}, Lcom/sec/epdg/IWlanApnSetting;->updateVariableValues(Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/IWlanEnum$PfsState;Lcom/sec/epdg/IWlanEnum$IPSecIpType;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/IWlanEnum$AdapterConf;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;ILcom/sec/epdg/IWlanEnum$PcscfConf;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v31

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v31

    throw v2
.end method

.method private updateVariableValues(Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/IWlanEnum$PfsState;Lcom/sec/epdg/IWlanEnum$IPSecIpType;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/IWlanEnum$AdapterConf;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;ILcom/sec/epdg/IWlanEnum$PcscfConf;I)V
    .locals 12
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;
    .param p3    # Lcom/sec/epdg/IWlanEnum$PfsState;
    .param p4    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .param p5    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p6    # Ljava/lang/String;
    .param p7    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .param p11    # Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .param p12    # Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .param p13    # Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .param p14    # Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .param p15    # Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .param p16    # Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .param p17    # I
    .param p18    # Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .param p19    # Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .param p20    # Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .param p21    # Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .param p22    # I
    .param p23    # I
    .param p24    # I
    .param p25    # I
    .param p26    # Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .param p27    # I
    .param p28    # Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .param p29    # I

    iput-object p1, p0, Lcom/sec/epdg/IWlanApnSetting;->IWlanSettingName:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mOwnUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpsecOwnUri:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mRemoteUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpsecRemoteUri:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mApnType:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecUserAuthval:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    iput-object p3, p0, Lcom/sec/epdg/IWlanApnSetting;->mPfsval:Lcom/sec/epdg/IWlanEnum$PfsState;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecauthType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIkeVirtualAdapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->pcscfattributes:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move/from16 v0, p29

    iput v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mPeriodicDpdTimer:I

    iget-object v1, p0, Lcom/sec/epdg/IWlanApnSetting;->ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    move-object/from16 v6, p16

    move/from16 v7, p17

    # invokes: Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->updateIpsecValues(Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V
    invoke-static/range {v1 .. v7}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->access$200(Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V

    iget-object v1, p0, Lcom/sec/epdg/IWlanApnSetting;->ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-object/from16 v2, p18

    move-object/from16 v3, p19

    move-object/from16 v4, p20

    move-object/from16 v5, p21

    move/from16 v6, p22

    move/from16 v7, p23

    move/from16 v8, p24

    move/from16 v9, p25

    move-object/from16 v10, p26

    move/from16 v11, p27

    # invokes: Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->updateIkeValues(Lcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;I)V
    invoke-static/range {v1 .. v11}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->access$300(Lcom/sec/epdg/IWlanApnSetting$IKeSetting;Lcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;I)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/epdg/IWlanApnSetting;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/IWlanApnSetting;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/epdg/IWlanApnSetting;->TAG:Ljava/lang/String;

    const-string v2, "CloneNotSupportedException IWlanApnSetting"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Error;

    const-string v2, "Is too"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/epdg/IWlanApnSetting;->clone()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public getIWlanSettingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->IWlanSettingName:Ljava/lang/String;

    return-object v0
.end method

.method public getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    return-object v0
.end method

.method public getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    return-object v0
.end method

.method public getPcscfattributes()Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->pcscfattributes:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    return-object v0
.end method

.method public getPeriodicDpdTimer()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mPeriodicDpdTimer:I

    return v0
.end method

.method public getePDGIp()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getEpdgFQDN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmApnType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getmIkeVirtualAdapterConf()Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIkeVirtualAdapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    return-object v0
.end method

.method public getmIpSecIpType()Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public getmIpSecUserAuthval()Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecUserAuthval:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    return-object v0
.end method

.method public getmIpSecauthType()Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecauthType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    return-object v0
.end method

.method public getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1    # Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpsecOwnUri:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/sec/epdg/EpdgService;->updateOnwUriImsi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/epdg/EpdgService;->includeIdi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/epdg/IWlanApnSetting;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getmIpsecOwnUri() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getmIpsecRemoteUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpsecRemoteUri:Ljava/lang/String;

    return-object v0
.end method

.method public getmOwnUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mOwnUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public getmPfsval()Lcom/sec/epdg/IWlanEnum$PfsState;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mPfsval:Lcom/sec/epdg/IWlanEnum$PfsState;

    return-object v0
.end method

.method public getmRemoteUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mRemoteUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public setmIpSecIpType(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)V
    .locals 0
    .param p1    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    iput-object p1, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    return-void
.end method
