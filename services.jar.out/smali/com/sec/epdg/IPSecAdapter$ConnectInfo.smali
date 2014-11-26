.class Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
.super Ljava/lang/Object;
.source "IPSecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectInfo"
.end annotation


# instance fields
.field handoverIpv4addr:Ljava/lang/String;

.field handoverIpv6addr:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/IPSecAdapter;

.field wlanSetting:Lcom/sec/epdg/IWlanApnSetting;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->this$0:Lcom/sec/epdg/IPSecAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$1;)V
    .locals 0
    .param p1    # Lcom/sec/epdg/IPSecAdapter;
    .param p2    # Lcom/sec/epdg/IPSecAdapter$1;

    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;-><init>(Lcom/sec/epdg/IPSecAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Lcom/sec/epdg/IWlanApnSetting;)V
    .locals 0
    .param p0    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p1    # Lcom/sec/epdg/IWlanApnSetting;

    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setIWlanSettingInfo(Lcom/sec/epdg/IWlanApnSetting;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setHandoverIpv4Addr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setHandoverIpv6Addr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Lcom/sec/epdg/IWlanApnSetting;
    .locals 1
    .param p0    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getIWlanSettingInfo()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getHandoverIpv4Addr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getHandoverIpv6Addr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHandoverIpv4Addr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->handoverIpv4addr:Ljava/lang/String;

    return-object v0
.end method

.method private getHandoverIpv6Addr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->handoverIpv6addr:Ljava/lang/String;

    return-object v0
.end method

.method private getIWlanSettingInfo()Lcom/sec/epdg/IWlanApnSetting;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->wlanSetting:Lcom/sec/epdg/IWlanApnSetting;

    return-object v0
.end method

.method private setHandoverIpv4Addr(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->handoverIpv4addr:Ljava/lang/String;

    return-void
.end method

.method private setHandoverIpv6Addr(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->handoverIpv6addr:Ljava/lang/String;

    return-void
.end method

.method private setIWlanSettingInfo(Lcom/sec/epdg/IWlanApnSetting;)V
    .locals 0
    .param p1    # Lcom/sec/epdg/IWlanApnSetting;

    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->wlanSetting:Lcom/sec/epdg/IWlanApnSetting;

    return-void
.end method
