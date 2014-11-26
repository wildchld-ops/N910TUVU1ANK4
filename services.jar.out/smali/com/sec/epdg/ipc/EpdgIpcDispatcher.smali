.class public Lcom/sec/epdg/ipc/EpdgIpcDispatcher;
.super Ljava/lang/Object;
.source "EpdgIpcDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[IPCDISPATCHER]"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendEpdgCtxtInfo(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/ipc/EpdgPdpContextInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    invoke-virtual {v0, p0}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodePdpContext(Ljava/util/ArrayList;)Z

    invoke-static {v0, v4}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    return v4
.end method

.method public static SendGprsIPConfigs(ILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 11
    .param p0    # I
    .param p1    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # [Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # [Ljava/lang/String;
    .param p9    # [Ljava/lang/String;

    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/16 v2, 0x9

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodeGprsIPConfigs(ILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    const/4 v1, 0x1

    return v1
.end method

.method private static getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getMainCmd()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x9

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

.method public static sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z
    .locals 4
    .param p0    # Z
    .param p1    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    const/4 v3, 0x1

    new-instance v0, Lcom/sec/epdg/ipc/EpdgIpcMessage;

    const/16 v1, 0x80

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>(III)V

    invoke-virtual {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->encodeGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    invoke-static {v0, v3}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    return v3
.end method

.method public static sendGprsCallStatus(II)Z
    .locals 5
    .param p0    # I
    .param p1    # I

    const/4 v4, 0x1

    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/16 v2, 0x10

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    invoke-virtual {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodeGprsCallStatus(II)Z

    invoke-static {v0, v4}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    return v4
.end method

.method public static sendGprsEpdgStatus(II)Z
    .locals 5
    .param p0    # I
    .param p1    # I

    const/4 v4, 0x1

    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/16 v2, 0x16

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    invoke-virtual {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodeGprsCallStatus(II)Z

    invoke-static {v0, v4}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    return v4
.end method

.method private static sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z
    .locals 5
    .param p0    # Lcom/sec/epdg/ipc/EpdgIpcMessage;
    .param p1    # Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mainCmdStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Cmd Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getEpdgCmdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "[IPCDISPATCHER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Tx]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[IPCDISPATCHER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Tx]: Param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgDumpState;->addEpdgToRilMsgs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->getInstance()Lcom/sec/epdg/ipc/EpdgModem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/ipc/EpdgModem;->sendPacket([B)V

    const/4 v2, 0x1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static sendNetDataHandover(IIII)Z
    .locals 5
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v4, 0x1

    new-instance v0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    const/16 v1, 0x8

    const/16 v2, 0xf

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;-><init>(III)V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->encodeNetDataHandoverInfo(IIII)Z

    invoke-static {v0, v4}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    return v4
.end method

.method public static sendNetRegist(III)Z
    .locals 3
    .param p0    # I
    .param p1    # I
    .param p2    # I

    new-instance v0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p2}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;-><init>(III)V

    invoke-virtual {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->encodeNetRegist(II)Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    const/4 v1, 0x1

    return v1
.end method
