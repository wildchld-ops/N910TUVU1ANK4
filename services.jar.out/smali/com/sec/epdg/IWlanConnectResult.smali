.class public Lcom/sec/epdg/IWlanConnectResult;
.super Ljava/lang/Object;
.source "IWlanConnectResult.java"


# instance fields
.field private mCId:I

.field private mIpSecConnection:Lcom/ipsec/client/IPsecConnection;

.field private mIwlanError:Lcom/sec/epdg/IWlanError;


# direct methods
.method public constructor <init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/epdg/IWlanConnectResult;->mCId:I

    iput-object p2, p0, Lcom/sec/epdg/IWlanConnectResult;->mIpSecConnection:Lcom/ipsec/client/IPsecConnection;

    iput-object p3, p0, Lcom/sec/epdg/IWlanConnectResult;->mIwlanError:Lcom/sec/epdg/IWlanError;

    return-void
.end method


# virtual methods
.method public getCid()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanConnectResult;->mCId:I

    return v0
.end method

.method public getIPSecConnection()Lcom/ipsec/client/IPsecConnection;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanConnectResult;->mIpSecConnection:Lcom/ipsec/client/IPsecConnection;

    return-object v0
.end method

.method public getIwlanError()Lcom/sec/epdg/IWlanError;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanConnectResult;->mIwlanError:Lcom/sec/epdg/IWlanError;

    return-object v0
.end method
