.class Lcom/ipsec/client/IPsecUtil;
.super Ljava/lang/Object;
.source "IPsecUtil.java"


# static fields
.field protected static enableEpdg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ipsec/client/IPsecUtil;->enableEpdg:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static isAddressIPv4(Ljava/lang/String;)Z
    .locals 5
    .param p0    # Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    const/16 v4, 0xff

    invoke-static {v3, v2, v4}, Lcom/ipsec/client/IPsecUtil;->isNumber(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected static isAddressIPv4Subnet(Ljava/lang/String;)Z
    .locals 4
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected static isAddressIPv6(Ljava/lang/String;)Z
    .locals 8
    .param p0    # Ljava/lang/String;

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v6, "\\:"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    const/16 v7, 0x8

    if-gt v6, v7, :cond_0

    const/4 v3, 0x0

    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_3

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-gt v6, v7, :cond_0

    const/4 v4, 0x0

    :goto_2
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    aget-object v6, v2, v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ipsec/client/IPsecUtil;->isHexDigit(I)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static isAddressIPv6Subnet(Ljava/lang/String;)Z
    .locals 4
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected static isDigit(I)Z
    .locals 1
    .param p0    # I

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isEmailUsernameChar(I)Z
    .locals 2
    .param p0    # I

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const-string v0, "()<>@,;:\\\"[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isHexDigit(I)Z
    .locals 1
    .param p0    # I

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isHostnameChar(I)Z
    .locals 1
    .param p0    # I

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x3a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ipsec/client/IPsecUtil;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected static isNumber(Ljava/lang/String;II)Z
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/ipsec/client/IPsecUtil;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, p1, :cond_0

    if-gt v0, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected static isValidDn(Ljava/lang/String;)Z
    .locals 4
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/ipsec/client/IPsecUtil;->splitDistinguishedName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    array-length v2, v0

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected static isValidFqdn(Ljava/lang/String;)Z
    .locals 12
    .param p0    # Ljava/lang/String;

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_0

    const-string v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ".."

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v0, p0

    const-string v8, "\\:"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sget-boolean v8, Lcom/ipsec/client/IPsecUtil;->enableEpdg:Z

    if-ne v8, v7, :cond_2

    if-eqz v3, :cond_2

    array-length v8, v3

    if-ne v8, v10, :cond_2

    aget-object v8, v3, v6

    const-string v9, "\\-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v8, v2

    if-ne v8, v11, :cond_2

    aget-object v0, v3, v7

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v11, :cond_2

    aget-object v8, v2, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v10, :cond_0

    aget-object v8, v2, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v7, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v8, "\\."

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v8, v5

    if-lt v8, v10, :cond_0

    const/4 v1, 0x0

    :goto_2
    array-length v8, v5

    if-ge v1, v8, :cond_3

    aget-object v8, v5, v1

    invoke-static {v8}, Lcom/ipsec/client/IPsecUtil;->isValidHostnamePart(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v6, v7

    goto :goto_0
.end method

.method protected static isValidHostnamePart(Ljava/lang/String;)Z
    .locals 4
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3f

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ipsec/client/IPsecUtil;->isHostnameChar(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected static isValidIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)Z
    .locals 3
    .param p0    # Lcom/ipsec/client/IPsecConnection$IdentityType;
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    if-eq p0, v2, :cond_1

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV6_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    if-eq p0, v2, :cond_1

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IdentityType;->FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    if-ne p0, v2, :cond_3

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isValidFqdn(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IdentityType;->USER_FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    if-ne p0, v2, :cond_4

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isValidUserFqdn(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IdentityType;->DN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    if-ne p0, v2, :cond_5

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isValidDn(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/ipsec/client/IPsecConnection$IdentityType;->KEY_ID:Lcom/ipsec/client/IPsecConnection$IdentityType;

    if-eq p0, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method protected static isValidUserFqdn(Ljava/lang/String;)Z
    .locals 4
    .param p0    # Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ipsec/client/IPsecUtil;->isEmailUsernameChar(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ipsec/client/IPsecUtil;->isValidFqdn(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method protected static splitDistinguishedName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 15
    .param p0    # Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x3

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    const-string v10, ""

    const-string v6, ""

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v7, v12, :cond_f

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v11, :pswitch_data_0

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :pswitch_0
    const/16 v12, 0x41

    if-lt v4, v12, :cond_3

    const/16 v12, 0x5a

    if-le v4, v12, :cond_6

    :cond_3
    const/16 v12, 0x61

    if-lt v4, v12, :cond_4

    const/16 v12, 0x7a

    if-le v4, v12, :cond_6

    :cond_4
    const/16 v12, 0x30

    if-lt v4, v12, :cond_5

    const/16 v12, 0x39

    if-le v4, v12, :cond_6

    :cond_5
    const/16 v12, 0x2e

    if-ne v4, v12, :cond_7

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_7
    const/16 v12, 0x3d

    if-ne v4, v12, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v10, ""

    const/4 v5, 0x0

    const/4 v11, 0x1

    goto :goto_2

    :pswitch_1
    const/16 v12, 0x22

    if-ne v4, v12, :cond_9

    if-nez v8, :cond_8

    const/4 v8, 0x1

    :goto_3
    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    :cond_9
    const/16 v12, 0x5c

    if-ne v4, v12, :cond_a

    const/4 v11, 0x2

    goto :goto_2

    :cond_a
    const/16 v12, 0x20

    if-ne v4, v12, :cond_b

    if-nez v8, :cond_b

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    :cond_b
    const/16 v12, 0x2c

    if-ne v4, v12, :cond_c

    if-nez v8, :cond_c

    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v10, ""

    const/4 v11, 0x0

    goto :goto_2

    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x20

    if-ne v4, v12, :cond_d

    add-int/lit8 v5, v5, 0x1

    :goto_4
    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x0

    goto :goto_4

    :pswitch_2
    invoke-static {v4}, Lcom/ipsec/client/IPsecUtil;->isHexDigit(I)Z

    move-result v12

    if-eqz v12, :cond_e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x3

    goto/16 :goto_2

    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v11, 0x1

    goto/16 :goto_2

    :pswitch_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_f
    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v5, :cond_10

    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
