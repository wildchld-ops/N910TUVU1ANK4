.class public Lcom/ipsec/client/IPsecEventData;
.super Ljava/lang/Object;
.source "IPsecEventData.java"


# instance fields
.field private mConnection:Lcom/ipsec/client/IPsecConnection;

.field private mError:Ljava/lang/String;

.field protected mEvent:Lcom/ipsec/client/IPsecEvent;

.field private mIkeErrorValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnection()Lcom/ipsec/client/IPsecConnection;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/IPsecEventData;->mConnection:Lcom/ipsec/client/IPsecConnection;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/IPsecEventData;->mError:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Lcom/ipsec/client/IPsecEvent;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    return-object v0
.end method

.method public getIPsecError()Lcom/ipsec/client/IPsecError;
    .locals 3

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    iget-object v2, p0, Lcom/ipsec/client/IPsecEventData;->mError:Ljava/lang/String;

    if-nez v2, :cond_0

    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecEventData;->mError:Ljava/lang/String;

    invoke-static {v2}, Lcom/ipsec/client/IPsecError;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    goto :goto_1
.end method

.method public getIkeErrorValue()I
    .locals 1

    iget v0, p0, Lcom/ipsec/client/IPsecEventData;->mIkeErrorValue:I

    return v0
.end method

.method protected setConnection(Lcom/ipsec/client/IPsecConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/ipsec/client/IPsecEventData;->mConnection:Lcom/ipsec/client/IPsecConnection;

    return-void
.end method

.method protected setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipsec/client/IPsecEventData;->mError:Ljava/lang/String;

    return-void
.end method

.method protected setIkeErrorValue(I)V
    .locals 0

    iput p1, p0, Lcom/ipsec/client/IPsecEventData;->mIkeErrorValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPsecEventData{error=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ipsec/client/IPsecEventData;->mError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ipsec/client/IPsecEventData;->mConnection:Lcom/ipsec/client/IPsecConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ikeErrorValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ipsec/client/IPsecEventData;->mIkeErrorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
