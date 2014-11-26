.class public Lcom/sec/epdg/ipc/EpdgIpcMessage;
.super Ljava/lang/Object;
.source "EpdgIpcMessage.java"


# static fields
.field static final GEN_RESP_BYTE_2:I = 0x80

.field static final GEN_RESP_FAILURE:I = 0x5

.field private static final GEN_RESP_LENGTH:I = 0x5

.field static final GEN_RESP_SUCCESS:I = 0x0

.field public static final IPC_CMD_EXEC:I = 0x1

.field public static final IPC_CMD_GET:I = 0x2

.field public static final IPC_CMD_INDI:I = 0x1

.field public static final IPC_CMD_NOTI:I = 0x3

.field public static final IPC_CMD_RESP:I = 0x2

.field public static final IPC_CMD_SET:I = 0x3

.field public static final IPC_DEBUG_HDR_SIZE:I = 0xc

.field public static final IPC_GEN_CMD:I = 0x80

.field public static final IPC_GEN_PHONE_RES:I = 0x1

.field public static final IPC_GPRS_CALL_STATUS:I = 0x10

.field public static final IPC_GPRS_CMD:I = 0xd

.field public static final IPC_GPRS_DEFINE_PDP_CONTEXT:I = 0x1

.field public static final IPC_GPRS_DEFINE_SEC_PDP_CONTEXT:I = 0xa

.field public static final IPC_GPRS_EPDG_STATUS:I = 0x16

.field public static final IPC_GPRS_IP_CONFIGURATION:I = 0x9

.field public static final IPC_GPRS_PDP_CONTEXT:I = 0x4

.field public static final IPC_HDR_SIZE:I = 0x7

.field public static final IPC_NET_CMD:I = 0x8

.field public static final IPC_NET_DATA_HANDOVER:I = 0xf

.field public static final IPC_NET_REGIST:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "[IPCMESSAGE]"

.field public static final MAX_IPC_HEADER:I = 0x13


# instance fields
.field protected mAsequence:I

.field protected mCmdType:I

.field protected mIpcBody:[B

.field protected mIpcData:[B

.field protected mIpcHeader:[B

.field protected mLength:I

.field protected mMainCmd:I

.field protected mNetworkType:I

.field protected mSequence:I

.field protected mSubCmd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    iput p2, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    iput p3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 8
    .param p1    # [B
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSequence:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mAsequence:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    const/4 v4, 0x7

    if-le p2, v4, :cond_0

    add-int/lit8 v4, p2, -0x7

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    iget-object v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    const/4 v5, 0x0

    add-int/lit8 v6, p2, -0x7

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    :cond_0
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "[IPCMESSAGE]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse, IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    throw v4

    :catch_1
    move-exception v2

    const-string v5, "[IPCMESSAGE]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while closing stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v4, "[IPCMESSAGE]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException while closing stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dumpHex([B)Ljava/lang/String;
    .locals 8
    .param p1    # [B

    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02X "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, p1, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public encode()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public encodeGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z
    .locals 8
    .param p1    # Z
    .param p2    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, -0x80

    const/4 v1, 0x5

    new-array v0, v1, [B

    iget v1, p2, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget v1, p2, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/4 v1, 0x2

    iget v2, p2, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    if-eqz p1, :cond_0

    aput-byte v4, v0, v6

    aput-byte v3, v0, v7

    :goto_0
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    return v5

    :cond_0
    const/4 v1, 0x5

    aput-byte v1, v0, v6

    aput-byte v3, v0, v7

    goto :goto_0
.end method

.method public encodeNotification()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    const/4 v0, 0x1

    return v0
.end method

.method public getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B

    return-object v0
.end method

.method public getEpdgCmdType()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "IPC_CMD_INDI"

    goto :goto_0

    :pswitch_1
    const-string v0, "IPC_CMD_RESP"

    goto :goto_0

    :pswitch_2
    const-string v0, "IPC_CMD_NOTI"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIncomingEpdgCmdType()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "IPC_CMD_INDI"

    goto :goto_0

    :pswitch_1
    const-string v0, "IPC_CMD_GET"

    goto :goto_0

    :pswitch_2
    const-string v0, "IPC_CMD_SET"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMainCmd()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    return v0
.end method

.method public getSubCmd()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    return v0
.end method

.method public getcmdType()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    return v0
.end method

.method public mainCmdStr()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "IPC_GPRS_CMD"

    goto :goto_0

    :sswitch_1
    const-string v0, "IPC_NET_CMD"

    goto :goto_0

    :sswitch_2
    const-string v0, "IPC_GEN_CMD"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xd -> :sswitch_0
        0x80 -> :sswitch_2
    .end sparse-switch
.end method

.method protected makeHeader()Z
    .locals 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    iget v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    iget v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    iget v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcHeader:[B

    return v4

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "[IPCMESSAGE]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed in makeHeader() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    throw v5

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_2

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public subCmdStr()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "IPC_GPRS_DEFINE_PDP_CONTEXT"

    goto :goto_0

    :sswitch_1
    const-string v0, "IPC_GPRS_PDP_CONTEXT"

    goto :goto_0

    :sswitch_2
    const-string v0, "IPC_GPRS_IP_CONFIGURATION"

    goto :goto_0

    :sswitch_3
    const-string v0, "IPC_GPRS_CALL_STATUS"

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    sparse-switch v0, :sswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const-string v0, "IPC_NET_REGIST"

    goto :goto_0

    :sswitch_5
    const-string v0, "IPC_NET_DATA_HANDOVER"

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v0, "IPC_GEN_PHONE_RES"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Main: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x9 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_4
        0xf -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public toByteArray()[B
    .locals 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    array-length v5, v5

    add-int/2addr v4, v5

    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->makeHeader()Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write(I)V

    shr-int/lit8 v5, v4, 0x8

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcHeader:[B

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    array-length v7, v7

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B

    return-object v5

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "[IPCMESSAGE]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed in createIpcMessage() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    throw v5

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_1
.end method
