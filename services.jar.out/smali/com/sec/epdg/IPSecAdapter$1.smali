.class synthetic Lcom/sec/epdg/IPSecAdapter$1;
.super Ljava/lang/Object;
.source "IPSecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IPsecLifeType:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IkeVersion:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$TunnelMode:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecError:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecEvent:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$Ikeversion:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IpSecLifeTimeType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$TunnelModeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ipsec/client/IPsecError;->values()[Lcom/ipsec/client/IPsecError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    :try_start_0
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_115

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_114

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_113

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_ALREADY_CONNECTED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_112

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_111

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_110

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_10f

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_10e

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_DAEMON_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_10d

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_DH_GROUP:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_10c

    :goto_9
    :try_start_a
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_ENCRYPTION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_10b

    :goto_a
    :try_start_b
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_INTEGRITY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_10a

    :goto_b
    :try_start_c
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_VERSION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_109

    :goto_c
    :try_start_d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_WINDOW_SIZE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_108

    :goto_d
    :try_start_e
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_LIFETIME:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_107

    :goto_e
    :try_start_f
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IPSEC_ENCRYPTION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_106

    :goto_f
    :try_start_10
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IPSEC_INTEGRITY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_105

    :goto_10
    :try_start_11
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_104

    :goto_11
    :try_start_12
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PFS_DH_GROUP:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_103

    :goto_12
    :try_start_13
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_TUNNEL_MODE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_102

    :goto_13
    :try_start_14
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_GW_ADDRESS:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_101

    :goto_14
    :try_start_15
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_INTERNAL_SUBNET:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_100

    :goto_15
    :try_start_16
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_INTERFACE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_ff

    :goto_16
    :try_start_17
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_OWN_IDENTITY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_fe

    :goto_17
    :try_start_18
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_REMOTE_IDENTITY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_fd

    :goto_18
    :try_start_19
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_HOST_AUTHENTICATION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_fc

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_EAP_METHOD:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_fb

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PRESHARED_KEY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_fa

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IM_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_f9

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PRIVATE_KEY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_f8

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_USERNAME:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_f7

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PASSWORD:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_f6

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_f5

    :goto_20
    :try_start_21
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_f4

    :goto_21
    :try_start_22
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_RAC_ATTRIBUTE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_f3

    :goto_22
    :try_start_23
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_f2

    :goto_23
    :try_start_24
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_DPD_TIMEOUT:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_f1

    :goto_24
    :try_start_25
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_SYSTEM_VPN_ALREADY_EXISTS:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_f0

    :goto_25
    :try_start_26
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_CANNOT_CONFIGURE_GLOBAL_DNS:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_ef

    :goto_26
    :try_start_27
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_UNKNOWN_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_ee

    :goto_27
    :try_start_28
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_CA_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_ed

    :goto_28
    :try_start_29
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_ec

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_TIMEOUT:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_eb

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_IKE_NEGOTIATION_FAILED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_ea

    :goto_2b
    invoke-static {}, Lcom/ipsec/client/IPsecEvent;->values()[Lcom/ipsec/client/IPsecEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecEvent:[I

    :try_start_2c
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_e9

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_e8

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_e7

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_e6

    :goto_2f
    :try_start_30
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_e5

    :goto_30
    :try_start_31
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_e4

    :goto_31
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->values()[Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

    :try_start_32
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_e3

    :goto_32
    :try_start_33
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_e2

    :goto_33
    :try_start_34
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_e1

    :goto_34
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$AdapterConf;->values()[Lcom/sec/epdg/IWlanEnum$AdapterConf;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

    :try_start_35
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_e0

    :goto_35
    :try_start_36
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_df

    :goto_36
    :try_start_37
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_de

    :goto_37
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IkeGroup;->values()[Lcom/ipsec/client/IPsecConnection$IkeGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    :try_start_38
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_dd

    :goto_38
    :try_start_39
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_dc

    :goto_39
    :try_start_3a
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_db

    :goto_3a
    :try_start_3b
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_da

    :goto_3b
    :try_start_3c
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_d9

    :goto_3c
    :try_start_3d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_d8

    :goto_3d
    :try_start_3e
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_d7

    :goto_3e
    :try_start_3f
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_d6

    :goto_3f
    :try_start_40
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_d5

    :goto_40
    :try_start_41
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_d4

    :goto_41
    :try_start_42
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_d3

    :goto_42
    :try_start_43
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_d2

    :goto_43
    :try_start_44
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_d1

    :goto_44
    :try_start_45
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_d0

    :goto_45
    :try_start_46
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_cf

    :goto_46
    :try_start_47
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_ce

    :goto_47
    :try_start_48
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_cd

    :goto_48
    :try_start_49
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_cc

    :goto_49
    :try_start_4a
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_cb

    :goto_4a
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->values()[Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    :try_start_4b
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_ca

    :goto_4b
    :try_start_4c
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_c9

    :goto_4c
    :try_start_4d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_c8

    :goto_4d
    :try_start_4e
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_c7

    :goto_4e
    :try_start_4f
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_c6

    :goto_4f
    :try_start_50
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_c5

    :goto_50
    :try_start_51
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_c4

    :goto_51
    :try_start_52
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_c3

    :goto_52
    :try_start_53
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_c2

    :goto_53
    :try_start_54
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_c1

    :goto_54
    :try_start_55
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_c0

    :goto_55
    :try_start_56
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_bf

    :goto_56
    :try_start_57
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_be

    :goto_57
    :try_start_58
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_bd

    :goto_58
    :try_start_59
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_bc

    :goto_59
    :try_start_5a
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_bb

    :goto_5a
    :try_start_5b
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_ba

    :goto_5b
    :try_start_5c
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_b9

    :goto_5c
    :try_start_5d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_b8

    :goto_5d
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$EapMethod;->values()[Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    :try_start_5e
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MD5_CHALLENGE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_b7

    :goto_5e
    :try_start_5f
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_SIM:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_b6

    :goto_5f
    :try_start_60
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_b5

    :goto_60
    :try_start_61
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MSCHAPV2:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_b4

    :goto_61
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IkeEapType;->values()[Lcom/sec/epdg/IWlanEnum$IkeEapType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    :try_start_62
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_b3

    :goto_62
    :try_start_63
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_SIM:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_b2

    :goto_63
    :try_start_64
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_b1

    :goto_64
    :try_start_65
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_b0

    :goto_65
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->values()[Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    :try_start_66
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_af

    :goto_66
    :try_start_67
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_ae

    :goto_67
    :try_start_68
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_ad

    :goto_68
    :try_start_69
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_ac

    :goto_69
    :try_start_6a
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_ab

    :goto_6a
    :try_start_6b
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_aa

    :goto_6b
    :try_start_6c
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_a9

    :goto_6c
    :try_start_6d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_a8

    :goto_6d
    :try_start_6e
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_a7

    :goto_6e
    :try_start_6f
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_a6

    :goto_6f
    :try_start_70
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_a5

    :goto_70
    :try_start_71
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_a4

    :goto_71
    :try_start_72
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_a3

    :goto_72
    :try_start_73
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_a2

    :goto_73
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->values()[Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    :try_start_74
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_a1

    :goto_74
    :try_start_75
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_a0

    :goto_75
    :try_start_76
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_9f

    :goto_76
    :try_start_77
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_9e

    :goto_77
    :try_start_78
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_9d

    :goto_78
    :try_start_79
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_9c

    :goto_79
    :try_start_7a
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_9b

    :goto_7a
    :try_start_7b
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_9a

    :goto_7b
    :try_start_7c
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_99

    :goto_7c
    :try_start_7d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_98

    :goto_7d
    :try_start_7e
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_97

    :goto_7e
    :try_start_7f
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_96

    :goto_7f
    :try_start_80
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_95

    :goto_80
    :try_start_81
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_94

    :goto_81
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->values()[Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    :try_start_82
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_93

    :goto_82
    :try_start_83
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_92

    :goto_83
    :try_start_84
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_91

    :goto_84
    :try_start_85
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_90

    :goto_85
    :try_start_86
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_8f

    :goto_86
    :try_start_87
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_8e

    :goto_87
    :try_start_88
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_88} :catch_8d

    :goto_88
    :try_start_89
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_89} :catch_8c

    :goto_89
    :try_start_8a
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_8a} :catch_8b

    :goto_8a
    :try_start_8b
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_8b} :catch_8a

    :goto_8b
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->values()[Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    :try_start_8c
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_8c} :catch_89

    :goto_8c
    :try_start_8d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_8d} :catch_88

    :goto_8d
    :try_start_8e
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_8e} :catch_87

    :goto_8e
    :try_start_8f
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_8f} :catch_86

    :goto_8f
    :try_start_90
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_90} :catch_85

    :goto_90
    :try_start_91
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_91} :catch_84

    :goto_91
    :try_start_92
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_92} :catch_83

    :goto_92
    :try_start_93
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_93} :catch_82

    :goto_93
    :try_start_94
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_94} :catch_81

    :goto_94
    :try_start_95
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_95} :catch_80

    :goto_95
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IkeVersion;->values()[Lcom/ipsec/client/IPsecConnection$IkeVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeVersion:[I

    :try_start_96
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeVersion:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeVersion;->IKE_VERSION_2:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_96} :catch_7f

    :goto_96
    :try_start_97
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IkeVersion:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeVersion;->IKE_VERSION_1:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_97} :catch_7e

    :goto_97
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$Ikeversion;->values()[Lcom/sec/epdg/IWlanEnum$Ikeversion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$Ikeversion:[I

    :try_start_98
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$Ikeversion:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_1:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_98} :catch_7d

    :goto_98
    :try_start_99
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$Ikeversion:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_99} :catch_7c

    :goto_99
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->values()[Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecLifeType:[I

    :try_start_9a
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecLifeType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_9a} :catch_7b

    :goto_9a
    :try_start_9b
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecLifeType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_9b} :catch_7a

    :goto_9b
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->values()[Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecLifeTimeType:[I

    :try_start_9c
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecLifeTimeType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_9c} :catch_79

    :goto_9c
    :try_start_9d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecLifeTimeType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_9d} :catch_78

    :goto_9d
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->values()[Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    :try_start_9e
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_9e} :catch_77

    :goto_9e
    :try_start_9f
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_9f} :catch_76

    :goto_9f
    :try_start_a0
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_a0} :catch_75

    :goto_a0
    :try_start_a1
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_a1} :catch_74

    :goto_a1
    :try_start_a2
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_a2} :catch_73

    :goto_a2
    :try_start_a3
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_a3} :catch_72

    :goto_a3
    :try_start_a4
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_a4} :catch_71

    :goto_a4
    :try_start_a5
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_a5} :catch_70

    :goto_a5
    :try_start_a6
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_a6} :catch_6f

    :goto_a6
    :try_start_a7
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_a7} :catch_6e

    :goto_a7
    :try_start_a8
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_a8} :catch_6d

    :goto_a8
    :try_start_a9
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_a9} :catch_6c

    :goto_a9
    :try_start_aa
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_aa} :catch_6b

    :goto_aa
    :try_start_ab
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_ab} :catch_6a

    :goto_ab
    :try_start_ac
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_ac} :catch_69

    :goto_ac
    :try_start_ad
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_ad} :catch_68

    :goto_ad
    :try_start_ae
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_ae} :catch_67

    :goto_ae
    :try_start_af
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_af} :catch_66

    :goto_af
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->values()[Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    :try_start_b0
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_b0} :catch_65

    :goto_b0
    :try_start_b1
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_b1} :catch_64

    :goto_b1
    :try_start_b2
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_b2} :catch_63

    :goto_b2
    :try_start_b3
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_b3} :catch_62

    :goto_b3
    :try_start_b4
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_b4} :catch_61

    :goto_b4
    :try_start_b5
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_b5} :catch_60

    :goto_b5
    :try_start_b6
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_b6} :catch_5f

    :goto_b6
    :try_start_b7
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_b7} :catch_5e

    :goto_b7
    :try_start_b8
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_b8} :catch_5d

    :goto_b8
    :try_start_b9
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_b9} :catch_5c

    :goto_b9
    :try_start_ba
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_ba} :catch_5b

    :goto_ba
    :try_start_bb
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_bb} :catch_5a

    :goto_bb
    :try_start_bc
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_bc} :catch_59

    :goto_bc
    :try_start_bd
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_bd} :catch_58

    :goto_bd
    :try_start_be
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_be} :catch_57

    :goto_be
    :try_start_bf
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_bf} :catch_56

    :goto_bf
    :try_start_c0
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c0} :catch_55

    :goto_c0
    :try_start_c1
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1 .. :try_end_c1} :catch_54

    :goto_c1
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->values()[Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    :try_start_c2
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_c2} :catch_53

    :goto_c2
    :try_start_c3
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_c3} :catch_52

    :goto_c3
    :try_start_c4
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_c4} :catch_51

    :goto_c4
    :try_start_c5
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_c5} :catch_50

    :goto_c5
    :try_start_c6
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_c6} :catch_4f

    :goto_c6
    :try_start_c7
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_c7} :catch_4e

    :goto_c7
    :try_start_c8
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_c8} :catch_4d

    :goto_c8
    :try_start_c9
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_c9} :catch_4c

    :goto_c9
    :try_start_ca
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ca .. :try_end_ca} :catch_4b

    :goto_ca
    :try_start_cb
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_cb} :catch_4a

    :goto_cb
    :try_start_cc
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_cc} :catch_49

    :goto_cc
    :try_start_cd
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_NULL:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cd .. :try_end_cd} :catch_48

    :goto_cd
    :try_start_ce
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_ce} :catch_47

    :goto_ce
    :try_start_cf
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_cf} :catch_46

    :goto_cf
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->values()[Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    :try_start_d0
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_d0} :catch_45

    :goto_d0
    :try_start_d1
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_d1} :catch_44

    :goto_d1
    :try_start_d2
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_d2} :catch_43

    :goto_d2
    :try_start_d3
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d3 .. :try_end_d3} :catch_42

    :goto_d3
    :try_start_d4
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_d4} :catch_41

    :goto_d4
    :try_start_d5
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_d5} :catch_40

    :goto_d5
    :try_start_d6
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_d6} :catch_3f

    :goto_d6
    :try_start_d7
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_d7} :catch_3e

    :goto_d7
    :try_start_d8
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_d8} :catch_3d

    :goto_d8
    :try_start_d9
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_d9} :catch_3c

    :goto_d9
    :try_start_da
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_da} :catch_3b

    :goto_da
    :try_start_db
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_db} :catch_3a

    :goto_db
    :try_start_dc
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_dc} :catch_39

    :goto_dc
    :try_start_dd
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_dd} :catch_38

    :goto_dd
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->values()[Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    :try_start_de
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_de .. :try_end_de} :catch_37

    :goto_de
    :try_start_df
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_df} :catch_36

    :goto_df
    :try_start_e0
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_e0} :catch_35

    :goto_e0
    :try_start_e1
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_e1} :catch_34

    :goto_e1
    :try_start_e2
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_e2} :catch_33

    :goto_e2
    :try_start_e3
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_e3} :catch_32

    :goto_e3
    :try_start_e4
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_e4} :catch_31

    :goto_e4
    :try_start_e5
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_e5} :catch_30

    :goto_e5
    :try_start_e6
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_e6} :catch_2f

    :goto_e6
    :try_start_e7
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e7 .. :try_end_e7} :catch_2e

    :goto_e7
    :try_start_e8
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_e8} :catch_2d

    :goto_e8
    :try_start_e9
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_e9} :catch_2c

    :goto_e9
    :try_start_ea
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_ea} :catch_2b

    :goto_ea
    :try_start_eb
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_eb .. :try_end_eb} :catch_2a

    :goto_eb
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->values()[Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    :try_start_ec
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_ec} :catch_29

    :goto_ec
    :try_start_ed
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_ed} :catch_28

    :goto_ed
    :try_start_ee
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_ee} :catch_27

    :goto_ee
    :try_start_ef
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_ef} :catch_26

    :goto_ef
    :try_start_f0
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_f0} :catch_25

    :goto_f0
    :try_start_f1
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1 .. :try_end_f1} :catch_24

    :goto_f1
    :try_start_f2
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_f2} :catch_23

    :goto_f2
    :try_start_f3
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_f3} :catch_22

    :goto_f3
    :try_start_f4
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f4 .. :try_end_f4} :catch_21

    :goto_f4
    :try_start_f5
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_f5} :catch_20

    :goto_f5
    :try_start_f6
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f6 .. :try_end_f6} :catch_1f

    :goto_f6
    :try_start_f7
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_f7} :catch_1e

    :goto_f7
    :try_start_f8
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_f8} :catch_1d

    :goto_f8
    :try_start_f9
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_f9} :catch_1c

    :goto_f9
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$TunnelMode;->values()[Lcom/ipsec/client/IPsecConnection$TunnelMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$TunnelMode:[I

    :try_start_fa
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$TunnelMode:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$TunnelMode;->IPSEC_RAC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fa .. :try_end_fa} :catch_1b

    :goto_fa
    :try_start_fb
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$TunnelMode:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$TunnelMode;->L2TP_OVER_IPSEC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_fb} :catch_1a

    :goto_fb
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->values()[Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$TunnelModeType:[I

    :try_start_fc
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$TunnelModeType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->IPSEC_RAC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_fc} :catch_19

    :goto_fc
    :try_start_fd
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$TunnelModeType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->L2TP_OVER_IPSEC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fd .. :try_end_fd} :catch_18

    :goto_fd
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IdentityType;->values()[Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    :try_start_fe
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_fe} :catch_17

    :goto_fe
    :try_start_ff
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV6_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ff .. :try_end_ff} :catch_16

    :goto_ff
    :try_start_100
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100 .. :try_end_100} :catch_15

    :goto_100
    :try_start_101
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->USER_FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_101} :catch_14

    :goto_101
    :try_start_102
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->DN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_102
    .catch Ljava/lang/NoSuchFieldError; {:try_start_102 .. :try_end_102} :catch_13

    :goto_102
    :try_start_103
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->KEY_ID:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_103 .. :try_end_103} :catch_12

    :goto_103
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IdentityType;->values()[Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    :try_start_104
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_104 .. :try_end_104} :catch_11

    :goto_104
    :try_start_105
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_105
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_105} :catch_10

    :goto_105
    :try_start_106
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_106
    .catch Ljava/lang/NoSuchFieldError; {:try_start_106 .. :try_end_106} :catch_f

    :goto_106
    :try_start_107
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_107
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_107} :catch_e

    :goto_107
    :try_start_108
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_108} :catch_d

    :goto_108
    :try_start_109
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_109
    .catch Ljava/lang/NoSuchFieldError; {:try_start_109 .. :try_end_109} :catch_c

    :goto_109
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IPVersion;->values()[Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

    :try_start_10a
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_10a} :catch_b

    :goto_10a
    :try_start_10b
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_10b} :catch_a

    :goto_10b
    :try_start_10c
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c .. :try_end_10c} :catch_9

    :goto_10c
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->values()[Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

    :try_start_10d
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_10d} :catch_8

    :goto_10d
    :try_start_10e
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10e .. :try_end_10e} :catch_7

    :goto_10e
    :try_start_10f
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10f .. :try_end_10f} :catch_6

    :goto_10f
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->values()[Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

    :try_start_110
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PRE_SHARED:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_110
    .catch Ljava/lang/NoSuchFieldError; {:try_start_110 .. :try_end_110} :catch_5

    :goto_110
    :try_start_111
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PUBLIC_KEY:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_111 .. :try_end_111} :catch_4

    :goto_111
    :try_start_112
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_112
    .catch Ljava/lang/NoSuchFieldError; {:try_start_112 .. :try_end_112} :catch_3

    :goto_112
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->values()[Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

    :try_start_113
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_113} :catch_2

    :goto_113
    :try_start_114
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_114} :catch_1

    :goto_114
    :try_start_115
    sget-object v0, Lcom/sec/epdg/IPSecAdapter$1;->$SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_115} :catch_0

    :goto_115
    return-void

    :catch_0
    move-exception v0

    goto :goto_115

    :catch_1
    move-exception v0

    goto :goto_114

    :catch_2
    move-exception v0

    goto :goto_113

    :catch_3
    move-exception v0

    goto :goto_112

    :catch_4
    move-exception v0

    goto :goto_111

    :catch_5
    move-exception v0

    goto :goto_110

    :catch_6
    move-exception v0

    goto :goto_10f

    :catch_7
    move-exception v0

    goto :goto_10e

    :catch_8
    move-exception v0

    goto :goto_10d

    :catch_9
    move-exception v0

    goto/16 :goto_10c

    :catch_a
    move-exception v0

    goto/16 :goto_10b

    :catch_b
    move-exception v0

    goto/16 :goto_10a

    :catch_c
    move-exception v0

    goto/16 :goto_109

    :catch_d
    move-exception v0

    goto/16 :goto_108

    :catch_e
    move-exception v0

    goto/16 :goto_107

    :catch_f
    move-exception v0

    goto/16 :goto_106

    :catch_10
    move-exception v0

    goto/16 :goto_105

    :catch_11
    move-exception v0

    goto/16 :goto_104

    :catch_12
    move-exception v0

    goto/16 :goto_103

    :catch_13
    move-exception v0

    goto/16 :goto_102

    :catch_14
    move-exception v0

    goto/16 :goto_101

    :catch_15
    move-exception v0

    goto/16 :goto_100

    :catch_16
    move-exception v0

    goto/16 :goto_ff

    :catch_17
    move-exception v0

    goto/16 :goto_fe

    :catch_18
    move-exception v0

    goto/16 :goto_fd

    :catch_19
    move-exception v0

    goto/16 :goto_fc

    :catch_1a
    move-exception v0

    goto/16 :goto_fb

    :catch_1b
    move-exception v0

    goto/16 :goto_fa

    :catch_1c
    move-exception v0

    goto/16 :goto_f9

    :catch_1d
    move-exception v0

    goto/16 :goto_f8

    :catch_1e
    move-exception v0

    goto/16 :goto_f7

    :catch_1f
    move-exception v0

    goto/16 :goto_f6

    :catch_20
    move-exception v0

    goto/16 :goto_f5

    :catch_21
    move-exception v0

    goto/16 :goto_f4

    :catch_22
    move-exception v0

    goto/16 :goto_f3

    :catch_23
    move-exception v0

    goto/16 :goto_f2

    :catch_24
    move-exception v0

    goto/16 :goto_f1

    :catch_25
    move-exception v0

    goto/16 :goto_f0

    :catch_26
    move-exception v0

    goto/16 :goto_ef

    :catch_27
    move-exception v0

    goto/16 :goto_ee

    :catch_28
    move-exception v0

    goto/16 :goto_ed

    :catch_29
    move-exception v0

    goto/16 :goto_ec

    :catch_2a
    move-exception v0

    goto/16 :goto_eb

    :catch_2b
    move-exception v0

    goto/16 :goto_ea

    :catch_2c
    move-exception v0

    goto/16 :goto_e9

    :catch_2d
    move-exception v0

    goto/16 :goto_e8

    :catch_2e
    move-exception v0

    goto/16 :goto_e7

    :catch_2f
    move-exception v0

    goto/16 :goto_e6

    :catch_30
    move-exception v0

    goto/16 :goto_e5

    :catch_31
    move-exception v0

    goto/16 :goto_e4

    :catch_32
    move-exception v0

    goto/16 :goto_e3

    :catch_33
    move-exception v0

    goto/16 :goto_e2

    :catch_34
    move-exception v0

    goto/16 :goto_e1

    :catch_35
    move-exception v0

    goto/16 :goto_e0

    :catch_36
    move-exception v0

    goto/16 :goto_df

    :catch_37
    move-exception v0

    goto/16 :goto_de

    :catch_38
    move-exception v0

    goto/16 :goto_dd

    :catch_39
    move-exception v0

    goto/16 :goto_dc

    :catch_3a
    move-exception v0

    goto/16 :goto_db

    :catch_3b
    move-exception v0

    goto/16 :goto_da

    :catch_3c
    move-exception v0

    goto/16 :goto_d9

    :catch_3d
    move-exception v0

    goto/16 :goto_d8

    :catch_3e
    move-exception v0

    goto/16 :goto_d7

    :catch_3f
    move-exception v0

    goto/16 :goto_d6

    :catch_40
    move-exception v0

    goto/16 :goto_d5

    :catch_41
    move-exception v0

    goto/16 :goto_d4

    :catch_42
    move-exception v0

    goto/16 :goto_d3

    :catch_43
    move-exception v0

    goto/16 :goto_d2

    :catch_44
    move-exception v0

    goto/16 :goto_d1

    :catch_45
    move-exception v0

    goto/16 :goto_d0

    :catch_46
    move-exception v0

    goto/16 :goto_cf

    :catch_47
    move-exception v0

    goto/16 :goto_ce

    :catch_48
    move-exception v0

    goto/16 :goto_cd

    :catch_49
    move-exception v0

    goto/16 :goto_cc

    :catch_4a
    move-exception v0

    goto/16 :goto_cb

    :catch_4b
    move-exception v0

    goto/16 :goto_ca

    :catch_4c
    move-exception v0

    goto/16 :goto_c9

    :catch_4d
    move-exception v0

    goto/16 :goto_c8

    :catch_4e
    move-exception v0

    goto/16 :goto_c7

    :catch_4f
    move-exception v0

    goto/16 :goto_c6

    :catch_50
    move-exception v0

    goto/16 :goto_c5

    :catch_51
    move-exception v0

    goto/16 :goto_c4

    :catch_52
    move-exception v0

    goto/16 :goto_c3

    :catch_53
    move-exception v0

    goto/16 :goto_c2

    :catch_54
    move-exception v0

    goto/16 :goto_c1

    :catch_55
    move-exception v0

    goto/16 :goto_c0

    :catch_56
    move-exception v0

    goto/16 :goto_bf

    :catch_57
    move-exception v0

    goto/16 :goto_be

    :catch_58
    move-exception v0

    goto/16 :goto_bd

    :catch_59
    move-exception v0

    goto/16 :goto_bc

    :catch_5a
    move-exception v0

    goto/16 :goto_bb

    :catch_5b
    move-exception v0

    goto/16 :goto_ba

    :catch_5c
    move-exception v0

    goto/16 :goto_b9

    :catch_5d
    move-exception v0

    goto/16 :goto_b8

    :catch_5e
    move-exception v0

    goto/16 :goto_b7

    :catch_5f
    move-exception v0

    goto/16 :goto_b6

    :catch_60
    move-exception v0

    goto/16 :goto_b5

    :catch_61
    move-exception v0

    goto/16 :goto_b4

    :catch_62
    move-exception v0

    goto/16 :goto_b3

    :catch_63
    move-exception v0

    goto/16 :goto_b2

    :catch_64
    move-exception v0

    goto/16 :goto_b1

    :catch_65
    move-exception v0

    goto/16 :goto_b0

    :catch_66
    move-exception v0

    goto/16 :goto_af

    :catch_67
    move-exception v0

    goto/16 :goto_ae

    :catch_68
    move-exception v0

    goto/16 :goto_ad

    :catch_69
    move-exception v0

    goto/16 :goto_ac

    :catch_6a
    move-exception v0

    goto/16 :goto_ab

    :catch_6b
    move-exception v0

    goto/16 :goto_aa

    :catch_6c
    move-exception v0

    goto/16 :goto_a9

    :catch_6d
    move-exception v0

    goto/16 :goto_a8

    :catch_6e
    move-exception v0

    goto/16 :goto_a7

    :catch_6f
    move-exception v0

    goto/16 :goto_a6

    :catch_70
    move-exception v0

    goto/16 :goto_a5

    :catch_71
    move-exception v0

    goto/16 :goto_a4

    :catch_72
    move-exception v0

    goto/16 :goto_a3

    :catch_73
    move-exception v0

    goto/16 :goto_a2

    :catch_74
    move-exception v0

    goto/16 :goto_a1

    :catch_75
    move-exception v0

    goto/16 :goto_a0

    :catch_76
    move-exception v0

    goto/16 :goto_9f

    :catch_77
    move-exception v0

    goto/16 :goto_9e

    :catch_78
    move-exception v0

    goto/16 :goto_9d

    :catch_79
    move-exception v0

    goto/16 :goto_9c

    :catch_7a
    move-exception v0

    goto/16 :goto_9b

    :catch_7b
    move-exception v0

    goto/16 :goto_9a

    :catch_7c
    move-exception v0

    goto/16 :goto_99

    :catch_7d
    move-exception v0

    goto/16 :goto_98

    :catch_7e
    move-exception v0

    goto/16 :goto_97

    :catch_7f
    move-exception v0

    goto/16 :goto_96

    :catch_80
    move-exception v0

    goto/16 :goto_95

    :catch_81
    move-exception v0

    goto/16 :goto_94

    :catch_82
    move-exception v0

    goto/16 :goto_93

    :catch_83
    move-exception v0

    goto/16 :goto_92

    :catch_84
    move-exception v0

    goto/16 :goto_91

    :catch_85
    move-exception v0

    goto/16 :goto_90

    :catch_86
    move-exception v0

    goto/16 :goto_8f

    :catch_87
    move-exception v0

    goto/16 :goto_8e

    :catch_88
    move-exception v0

    goto/16 :goto_8d

    :catch_89
    move-exception v0

    goto/16 :goto_8c

    :catch_8a
    move-exception v0

    goto/16 :goto_8b

    :catch_8b
    move-exception v0

    goto/16 :goto_8a

    :catch_8c
    move-exception v0

    goto/16 :goto_89

    :catch_8d
    move-exception v0

    goto/16 :goto_88

    :catch_8e
    move-exception v0

    goto/16 :goto_87

    :catch_8f
    move-exception v0

    goto/16 :goto_86

    :catch_90
    move-exception v0

    goto/16 :goto_85

    :catch_91
    move-exception v0

    goto/16 :goto_84

    :catch_92
    move-exception v0

    goto/16 :goto_83

    :catch_93
    move-exception v0

    goto/16 :goto_82

    :catch_94
    move-exception v0

    goto/16 :goto_81

    :catch_95
    move-exception v0

    goto/16 :goto_80

    :catch_96
    move-exception v0

    goto/16 :goto_7f

    :catch_97
    move-exception v0

    goto/16 :goto_7e

    :catch_98
    move-exception v0

    goto/16 :goto_7d

    :catch_99
    move-exception v0

    goto/16 :goto_7c

    :catch_9a
    move-exception v0

    goto/16 :goto_7b

    :catch_9b
    move-exception v0

    goto/16 :goto_7a

    :catch_9c
    move-exception v0

    goto/16 :goto_79

    :catch_9d
    move-exception v0

    goto/16 :goto_78

    :catch_9e
    move-exception v0

    goto/16 :goto_77

    :catch_9f
    move-exception v0

    goto/16 :goto_76

    :catch_a0
    move-exception v0

    goto/16 :goto_75

    :catch_a1
    move-exception v0

    goto/16 :goto_74

    :catch_a2
    move-exception v0

    goto/16 :goto_73

    :catch_a3
    move-exception v0

    goto/16 :goto_72

    :catch_a4
    move-exception v0

    goto/16 :goto_71

    :catch_a5
    move-exception v0

    goto/16 :goto_70

    :catch_a6
    move-exception v0

    goto/16 :goto_6f

    :catch_a7
    move-exception v0

    goto/16 :goto_6e

    :catch_a8
    move-exception v0

    goto/16 :goto_6d

    :catch_a9
    move-exception v0

    goto/16 :goto_6c

    :catch_aa
    move-exception v0

    goto/16 :goto_6b

    :catch_ab
    move-exception v0

    goto/16 :goto_6a

    :catch_ac
    move-exception v0

    goto/16 :goto_69

    :catch_ad
    move-exception v0

    goto/16 :goto_68

    :catch_ae
    move-exception v0

    goto/16 :goto_67

    :catch_af
    move-exception v0

    goto/16 :goto_66

    :catch_b0
    move-exception v0

    goto/16 :goto_65

    :catch_b1
    move-exception v0

    goto/16 :goto_64

    :catch_b2
    move-exception v0

    goto/16 :goto_63

    :catch_b3
    move-exception v0

    goto/16 :goto_62

    :catch_b4
    move-exception v0

    goto/16 :goto_61

    :catch_b5
    move-exception v0

    goto/16 :goto_60

    :catch_b6
    move-exception v0

    goto/16 :goto_5f

    :catch_b7
    move-exception v0

    goto/16 :goto_5e

    :catch_b8
    move-exception v0

    goto/16 :goto_5d

    :catch_b9
    move-exception v0

    goto/16 :goto_5c

    :catch_ba
    move-exception v0

    goto/16 :goto_5b

    :catch_bb
    move-exception v0

    goto/16 :goto_5a

    :catch_bc
    move-exception v0

    goto/16 :goto_59

    :catch_bd
    move-exception v0

    goto/16 :goto_58

    :catch_be
    move-exception v0

    goto/16 :goto_57

    :catch_bf
    move-exception v0

    goto/16 :goto_56

    :catch_c0
    move-exception v0

    goto/16 :goto_55

    :catch_c1
    move-exception v0

    goto/16 :goto_54

    :catch_c2
    move-exception v0

    goto/16 :goto_53

    :catch_c3
    move-exception v0

    goto/16 :goto_52

    :catch_c4
    move-exception v0

    goto/16 :goto_51

    :catch_c5
    move-exception v0

    goto/16 :goto_50

    :catch_c6
    move-exception v0

    goto/16 :goto_4f

    :catch_c7
    move-exception v0

    goto/16 :goto_4e

    :catch_c8
    move-exception v0

    goto/16 :goto_4d

    :catch_c9
    move-exception v0

    goto/16 :goto_4c

    :catch_ca
    move-exception v0

    goto/16 :goto_4b

    :catch_cb
    move-exception v0

    goto/16 :goto_4a

    :catch_cc
    move-exception v0

    goto/16 :goto_49

    :catch_cd
    move-exception v0

    goto/16 :goto_48

    :catch_ce
    move-exception v0

    goto/16 :goto_47

    :catch_cf
    move-exception v0

    goto/16 :goto_46

    :catch_d0
    move-exception v0

    goto/16 :goto_45

    :catch_d1
    move-exception v0

    goto/16 :goto_44

    :catch_d2
    move-exception v0

    goto/16 :goto_43

    :catch_d3
    move-exception v0

    goto/16 :goto_42

    :catch_d4
    move-exception v0

    goto/16 :goto_41

    :catch_d5
    move-exception v0

    goto/16 :goto_40

    :catch_d6
    move-exception v0

    goto/16 :goto_3f

    :catch_d7
    move-exception v0

    goto/16 :goto_3e

    :catch_d8
    move-exception v0

    goto/16 :goto_3d

    :catch_d9
    move-exception v0

    goto/16 :goto_3c

    :catch_da
    move-exception v0

    goto/16 :goto_3b

    :catch_db
    move-exception v0

    goto/16 :goto_3a

    :catch_dc
    move-exception v0

    goto/16 :goto_39

    :catch_dd
    move-exception v0

    goto/16 :goto_38

    :catch_de
    move-exception v0

    goto/16 :goto_37

    :catch_df
    move-exception v0

    goto/16 :goto_36

    :catch_e0
    move-exception v0

    goto/16 :goto_35

    :catch_e1
    move-exception v0

    goto/16 :goto_34

    :catch_e2
    move-exception v0

    goto/16 :goto_33

    :catch_e3
    move-exception v0

    goto/16 :goto_32

    :catch_e4
    move-exception v0

    goto/16 :goto_31

    :catch_e5
    move-exception v0

    goto/16 :goto_30

    :catch_e6
    move-exception v0

    goto/16 :goto_2f

    :catch_e7
    move-exception v0

    goto/16 :goto_2e

    :catch_e8
    move-exception v0

    goto/16 :goto_2d

    :catch_e9
    move-exception v0

    goto/16 :goto_2c

    :catch_ea
    move-exception v0

    goto/16 :goto_2b

    :catch_eb
    move-exception v0

    goto/16 :goto_2a

    :catch_ec
    move-exception v0

    goto/16 :goto_29

    :catch_ed
    move-exception v0

    goto/16 :goto_28

    :catch_ee
    move-exception v0

    goto/16 :goto_27

    :catch_ef
    move-exception v0

    goto/16 :goto_26

    :catch_f0
    move-exception v0

    goto/16 :goto_25

    :catch_f1
    move-exception v0

    goto/16 :goto_24

    :catch_f2
    move-exception v0

    goto/16 :goto_23

    :catch_f3
    move-exception v0

    goto/16 :goto_22

    :catch_f4
    move-exception v0

    goto/16 :goto_21

    :catch_f5
    move-exception v0

    goto/16 :goto_20

    :catch_f6
    move-exception v0

    goto/16 :goto_1f

    :catch_f7
    move-exception v0

    goto/16 :goto_1e

    :catch_f8
    move-exception v0

    goto/16 :goto_1d

    :catch_f9
    move-exception v0

    goto/16 :goto_1c

    :catch_fa
    move-exception v0

    goto/16 :goto_1b

    :catch_fb
    move-exception v0

    goto/16 :goto_1a

    :catch_fc
    move-exception v0

    goto/16 :goto_19

    :catch_fd
    move-exception v0

    goto/16 :goto_18

    :catch_fe
    move-exception v0

    goto/16 :goto_17

    :catch_ff
    move-exception v0

    goto/16 :goto_16

    :catch_100
    move-exception v0

    goto/16 :goto_15

    :catch_101
    move-exception v0

    goto/16 :goto_14

    :catch_102
    move-exception v0

    goto/16 :goto_13

    :catch_103
    move-exception v0

    goto/16 :goto_12

    :catch_104
    move-exception v0

    goto/16 :goto_11

    :catch_105
    move-exception v0

    goto/16 :goto_10

    :catch_106
    move-exception v0

    goto/16 :goto_f

    :catch_107
    move-exception v0

    goto/16 :goto_e

    :catch_108
    move-exception v0

    goto/16 :goto_d

    :catch_109
    move-exception v0

    goto/16 :goto_c

    :catch_10a
    move-exception v0

    goto/16 :goto_b

    :catch_10b
    move-exception v0

    goto/16 :goto_a

    :catch_10c
    move-exception v0

    goto/16 :goto_9

    :catch_10d
    move-exception v0

    goto/16 :goto_8

    :catch_10e
    move-exception v0

    goto/16 :goto_7

    :catch_10f
    move-exception v0

    goto/16 :goto_6

    :catch_110
    move-exception v0

    goto/16 :goto_5

    :catch_111
    move-exception v0

    goto/16 :goto_4

    :catch_112
    move-exception v0

    goto/16 :goto_3

    :catch_113
    move-exception v0

    goto/16 :goto_2

    :catch_114
    move-exception v0

    goto/16 :goto_1

    :catch_115
    move-exception v0

    goto/16 :goto_0
.end method
