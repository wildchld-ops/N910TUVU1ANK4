.class public Lcom/ipsec/client/IPsecClient;
.super Ljava/lang/Object;
.source "IPsecClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipsec/client/IPsecClient$3;,
        Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IPSC/IPsecClient"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/ipsec/client/IPsecClient;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mActiveConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ipsec/client/IPsecConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/ipsec/client/IIPsecServiceCallback;

.field private mIPsecService:Lcom/ipsec/client/IIPsecService;

.field private mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ipsec/client/IIPsecListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLogFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IPSC/IPsecClient"

    const-string v1, "Starting. Package version is vpnclient-3.0-src-package-vpnclient-3.0.2-969-r5430-2014-01-03_12-30-07"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/ipsec/client/IPsecClient$1;

    invoke-direct {v0, p0}, Lcom/ipsec/client/IPsecClient$1;-><init>(Lcom/ipsec/client/IPsecClient;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mCallback:Lcom/ipsec/client/IIPsecServiceCallback;

    const-string v0, "IPSC/IPsecClient"

    const-string v1, "IPsecClient()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/ipsec/client/IPsecClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0    # Lcom/ipsec/client/IPsecClient;

    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;
    .locals 1
    .param p0    # Lcom/ipsec/client/IPsecClient;

    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IIPsecService;
    .locals 1
    .param p0    # Lcom/ipsec/client/IPsecClient;

    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecService;)Lcom/ipsec/client/IIPsecService;
    .locals 0
    .param p0    # Lcom/ipsec/client/IPsecClient;
    .param p1    # Lcom/ipsec/client/IIPsecService;

    iput-object p1, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IIPsecServiceCallback;
    .locals 1
    .param p0    # Lcom/ipsec/client/IPsecClient;

    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mCallback:Lcom/ipsec/client/IIPsecServiceCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ipsec/client/IPsecClient;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/ipsec/client/IPsecClient;

    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mLogFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ipsec/client/IPsecClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/ipsec/client/IPsecClient;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/ipsec/client/IPsecClient;->mLogFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IPsecError;
    .locals 1
    .param p0    # Lcom/ipsec/client/IPsecClient;

    invoke-direct {p0}, Lcom/ipsec/client/IPsecClient;->doStopService()Lcom/ipsec/client/IPsecError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;)Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;
    .locals 0
    .param p0    # Lcom/ipsec/client/IPsecClient;
    .param p1    # Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    iput-object p1, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    return-object p1
.end method

