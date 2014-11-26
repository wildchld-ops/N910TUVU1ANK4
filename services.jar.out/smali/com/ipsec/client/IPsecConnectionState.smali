.class public Lcom/ipsec/client/IPsecConnectionState;
.super Ljava/lang/Object;
.source "IPsecConnectionState.java"


# instance fields
.field private mGatewayIP:Ljava/lang/String;

.field private mIP4RACAddresses:[Ljava/lang/String;

.field private mIP4RACDNS:[Ljava/lang/String;

.field private mIP4RACSubnets:[Ljava/lang/String;

.field private mIP6RACAddresses:[Ljava/lang/String;

.field private mIP6RACDNS:[Ljava/lang/String;

.field private mIP6RACSubnets:[Ljava/lang/String;

.field private mIkeCfgAttrs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecIkeCfgAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalIP:Ljava/lang/String;

.field private mOwnIdentity:Ljava/lang/String;

.field private mOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field private mRemoteIdentity:Ljava/lang/String;

.field private mRemoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field private mVirtualAdapterMtu:I

.field private mVirtualAdapterName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mGatewayIP:Ljava/lang/String;

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mLocalIP:Ljava/lang/String;

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentity:Ljava/lang/String;

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentity:Ljava/lang/String;

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterMtu:I

    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method protected addIkeConfigurationVendorAttribute(I[B)V
    .locals 2
    .param p1    # I
    .param p2    # [B

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    new-instance v1, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-direct {v1, p1, p2}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I[B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/ipsec/client/IPsecConnection$IPVersion;
    .param p2    # Ljava/lang/String;

    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    array-length v2, v3

    :cond_0
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    array-length v2, v3

    :cond_4
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    goto :goto_1
.end method

.method protected addRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/ipsec/client/IPsecConnection$IPVersion;
    .param p2    # Ljava/lang/String;

    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    array-length v2, v3

    :cond_0
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    array-length v2, v3

    :cond_4
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    goto :goto_1
.end method

.method protected addRemoteAccessSubnet(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/ipsec/client/IPsecConnection$IPVersion;
    .param p2    # Ljava/lang/String;

    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    array-length v2, v3

    :cond_0
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    array-length v2, v3

    :cond_4
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    goto :goto_1
.end method

.method public getGatewayIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mGatewayIP:Ljava/lang/String;

    return-object v0
.end method

.method public getIkeCfgAttributes(I)Ljava/util/Vector;
    .locals 6
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecIkeCfgAttribute;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getType()I

    move-result v3

    if-ne v3, p1, :cond_1

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :cond_0
    new-instance v3, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getType()I

    move-result v4

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getData()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I[B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getLocalIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mLocalIP:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public getRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/ipsec/client/IPsecConnection$IPVersion;

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    array-length v1, v2

    :cond_1
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    :cond_3
    if-lez v1, :cond_7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    array-length v1, v2

    :cond_5
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    return-object v0
.end method

.method public getRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/ipsec/client/IPsecConnection$IPVersion;

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    array-length v1, v2

    :cond_1
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    :cond_3
    if-lez v1, :cond_7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    array-length v1, v2

    :cond_5
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    return-object v0
.end method

.method public getRemoteAccessSubnets(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/ipsec/client/IPsecConnection$IPVersion;

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    array-length v1, v2

    :cond_1
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    :cond_3
    if-lez v1, :cond_7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    array-length v1, v2

    :cond_5
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    return-object v0
.end method

.method public getRemoteIdentity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public getVirtualAdapterMTU()I
    .locals 1

    iget v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterMtu:I

    return v0
.end method

.method public getVirtualAdapterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method protected setGatewayIP(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mGatewayIP:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected setLocalIP(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mLocalIP:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected setOwnIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentity:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected setOwnIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V
    .locals 0
    .param p1    # Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object p1, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-void
.end method

.method protected setRemoteIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentity:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected setRemoteIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V
    .locals 0
    .param p1    # Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object p1, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-void
.end method

.method protected setVirtualAdapterMTU(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterMtu:I

    return-void
.end method

.method protected setVirtualAdapterName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IPsecConnectionState{gatewayIP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mGatewayIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", localIP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mLocalIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remoteIdentityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remoteIdentity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ownIdentityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IP4RACAddresses=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "], IP6RACAddresses=["

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "], IP4RACDNS=["

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-string v2, "], IP6RACDNS=["

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const-string v2, "], IP4RACSubnets=["

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const-string v2, "], IP6RACSubnets=["

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "], virtualAdapterName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", virtualAdapterMtu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterMtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IkeCfgAttrs=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
