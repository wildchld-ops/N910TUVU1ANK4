.class public Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
.super Ljava/lang/Object;
.source "EpdgDefinePdpContextInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[DEFINEPDPCONTEXTINFO]"


# instance fields
.field private mApnName:[Ljava/lang/String;

.field private mCid:I

.field private mIpv4Addr:Ljava/lang/String;

.field private mIpv6Addr:Ljava/lang/String;

.field private mPcscfReq:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[B[B[BI)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mCid:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mApnName:[Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv6Addr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {p4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv4Addr:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput p5, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mPcscfReq:I

    return-void

    :catch_0
    move-exception v2

    const-string v3, "[DEFINEPDPCONTEXTINFO]"

    const-string v4, "Unexpected problem creating IPv6 Address"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "[DEFINEPDPCONTEXTINFO]"

    const-string v4, "Unexpected problem creating IPv4 Address"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getApnName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mApnName:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCid()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mCid:I

    return v0
.end method

.method public getIpv4Addr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv4Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6Addr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv6Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscfReq()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mPcscfReq:I

    return v0
.end method
