.class public Lcom/sec/epdg/EpdgSettings;
.super Ljava/lang/Object;
.source "EpdgSettings.java"


# static fields
.field private static mEpdgSettings:Lcom/sec/epdg/EpdgSettings;


# instance fields
.field private mAlwaysOnApnType:Ljava/lang/String;

.field private mAttachPdn:Ljava/lang/String;

.field private mEpdgFqdn:Ljava/lang/String;

.field private mIdiImsi:I

.field private mIdiMac:I

.field private mIsAnsIntegrationEnabled:Z

.field private mIsBroadcastHONotiEnabled:Z

.field private mIsDynamicFqdn:Z

.field private mIsRetryEnabledForAlwaysOnApn:Z

.field private mIsRtcpIntegrationEnabled:Z

.field private mIsTestingOnDemandPdnHandoff:Z

.field private mIsThrottlingEnabled:Z

.field private mKeepAliveTimer:I

.field private mPktLossPercent:I

.field private mSmartWifiTimer:I

.field private mSysSelTimer:I

.field private mWifiLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/epdg/EpdgSettings;
    .locals 17

    const/4 v0, 0x2

    const/16 v1, 0x64

    const/16 v2, 0x78

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x5

    const v7, 0x5265c0

    const-string v8, "epdg.epc.mnc260.mcc310.pub.3gppnetwork.org"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string v13, "default"

    const-string v14, "ims"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/sec/epdg/EpdgSettings;->getInstance(IIIIIZIILjava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;ZZ)Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(IIIIIZIILjava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;ZZ)Lcom/sec/epdg/EpdgSettings;
    .locals 18

    sget-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/epdg/EpdgSettings;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgSettings;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    invoke-direct/range {v0 .. v17}, Lcom/sec/epdg/EpdgSettings;->updateVariableValues(IIIIIZIILjava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-object v0
.end method

.method private updateVariableValues(IIIIIZIILjava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    iput p1, p0, Lcom/sec/epdg/EpdgSettings;->mWifiLevel:I

    iput p2, p0, Lcom/sec/epdg/EpdgSettings;->mPktLossPercent:I

    iput p3, p0, Lcom/sec/epdg/EpdgSettings;->mSysSelTimer:I

    iput p4, p0, Lcom/sec/epdg/EpdgSettings;->mIdiMac:I

    iput p5, p0, Lcom/sec/epdg/EpdgSettings;->mIdiImsi:I

    iput-boolean p6, p0, Lcom/sec/epdg/EpdgSettings;->mIsRetryEnabledForAlwaysOnApn:Z

    iput p7, p0, Lcom/sec/epdg/EpdgSettings;->mSmartWifiTimer:I

    iput p8, p0, Lcom/sec/epdg/EpdgSettings;->mKeepAliveTimer:I

    iput-object p9, p0, Lcom/sec/epdg/EpdgSettings;->mEpdgFqdn:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicFqdn:Z

    iput-boolean p11, p0, Lcom/sec/epdg/EpdgSettings;->mIsAnsIntegrationEnabled:Z

    iput-boolean p12, p0, Lcom/sec/epdg/EpdgSettings;->mIsRtcpIntegrationEnabled:Z

    iput-boolean p13, p0, Lcom/sec/epdg/EpdgSettings;->mIsBroadcastHONotiEnabled:Z

    iput-object p14, p0, Lcom/sec/epdg/EpdgSettings;->mAttachPdn:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAlwaysOnApnType:Ljava/lang/String;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsTestingOnDemandPdnHandoff:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsThrottlingEnabled:Z

    return-void
.end method


# virtual methods
.method public getAlwaysOnApn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAlwaysOnApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachPdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAttachPdn:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachPdnId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAttachPdn:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEpdgFQDN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mEpdgFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getIdiImsi()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiImsi:I

    return v0
.end method

.method public getIdiMac()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiMac:I

    return v0
.end method

.method public getIsAnsIntegrationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsAnsIntegrationEnabled:Z

    return v0
.end method

.method public getIsBroadcastHONotiEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsBroadcastHONotiEnabled:Z

    return v0
.end method

.method public getIsDynamicFQDN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicFqdn:Z

    return v0
.end method

.method public getIsRtcpIntegrationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRtcpIntegrationEnabled:Z

    return v0
.end method

.method public getIsTestingOnDemandPdnHandoff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsTestingOnDemandPdnHandoff:Z

    return v0
.end method

.method public getPktLossPercent()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPktLossPercent:I

    return v0
.end method

.method public getSmartWifiTimer()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mSmartWifiTimer:I

    return v0
.end method

.method public getSysSelTimer()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mSysSelTimer:I

    return v0
.end method

.method public getWifiLevel()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiLevel:I

    return v0
.end method

.method public getmKeepAliveTimer()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mKeepAliveTimer:I

    return v0
.end method

.method public isRetryEnabledForAlwaysOnApn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRetryEnabledForAlwaysOnApn:Z

    return v0
.end method

.method public isThrottlingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsThrottlingEnabled:Z

    return v0
.end method
