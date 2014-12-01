.class Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;
.super Ljava/lang/Object;
.source "IWlanApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IPSecSetting"
.end annotation


# instance fields
.field private mIpSecDHGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

.field private mIpSecEncryptionType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

.field private mIpSecIntegrityType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field private mIpSecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

.field private mIpSecLifeval:I

.field private mTunnelMode:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

.field final synthetic this$0:Lcom/sec/epdg/IWlanApnSetting;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IWlanApnSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->this$0:Lcom/sec/epdg/IWlanApnSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IWlanApnSetting;Lcom/sec/epdg/IWlanApnSetting$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;-><init>(Lcom/sec/epdg/IWlanApnSetting;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->updateIpsecValues(Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V

    return-void
.end method

.method private updateIpsecValues(Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mTunnelMode:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    iput-object p2, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecEncryptionType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    iput-object p3, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecIntegrityType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    iput-object p4, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecDHGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    iput-object p5, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    iput p6, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecLifeval:I

    return-void
.end method


# virtual methods
.method public getmIpSecDHGroup()Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecDHGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    return-object v0
.end method

.method public getmIpSecEncryptionType()Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecEncryptionType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    return-object v0
.end method

.method public getmIpSecIntegrityType()Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecIntegrityType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    return-object v0
.end method

.method public getmIpSecLifeTimeType()Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method

.method public getmIpSecLifeval()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecLifeval:I

    return v0
.end method

.method public getmTunnelMode()Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mTunnelMode:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    return-object v0
.end method
