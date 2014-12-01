.class public Lcom/sec/epdg/ipc/EpdgIPCRxHandler;
.super Ljava/lang/Object;
.source "EpdgIPCRxHandler.java"

# interfaces
.implements Lcom/sec/epdg/ipc/RilToEpdgInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "[RILRECEIVER]"


# instance fields
.field private final mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedData:Lcom/sec/epdg/EpdgRilSharedData;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[RILRECEIVER]"

    const-string v1, "Initiating EpdgRxHandler"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    const-string v0, "[RILRECEIVER]"

    const-string v1, "Exiting EpdgRxHandler initialization"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getEpdgContextInfo()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/ipc/EpdgPdpContextInfo;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Ljava/util/ArrayList;

    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x1

    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-gt v1, v3, :cond_2

    invoke-static {}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getNewEpdgContextInfo()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setCid(I)V

    invoke-virtual {v0, v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setDataCallRsn(I)V

    invoke-virtual {v0, v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setDataCallType(I)V

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setState(I)V

    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_CMD_GET] -- RESPONSE -- connected-- (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setState(I)V

    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_CMD_GET] -- RESPONSE -- not connected-- (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_CMD_GET] -- RESPONSE -- none[dropped] -- (No Context info for cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method private static getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getMainCmd()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Suppressed"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleHandOverStatus(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "[RILRECEIVER]"

    const-string v3, "RX [NET_DATA_HANDOVER] -- RESPONSE -- true(always)"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->decodeHandoverResult()Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;

    move-result-object v0

    invoke-static {v1, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    new-instance v2, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->getPdnType()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->getAct()I

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_0

    :goto_0
    invoke-direct {v2, v3, v1}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;-><init>(IZ)V

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnHandoverResult(Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleIPSecConnectionInitRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->decodeDefinePdpContext()Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getCid()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-ne v3, v0, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "[RILRECEIVER]"

    const-string v4, "Define pdp context gets called again without gprs pdp context"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- falseDuplicate define pdp context for Cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    const-string v4, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- true -- Received Values: Cid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getCid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "APNName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "v4: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Suppressed"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "v6: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Suppressed"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "pcscfreq: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getPcscfReq()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv4Addr()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv6Addr()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid IWlan state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {v7, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_0

    :cond_5
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid Cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private handleIPSecConnectionToggleRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->decodePdpContext()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getCid()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    if-eq v2, v8, :cond_0

    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;

    if-nez v6, :cond_2

    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] -- RESPONSE -- false-- (previously missing [IPC_GPRS_DEFINE_PDP_CONTEXT]) (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for connect -- RESPONSE -- false-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attach received for cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in Connected state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto :goto_0

    :cond_3
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for connect -- RESPONSE -- true-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    new-instance v0, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv4Addr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv6Addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getPcscfReq()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnAttachRequest(Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for disconnect -- RESPONSE -- false-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detach received for cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in Disconnected/Disconnecting/Idle state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_0

    :cond_6
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for disconnect -- RESPONSE -- true-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    new-instance v2, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    invoke-direct {v2, v1}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnDetachRequest(Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_0
.end method

.method private handleNetRegQuery(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V
    .locals 5

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    const-string v2, "[RILRECEIVER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RX [NET_REGIST] -- RESPONSE -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v0, v4, :cond_0

    const-string v1, "EPDG AVAILABLE"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x30

    iget-object v2, p0, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v2

    invoke-static {v1, v2, v4}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetRegist(III)Z

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvEpdgStatusQuery(I)V

    return-void

    :cond_0
    const-string v1, "EPDG NOT AVAILABLE"

    goto :goto_0
.end method

.method private processIpcMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;)V
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mainCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Rx]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Rx]: Param: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getMainCmd()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CRITICAL : Unknown IPC Message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_2

    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    invoke-direct {p0, p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleHandOverStatus(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    check-cast p1, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    invoke-direct {p0, p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleNetRegQuery(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getcmdType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->getEpdgContextInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->SendEpdgCtxtInfo(Ljava/util/ArrayList;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    invoke-direct {p0, p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleIPSecConnectionInitRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    invoke-direct {p0, p1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->handleIPSecConnectionToggleRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public receive([BI)V
    .locals 4

    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessageFactory;->fromByteArray([BI)Lcom/sec/epdg/ipc/EpdgIpcMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;->processIpcMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "[RILRECEIVER]"

    const-string v3, "Could not parse IPC message"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