.method private decodeConnectionStateBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecConnectionState;)Z
    .locals 17
    .param p1    # Landroid/os/Bundle;
    .param p2    # Lcom/ipsec/client/IPsecConnectionState;

    const-string v14, "IPSC/IPsecClient"

    const-string v15, "getConnectionState() result: "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "gateway-ip"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecConnectionState;->setGatewayIP(Ljava/lang/String;)V

    const-string v14, "local-ip"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecConnectionState;->setLocalIP(Ljava/lang/String;)V

    const-string/jumbo v14, "remote-identity"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecConnectionState;->setRemoteIdentity(Ljava/lang/String;)V

    const-string/jumbo v14, "remote-identity-type"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-static {v13}, Lcom/ipsec/client/IPsecConnection$IdentityType;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecConnectionState;->setRemoteIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V

    :cond_0
    const-string v14, "own-identity"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecConnectionState;->setOwnIdentity(Ljava/lang/String;)V

    const-string v14, "own-identity-type"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-static {v13}, Lcom/ipsec/client/IPsecConnection$IdentityType;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecConnectionState;->setOwnIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V

    :cond_1
    const-string/jumbo v14, "rac-ip"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    move-object v2, v8

    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_7

    aget-object v1, v2, v5

    if-nez v1, :cond_2

    const-string v14, "IPSC/IPsecClient"

    const-string v15, "Skipping null rac-ip!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {v1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4Subnet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    sget-object v14, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v1}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-static {v1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6Subnet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    sget-object v14, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v1}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v14, "IPSC/IPsecClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "invalid rac-ip: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string/jumbo v14, "rac-dns"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    move-object v2, v9

    array-length v6, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_b

    aget-object v4, v2, v5

    if-nez v4, :cond_8

    const-string v14, "IPSC/IPsecClient"

    const-string v15, "Skipping null rac-dns!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    invoke-static {v4}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    sget-object v14, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v4}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-static {v4}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    sget-object v14, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v4}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string v14, "IPSC/IPsecClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "invalid rac-dns: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    const-string/jumbo v14, "rac-subnet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    move-object v2, v10

    array-length v6, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_f

    aget-object v12, v2, v5

    if-nez v12, :cond_c

    const-string v14, "IPSC/IPsecClient"

    const-string v15, "Skipping null rac-subnet!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    invoke-static {v12}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4Subnet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    sget-object v14, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v12}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessSubnet(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    invoke-static {v12}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6Subnet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    sget-object v14, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v12}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessSubnet(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const-string v14, "IPSC/IPsecClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "invalid rac-subnet: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    const-string/jumbo v14, "rac-vendor-attr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    if-eqz v11, :cond_11

    move-object v2, v11

    array-length v6, v2

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v6, :cond_11

    aget-object v7, v2, v5

    if-nez v7, :cond_10

    const-string v14, "IPSC/IPsecClient"

    const-string v15, "Skipping null rac-vendor-attr!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_10
    move-object v3, v7

    check-cast v3, Landroid/os/Bundle;

    const-string/jumbo v14, "type"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-string/jumbo v15, "value"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Lcom/ipsec/client/IPsecConnectionState;->addIkeConfigurationVendorAttribute(I[B)V

    goto :goto_7

    :cond_11
    const-string/jumbo v14, "virtual-adapter-name"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecConnectionState;->setVirtualAdapterName(Ljava/lang/String;)V

    const-string/jumbo v14, "virtual-adapter-mtu"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecConnectionState;->setVirtualAdapterMTU(I)V

    const/4 v14, 0x1

    return v14
.end method

.method private decodeRelayDataBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z
    .locals 10
    .param p1    # Landroid/os/Bundle;
    .param p2    # Lcom/ipsec/client/IPsecRelayData;

    const/4 v9, 0x0

    const-string v6, "IPSC/IPsecClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "queryData() result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "signature-data"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "signature-hash-algorithm"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    const-string/jumbo v6, "signature-data"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/ipsec/client/IPsecRelayData;->setSignatureData([B)V

    const-string/jumbo v6, "signature-hash-algorithm"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/ipsec/client/IPsecRelayData;->setHashAlgorithm(Ljava/lang/String;)V

    :cond_1
    const-string v6, "dialog-message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "dialog-message"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/ipsec/client/IPsecRelayData;->setDialogMessage(Ljava/lang/String;)V

    :cond_2
    const-string v6, "dialog-attributes"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "dialog-attributes"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    if-nez v5, :cond_3

    const-string v6, "IPSC/IPsecClient"

    const-string v7, "Skipping null dialog-attribute!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v1, v5

    check-cast v1, Landroid/os/Bundle;

    const-string v6, "name"

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lcom/ipsec/client/IPsecRelayData;->addDialogAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private doStopService()Lcom/ipsec/client/IPsecError;
    .locals 13

    const-string v9, "IPSC/IPsecClient"

    const-string/jumbo v10, "stopService()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget-object v10, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v11, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-direct {v0, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ipsec/client/IPsecConnection;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V

    goto :goto_0

    :catchall_0
    move-exception v9

    :goto_1
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v9

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v9, :cond_1

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC/IPsecClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    move-object v7, v6

    :goto_2
    return-object v7

    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string/jumbo v9, "version"

    const-string v11, "3.0"

    invoke-virtual {v5, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    iget-object v11, p0, Lcom/ipsec/client/IPsecClient;->mCallback:Lcom/ipsec/client/IIPsecServiceCallback;

    invoke-interface {v9, v11}, Lcom/ipsec/client/IIPsecService;->unregisterCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v9, v5}, Lcom/ipsec/client/IIPsecService;->stopService(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v8

    if-nez v8, :cond_2

    :try_start_7
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC/IPsecClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (return value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    move-object v4, v5

    move-object v7, v6

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC/IPsecClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    move-object v4, v5

    move-object v7, v6

    goto :goto_2

    :cond_2
    const-string v9, "IPSC/IPsecClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService(): result version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "version"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "error"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC/IPsecClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "error"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    move-object v4, v5

    move-object v7, v6

    goto/16 :goto_2

    :cond_3
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    if-eqz v9, :cond_4

    sget-object v9, Lcom/ipsec/client/IPsecClient;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    invoke-virtual {v9, v11}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_4
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/ipsec/client/IPsecClient;->mLogFilePath:Ljava/lang/String;

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string v9, "IPSC/IPsecClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stopService() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    move-object v7, v6

    goto/16 :goto_2

    :catchall_2
    move-exception v9

    move-object v4, v5

    goto/16 :goto_1
.end method

.method private encodeConnectBundle(Lcom/ipsec/client/IPsecConnection;Ljava/lang/StringBuilder;)Landroid/os/Bundle;
    .locals 38
    .param p1    # Lcom/ipsec/client/IPsecConnection;
    .param p2    # Ljava/lang/StringBuilder;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/16 v32, 0x0

    const-string/jumbo v35, "version"

    const-string v36, "3.0"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "name"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getGateway()Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_1

    sget-object v35, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_GW_ADDRESS:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const-string v35, "gateway"

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v35, v0

    if-nez v35, :cond_3

    const-string/jumbo v35, "subnet-type"

    sget-object v36, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getInternalSubnets()Ljava/util/Vector;

    move-result-object v34

    const/4 v10, 0x0

    if-eqz v34, :cond_4

    invoke-virtual/range {v34 .. v34}, Ljava/util/Vector;->size()I

    move-result v35

    if-lez v35, :cond_4

    invoke-virtual/range {v34 .. v34}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v10, v0, [Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2
    :goto_2
    const-string v35, "internal-subnet"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getInterfaces()Ljava/util/Vector;

    move-result-object v17

    if-nez v17, :cond_6

    const-string v35, "interface"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v35

    if-nez v35, :cond_8

    sget-object v35, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_HOST_AUTHENTICATION:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v35, "subnet-type"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v35, v0

    sget-object v36, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_5

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v10, v0, [Ljava/lang/String;

    const/16 v35, 0x0

    new-instance v36, Ljava/lang/String;

    const-string v37, "0.0.0.0/0"

    invoke-direct/range {v36 .. v37}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v36, v10, v35

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v35, v0

    sget-object v36, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_2

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v10, v0, [Ljava/lang/String;

    const/16 v35, 0x0

    new-instance v36, Ljava/lang/String;

    const-string v37, "::/0"

    invoke-direct/range {v36 .. v37}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v36, v10, v35

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Landroid/os/Bundle;

    move-object/from16 v16, v0

    const/4 v13, 0x0

    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v13, v0, :cond_7

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ipsec/client/IPsecNetworkInterface;

    new-instance v35, Landroid/os/Bundle;

    invoke-direct/range {v35 .. v35}, Landroid/os/Bundle;-><init>()V

    aput-object v35, v16, v13

    aget-object v35, v16, v13

    const-string v36, "name"

    invoke-virtual {v15}, Lcom/ipsec/client/IPsecNetworkInterface;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v35, v16, v13

    const-string/jumbo v36, "precedence"

    invoke-virtual {v15}, Lcom/ipsec/client/IPsecNetworkInterface;->getPrecedence()I

    move-result v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    const-string v35, "interface"

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v35

    sget-object v36, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PRE_SHARED:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPreSharedKey()Ljava/lang/String;

    move-result-object v35

    if-nez v35, :cond_d

    sget-object v35, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PRESHARED_KEY:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v35

    sget-object v36, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapMethodMask()I

    move-result v35

    if-nez v35, :cond_d

    sget-object v35, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_EAP_METHOD:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v35

    sget-object v36, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PUBLIC_KEY:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v35

    if-nez v35, :cond_b

    sget-object v35, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v35

    if-nez v35, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKeyAlgorithm()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKeyLength()I

    move-result v35

    if-nez v35, :cond_d

    :cond_c
    sget-object v35, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PRIVATE_KEY:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_d
    const-string v35, "host-authentication"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "user-authentication"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isUserAuthentication()Z

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getTunnelMode()Lcom/ipsec/client/IPsecConnection$TunnelMode;

    move-result-object v35

    if-nez v35, :cond_e

    sget-object v35, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_TUNNEL_MODE:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v35, "tunnel-mode"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getTunnelMode()Lcom/ipsec/client/IPsecConnection$TunnelMode;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "disable-split-tunneling"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isSplitTunnelingDisabled()Z

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isPerfectForwardSecrecy()Z

    move-result v32

    const-string/jumbo v35, "perfect-forward-secrecy"

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v35, 0x1

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecGroups()Ljava/util/Vector;

    move-result-object v29

    if-eqz v29, :cond_10

    invoke-virtual/range {v29 .. v29}, Ljava/util/Vector;->size()I

    move-result v35

    if-lez v35, :cond_10

    invoke-virtual/range {v29 .. v29}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v13, v0, :cond_f

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v28, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_f
    const-string v35, "ipsec-group"

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIPsecLifeType()Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    move-result-object v35

    if-nez v35, :cond_11

    sget-object v35, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IPSEC_LIFETIME:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_11
    const-string v35, "ipsec-life-type"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIPsecLifeType()Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "ipsec-life-value"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIPsecLifeValue()I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v35, "ipsec-anti-replay"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isIPsecAntiReplay()Z

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecEncryptions()Ljava/util/Vector;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v13, v0, :cond_12

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v26, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_12
    const-string v35, "ipsec-encryption"

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecIntegritys()Ljava/util/Vector;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v13, 0x0

    :goto_7
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v13, v0, :cond_13

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v30, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_13
    const-string v35, "ipsec-integrity"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllGroups()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v13, v0, :cond_14

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v20, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_14
    const-string v35, "group"

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v35, "ike-life"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIkeLife()I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v35, "ike-version"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIkeVersion()Lcom/ipsec/client/IPsecConnection$IkeVersion;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "aggressive-mode"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isAggressiveMode()Z

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIkeEncryptions()Ljava/util/Vector;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v13, 0x0

    :goto_9
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v13, v0, :cond_15

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v18, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_15
    const-string v35, "ike-encryption"

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIkeIntegritys()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v13, 0x0

    :goto_a
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v13, v0, :cond_16

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v22, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_16
    const-string v35, "ike-integrity"

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v35, "mobike"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isMobike()Z

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v35, "ike-window-size"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIkeWindowSize()I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v35

    if-nez v35, :cond_17

    sget-object v35, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_OWN_IDENTITY:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_17
    const-string v35, "own-identity-type"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "own-identity"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getOwnIdentity()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRemoteIdentity()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_18

    const-string/jumbo v35, "remote-identity-type"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRemoteIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "remote-identity"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRemoteIdentity()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const-string/jumbo v35, "username"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getUsername()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "password"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPassword()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isHybridMode()Z

    move-result v35

    if-eqz v35, :cond_19

    const-string v35, "hybrid-mode"

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_19
    const-string/jumbo v35, "pre-shared-key"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPreSharedKey()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "eap-methods"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapMethodMask()I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v35, "dpd-timeout"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getDpdTimeout()I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v35, "natt-keepalive-timeout"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getNattKeepaliveTimeout()I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v35, "connection-timeout"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getConnectTimeout()I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllCaCertificateDatas()Ljava/util/Vector;

    move-result-object v7

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v35

    if-lez v35, :cond_1b

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v6, v0, [Landroid/os/Parcelable;

    const/4 v13, 0x0

    :goto_b
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v13, v0, :cond_1a

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v36, "data"

    invoke-virtual {v7, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    aput-object v4, v6, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_1a
    const-string v35, "ca-certificate"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllImCertificateDatas()Ljava/util/Vector;

    move-result-object v25

    if-eqz v25, :cond_23

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v35

    if-lez v35, :cond_23

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v24, v0

    const/4 v13, 0x0

    :goto_d
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v13, v0, :cond_1c

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v36, "data"

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    aput-object v4, v24, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_1b
    const-string v35, "ca-certificate"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_c

    :cond_1c
    const-string v35, "im-certificate"

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :goto_e
    const-string v35, "certificate"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getCertificateData()[B

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v35, "private-key"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKeyData()[B

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v35, "private-key-format"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKeyFormat()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "private-key-algorithm"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKeyAlgorithm()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKeyLength()I

    move-result v35

    if-lez v35, :cond_1d

    const-string/jumbo v35, "private-key-length"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKeyLength()I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v35

    if-nez v35, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_21

    :cond_1e
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_24

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v2, v0, [Ljava/lang/String;

    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_1f

    add-int/lit8 v12, v11, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v2, v11

    move v11, v12

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_20

    add-int/lit8 v12, v11, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v2, v11

    move v11, v12

    :cond_20
    const-string/jumbo v35, "request-rac-ip"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_22

    const-string/jumbo v35, "virtual-adapter-name"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const-string/jumbo v35, "virtual-adapter-conf-method"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterConfiguration()Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "global-dns-conf"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getGlobalDnsConfiguration()Z

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllRequestIkeCfgAttributes()Ljava/util/Vector;

    move-result-object v9

    if-eqz v9, :cond_26

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v35

    if-lez v35, :cond_26

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v8, v0, [Landroid/os/Bundle;

    const/4 v13, 0x0

    invoke-virtual {v9}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_25

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    new-instance v35, Landroid/os/Bundle;

    invoke-direct/range {v35 .. v35}, Landroid/os/Bundle;-><init>()V

    aput-object v35, v8, v13

    aget-object v35, v8, v13

    const-string/jumbo v36, "type"

    invoke-virtual {v3}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getType()I

    move-result v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    aget-object v35, v8, v13

    const-string/jumbo v36, "value"

    invoke-virtual {v3}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getData()[B

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_23
    const-string v35, "im-certificate"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_e

    :cond_24
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v2, v0, [Ljava/lang/String;

    goto/16 :goto_f

    :cond_25
    const-string/jumbo v35, "request-rac-vendor-attr"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getCertCheckRevocation()Z

    move-result v35

    if-eqz v35, :cond_0

    const-string v35, "cert-check-revocation"

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ipsec/client/IPsecClient;
    .locals 3
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/ipsec/client/IPsecClient;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/ipsec/client/IPsecClient;->mInstance:Lcom/ipsec/client/IPsecClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ipsec/client/IPsecClient;

    invoke-direct {v0, p0}, Lcom/ipsec/client/IPsecClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ipsec/client/IPsecClient;->mInstance:Lcom/ipsec/client/IPsecClient;

    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecClient;->mInstance:Lcom/ipsec/client/IPsecClient;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/ipsec/client/IPsecError;

    move-object v1, p2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/ipsec/client/IPsecError;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "IPSC/IPsecClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown IPsecError string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V
    .locals 5
    .param p1    # Lcom/ipsec/client/IPsecConnection;
    .param p2    # Lcom/ipsec/client/IPsecEvent;
    .param p3    # Ljava/lang/String;
    .param p4    # I

    move-object v0, p2

    new-instance v1, Lcom/ipsec/client/IPsecEventData;

    invoke-direct {v1}, Lcom/ipsec/client/IPsecEventData;-><init>()V

    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ipsec/client/IIPsecListener;

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    invoke-virtual {v1, p3}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/ipsec/client/IPsecClient$2;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/ipsec/client/IPsecClient$2;-><init>(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecListener;Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public checkConnection(Lcom/ipsec/client/IPsecConnection;I)Lcom/ipsec/client/IPsecError;
    .locals 9
    .param p1    # Lcom/ipsec/client/IPsecConnection;
    .param p2    # I

    const-string v5, "IPSC/IPsecClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkConnection("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    const/4 v4, 0x0

    sget-object v6, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v5, :cond_3

    const-string v5, "IPSC/IPsecClient"

    const-string v7, "checkConnection(): invalid service state"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    :cond_0
    :goto_0
    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v5, :cond_1

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "version"

    const-string v7, "3.0"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "connection-id"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "connection-timeout"

    invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v5, v2}, Lcom/ipsec/client/IIPsecService;->checkConnection(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    :cond_1
    :goto_1
    :try_start_2
    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v5, :cond_2

    if-nez v4, :cond_7

    const-string v5, "IPSC/IPsecClient"

    const-string v7, "checkConnection(): no result available"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    :cond_2
    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "IPSC/IPsecClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkConnection() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    if-nez p1, :cond_4

    :try_start_3
    const-string v5, "IPSC/IPsecClient"

    const-string v7, "checkConnection(): null connection"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "IPSC/IPsecClient"

    const-string v7, "checkConnection(): connection not connected"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    goto :goto_0

    :cond_5
    const/4 v5, 0x1

    if-ge p2, v5, :cond_6

    const-string v5, "IPSC/IPsecClient"

    const-string v7, "checkConnection(): invalid timeout"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getIkeVersion()Lcom/ipsec/client/IPsecConnection$IkeVersion;

    move-result-object v5

    sget-object v7, Lcom/ipsec/client/IPsecConnection$IkeVersion;->IKE_VERSION_2:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    if-eq v5, v7, :cond_0

    const-string v5, "IPSC/IPsecClient"

    const-string v7, "checkConnection(): invalid IKE version"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_VERSION:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v5, "IPSC/IPsecClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkConnection(): remote exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto :goto_1

    :cond_7
    const-string v5, "error"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "IPSC/IPsecClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkConnection(): result contains error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "error"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method public connect(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecError;
    .locals 1
    .param p1    # Lcom/ipsec/client/IPsecConnection;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ipsec/client/IPsecClient;->connect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;
    .locals 13
    .param p1    # Lcom/ipsec/client/IPsecConnection;
    .param p2    # Lcom/ipsec/client/IPsecEventData;

    const/4 v12, 0x0

    const/4 v11, 0x0

    const-string v7, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connect("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v7, :cond_0

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (invalid service state)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    if-nez p1, :cond_1

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (null connection)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    move-object v5, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v7

    if-eqz v7, :cond_2

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_ALREADY_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (already connected)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    move-object v5, v4

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/ipsec/client/IPsecClient;->encodeConnectBundle(Lcom/ipsec/client/IPsecConnection;Ljava/lang/StringBuilder;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v7, v9}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v4

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (failing parameter "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v4

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v3}, Lcom/ipsec/client/IIPsecService;->connect(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    if-nez v6, :cond_4

    :try_start_2
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (no return value)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    move-object v5, v4

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (remote exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    move-object v5, v4

    goto/16 :goto_0

    :cond_4
    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect(): result version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "version"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v7, v9}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v4

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "error"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ike-error-value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ike-error-value"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-eq v4, v7, :cond_5

    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_8

    :cond_5
    const-string v7, "connection-id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (invalid result)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    move-object v5, v4

    goto/16 :goto_0

    :cond_6
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v0}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_a

    if-eqz p2, :cond_9

    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    invoke-virtual {p2, v12}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    invoke-virtual {p2, v11}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    :goto_2
    const-string v7, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connect() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v7

    :cond_9
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    invoke-direct {p0, p1, v7, v12, v11}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_2

    :cond_a
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_c

    if-eqz p2, :cond_b

    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    invoke-virtual {p2, v12}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    invoke-virtual {p2, v11}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto :goto_2

    :cond_b
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    const-string v8, "error"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ike-error-value"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_2

    :cond_c
    if-eqz p2, :cond_d

    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const-string v7, "ike-error-value"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto :goto_2

    :cond_d
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    const-string v8, "error"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ike-error-value"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public continueConnect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;Lcom/ipsec/client/IPsecRelayData;)Lcom/ipsec/client/IPsecError;
    .locals 18
    .param p1    # Lcom/ipsec/client/IPsecConnection;
    .param p2    # Lcom/ipsec/client/IPsecEventData;
    .param p3    # Lcom/ipsec/client/IPsecRelayData;

    const-string v14, "IPSC/IPsecClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "continueConnect("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v14, :cond_0

    sget-object v11, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v14, "IPSC/IPsecClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "continueConnect() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (invalid service state)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    move-object v12, v11

    :goto_0
    return-object v12

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v14

    if-nez v14, :cond_2

    :cond_1
    sget-object v11, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    const-string v14, "IPSC/IPsecClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "continueConnect() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (null connection)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    move-object v12, v11

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/ipsec/client/IPsecClient;->encodeConnectBundle(Lcom/ipsec/client/IPsecConnection;Ljava/lang/StringBuilder;)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v16, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v11

    const-string v14, "IPSC/IPsecClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "continueConnect() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (failing parameter "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    move-object v12, v11

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v5

    const-string v14, "connection-id"

    invoke-virtual {v10, v14, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Lcom/ipsec/client/IPsecRelayData;->getSignatureData()[B

    move-result-object v14

    if-eqz v14, :cond_4

    const-string/jumbo v14, "signature-data"

    invoke-virtual/range {p3 .. p3}, Lcom/ipsec/client/IPsecRelayData;->getSignatureData()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/ipsec/client/IPsecRelayData;->getDialogAttributes()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v14

    if-lez v14, :cond_6

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v14

    new-array v4, v14, [Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    aput-object v14, v4, v8

    aget-object v14, v4, v8

    const-string v16, "name"

    invoke-virtual {v2}, Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;->getAttributeName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v14, v4, v8

    const-string/jumbo v16, "value"

    invoke-virtual {v2}, Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;->getAttributeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const-string v14, "dialog-attributes"

    invoke-virtual {v10, v14, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v14, v10}, Lcom/ipsec/client/IIPsecService;->connect(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    if-nez v13, :cond_7

    :try_start_2
    sget-object v11, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v14, "IPSC/IPsecClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "continueConnect(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (no return value)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    move-object v12, v11

    goto/16 :goto_0

    :catch_0
    move-exception v6

    sget-object v11, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v14, "IPSC/IPsecClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "continueConnect(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (remote exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    move-object v12, v11

    goto/16 :goto_0

    :cond_7
    const-string v14, "IPSC/IPsecClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "continueConnect(): result version: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "version"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "error"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "error"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v16, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v11

    const-string v14, "IPSC/IPsecClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "connect(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (error: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "error"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", ike-error-value: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ike-error-value"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v14, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v11, v14, :cond_b

    if-eqz p2, :cond_8

    sget-object v14, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    iput-object v14, v0, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    :cond_8
    :goto_3
    const-string v14, "IPSC/IPsecClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "continueConnect() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v11

    goto/16 :goto_0

    :cond_9
    :try_start_3
    const-string v14, "connection-id"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_a

    sget-object v11, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v14, "IPSC/IPsecClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "connect() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (invalid result)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    move-object v12, v11

    goto/16 :goto_0

    :cond_a
    sget-object v11, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v14

    :cond_b
    sget-object v14, Lcom/ipsec/client/IPsecError;->IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    if-ne v11, v14, :cond_c

    if-eqz p2, :cond_8

    sget-object v14, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    iput-object v14, v0, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto :goto_3

    :cond_c
    if-eqz p2, :cond_8

    sget-object v14, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    iput-object v14, v0, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const-string v14, "error"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const-string v14, "ike-error-value"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto/16 :goto_3
.end method

.method public disconnect(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecError;
    .locals 1
    .param p1    # Lcom/ipsec/client/IPsecConnection;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ipsec/client/IPsecClient;->disconnect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;
    .locals 13
    .param p1    # Lcom/ipsec/client/IPsecConnection;
    .param p2    # Lcom/ipsec/client/IPsecEventData;

    const/4 v12, 0x0

    const/4 v11, 0x0

    const-string v7, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disconnect("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    sget-object v8, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v7, :cond_0

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (invalid service state)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    if-nez p1, :cond_1

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (null connection)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    move-object v5, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v7

    if-nez v7, :cond_2

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (connection not connected)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    move-object v5, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string/jumbo v7, "version"

    const-string v9, "3.0"

    invoke-virtual {v3, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "connection-id"

    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v3}, Lcom/ipsec/client/IIPsecService;->disconnect(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    if-nez v6, :cond_3

    :try_start_5
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (no return value)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v2, v3

    move-object v5, v4

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v7

    :catchall_1
    move-exception v7

    :goto_1
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v7

    :catch_0
    move-exception v1

    :try_start_8
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (remote exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    move-object v2, v3

    move-object v5, v4

    goto/16 :goto_0

    :cond_3
    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect(): result version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "version"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v7, v9}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v4

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "error"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ike-error-value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ike-error-value"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_6

    if-eqz p2, :cond_5

    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    invoke-virtual {p2, v12}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    invoke-virtual {p2, v11}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    :goto_3
    move-object v2, v3

    move-object v5, v4

    goto/16 :goto_0

    :cond_4
    :try_start_9
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC/IPsecClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v7

    move-object v2, v3

    goto/16 :goto_1

    :cond_5
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    invoke-direct {p0, p1, v7, v12, v11}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const-string v7, "ike-error-value"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto :goto_3

    :cond_7
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    const-string v8, "error"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ike-error-value"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_3
.end method

.method public getIPsecConnectionState(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecConnectionState;
    .locals 10
    .param p1    # Lcom/ipsec/client/IPsecConnection;

    const/4 v5, 0x0

    const-string v6, "IPSC/IPsecClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIPsecConnectionState("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/ipsec/client/IPsecConnectionState;

    invoke-direct {v4}, Lcom/ipsec/client/IPsecConnectionState;-><init>()V

    const/4 v0, 0x0

    sget-object v6, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v7, :cond_0

    const-string v7, "IPSC/IPsecClient"

    const-string v8, "getIPsecConnectionState():  (invalid service state)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    const-string v7, "IPSC/IPsecClient"

    const-string v8, "getIPsecConnectionState():  (invalid connection)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "version"

    const-string v8, "3.0"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "connection-id"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v2}, Lcom/ipsec/client/IIPsecService;->connectionState(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    const-string v6, "IPSC/IPsecClient"

    const-string v7, "getIPsecConnectionState():  (no return value)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v7, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIPsecConnectionState():  (remote exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :cond_3
    const-string v6, "IPSC/IPsecClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIPsecConnectionState(): result version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "version"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "error"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "IPSC/IPsecClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIPsecConnectionState() =  (error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "error"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/ipsec/client/IPsecClient;->decodeConnectionStateBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecConnectionState;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "IPSC/IPsecClient"

    const-string v7, "getIPsecConnectionState(): failed to decode result bundle"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto/16 :goto_0

    :cond_5
    const-string v5, "IPSC/IPsecClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIPsecConnectionState(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getLogReader()Lcom/ipsec/client/IPsecLogReader;
    .locals 10

    const/4 v5, 0x0

    const-string v6, "IPSC/IPsecClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLogReader() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mLogFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v2, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v7, :cond_0

    const-string v7, "IPSC/IPsecClient"

    const-string v8, "getLogReader(): no log available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v3, v5

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "version"

    const-string v8, "3.0"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v1}, Lcom/ipsec/client/IIPsecService;->getLog(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-nez v4, :cond_1

    :try_start_2
    const-string v7, "IPSC/IPsecClient"

    const-string v8, "getLogReader(): no log available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "IPSC/IPsecClient"

    const-string v8, "getLogReader(): no log available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    :cond_1
    const-string v7, "error"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLogReader() failed (error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "error"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    :cond_2
    const-string v7, "log-content"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    :try_start_3
    new-instance v3, Lcom/ipsec/client/IPsecLogReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    const-string v9, "log-content"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v7}, Lcom/ipsec/client/IPsecLogReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    :cond_3
    monitor-exit v6

    move-object v3, v5

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    :goto_1
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_1
.end method

.method public isConnected(Lcom/ipsec/client/IPsecConnection;)Z
    .locals 10
    .param p1    # Lcom/ipsec/client/IPsecConnection;

    const-string v6, "IPSC/IPsecClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnected("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v7, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v6, :cond_0

    const/4 v3, 0x0

    const-string v6, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (invalid service state)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    move v4, v3

    :goto_0
    return v4

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const/4 v3, 0x0

    const-string v6, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (invalid connection)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    move v4, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "version"

    const-string v8, "3.0"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "connection-id"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v6, v2}, Lcom/ipsec/client/IIPsecService;->isConnected(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v3, 0x0

    :try_start_2
    const-string v6, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (no return value)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    const-string v6, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (remote exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    move v4, v3

    goto/16 :goto_0

    :cond_3
    const-string v6, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): result version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "version"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    const-string v6, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "error"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    move v4, v3

    goto/16 :goto_0

    :cond_4
    const-string v6, "connected"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v3, 0x0

    const-string v6, "IPSC/IPsecClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (invalid result)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    move v4, v3

    goto/16 :goto_0

    :cond_5
    const-string v6, "connected"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "IPSC/IPsecClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6
.end method

.method public isServiceStarted()Z
    .locals 4

    sget-object v2, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "IPSC/IPsecClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceStarted() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryData(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecRelayData;)Lcom/ipsec/client/IPsecError;
    .locals 8
    .param p1    # Lcom/ipsec/client/IPsecConnection;
    .param p2    # Lcom/ipsec/client/IPsecRelayData;

    const-string v4, "IPSC/IPsecClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryData("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v5, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v4, :cond_0

    const-string v4, "IPSC/IPsecClient"

    const-string/jumbo v6, "queryData():  (invalid service state)"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    monitor-exit v5

    :goto_0
    return-object v4

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const-string v4, "IPSC/IPsecClient"

    const-string/jumbo v6, "queryData():  (invalid connection)"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "version"

    const-string v6, "3.0"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "connection-id"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v4, v2}, Lcom/ipsec/client/IIPsecService;->connectionState(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_3

    const-string v4, "IPSC/IPsecClient"

    const-string/jumbo v5, "queryData():  (no return value)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v4, "IPSC/IPsecClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryData():  (remote exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_3
    const-string v4, "IPSC/IPsecClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryData(): result version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "version"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "error"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "IPSC/IPsecClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryData() =  (error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v3, p2}, Lcom/ipsec/client/IPsecClient;->decodeRelayDataBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "IPSC/IPsecClient"

    const-string v5, "getIPsecConnectionState(): failed to decode result bundle"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_0

    :cond_5
    const-string v4, "IPSC/IPsecClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryData(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_0
.end method

.method public setServiceListener(Lcom/ipsec/client/IIPsecListener;)V
    .locals 3
    .param p1    # Lcom/ipsec/client/IIPsecListener;

    const-string v0, "IPSC/IPsecClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setServiceListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0
.end method

.method public startService()V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "IPSC/IPsecClient"

    const-string/jumbo v3, "startService()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    sget-object v3, Lcom/ipsec/client/IPsecClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v2, :cond_0

    new-instance v2, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;-><init>(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$1;)V

    iput-object v2, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    sget-object v2, Lcom/ipsec/client/IPsecClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    invoke-static {v2, v4}, Lcom/ipsec/client/IPsecServiceInterface;->connectService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "IPSC/IPsecClient"

    const-string/jumbo v4, "startService(): Failed to connect to IPsecService"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IIPsecListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1, v5}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    :cond_1
    invoke-direct {p0}, Lcom/ipsec/client/IPsecClient;->doStopService()Lcom/ipsec/client/IPsecError;

    :cond_2
    const-string v2, "IPSC/IPsecClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startService() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public stopService()Lcom/ipsec/client/IPsecError;
    .locals 4

    invoke-direct {p0}, Lcom/ipsec/client/IPsecClient;->doStopService()Lcom/ipsec/client/IPsecError;

    move-result-object v1

    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IIPsecListener;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    :cond_0
    return-object v1
.end method
