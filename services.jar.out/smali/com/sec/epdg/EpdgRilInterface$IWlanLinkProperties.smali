.class public Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
.super Ljava/lang/Object;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IWlanLinkProperties"
.end annotation


# static fields
.field private static final CONF_IPC4VOLTE_INTERIM_UPDATE:I = 0x1

.field private static final IPSECCONN_MAX_DNS:I = 0x2

.field private static final IPSECCONN_MAX_PCSCFv4:I = 0x3

.field private static final IPSECCONN_MAX_PCSCFv6:I = 0x3

.field private static final IPSECCONN_MIN_PCSCFv4:I = 0x1


# instance fields
.field private final mIntfName:Ljava/lang/String;

.field private final mIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

.field private final mIpv4Addr:Ljava/lang/String;

.field private final mIpv4Dnses:[Ljava/lang/String;

.field private final mIpv4PcscfAddr:[Ljava/lang/String;

.field private final mIpv4PrefixLen:I

.field private final mIpv6Addr:Ljava/lang/String;

.field private final mIpv6Dnses:[Ljava/lang/String;

.field private final mIpv6PcscfAddr:[Ljava/lang/String;

.field private final mIpv6PrefixLen:I


# direct methods
.method constructor <init>(IILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv4PrefixLen:I

    iput p2, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv6PrefixLen:I

    iput-object p3, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    iput-object p4, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIntfName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv4Dnses:[Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv6Dnses:[Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv4PcscfAddr:[Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv6PcscfAddr:[Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv4Addr:Ljava/lang/String;

    iput-object p10, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv6Addr:Ljava/lang/String;

    return-void
.end method

.method public static getIPSECCONN_MAX_DNS()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static getIPSECCONN_MAX_PCSCFv4()I
    .locals 1

    invoke-static {}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->isIpc4VolteInterimUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getIPSECCONN_MAX_PCSCFv6()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public static isIpc4VolteInterimUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getIntfName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIntfName:Ljava/lang/String;

    return-object v0
.end method

.method public getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public getIpv4PcscfAddr()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv4PcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4addr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv4Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4prefixlen()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv4PrefixLen:I

    return v0
.end method

.method public getIpv6PcscfAddr()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv6PcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6addr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv6Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6prefixlen()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv6PrefixLen:I

    return v0
.end method

.method public getmIpv4Dnses()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv4Dnses:[Ljava/lang/String;

    return-object v0
.end method

.method public getmIpv6Dnses()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->mIpv6Dnses:[Ljava/lang/String;

    return-object v0
.end method
