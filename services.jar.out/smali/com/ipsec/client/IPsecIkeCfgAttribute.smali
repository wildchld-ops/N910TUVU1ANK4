.class public Lcom/ipsec/client/IPsecIkeCfgAttribute;
.super Ljava/lang/Object;
.source "IPsecIkeCfgAttribute.java"


# instance fields
.field protected mData:[B

.field protected mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mType:I

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mData:[B

    iget-object v0, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mData:[B

    iget-object v1, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mData:[B

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mData:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPsecIkeCfgAttribute{type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mData:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", data={length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecIkeCfgAttribute;->mData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ", data=null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
