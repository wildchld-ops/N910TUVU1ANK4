.class public Lcom/sec/epdg/ipc/EpdgNetIpcMessage;
.super Lcom/sec/epdg/ipc/EpdgIpcMessage;
.source "EpdgNetIpcMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[NETIPCMESSAGE]"

.field private static final NET_HANDOVER_LENGTH:I = 0x4

.field private static final NET_REGIST_LENGTH:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>(III)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1    # [B
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public decodeHandoverResult()Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .locals 13

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v10, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    invoke-direct {v1, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    :try_start_0
    const-string v10, "[NETIPCMESSAGE]"

    const-string v11, "decodeHandoverResult"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    new-instance v7, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;

    invoke-direct {v7, v9, v0, v8, v2}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;-><init>(IIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    move-object v6, v7

    :goto_1
    return-object v6

    :catch_0
    move-exception v5

    :try_start_2
    const-string v10, "[NETIPCMESSAGE]"

    const-string v11, "decodeHandoverResult: IOException "

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v10, "[NETIPCMESSAGE]"

    const-string v11, "decodeHandoverResult: IOException while closing stream"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v10

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    throw v10

    :catch_2
    move-exception v4

    const-string v11, "[NETIPCMESSAGE]"

    const-string v12, "decodeHandoverResult: IOException while closing stream"

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v4

    const-string v10, "[NETIPCMESSAGE]"

    const-string v11, "decodeHandoverResult: IOException while closing stream"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public decodeNetRegQuery()Lcom/sec/epdg/ipc/EpdgNetReg;
    .locals 9

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x0

    :try_start_0
    const-string v6, "[NETIPCMESSAGE]"

    const-string v7, "Creating EpdgNetReg"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/sec/epdg/ipc/EpdgNetReg;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/sec/epdg/ipc/EpdgNetReg;-><init>(BB)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    move-object v4, v5

    :goto_1
    return-object v4

    :catch_0
    move-exception v3

    :try_start_2
    const-string v6, "[NETIPCMESSAGE]"

    const-string v7, "decodeNetRegQuery: IOException "

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v6, "[NETIPCMESSAGE]"

    const-string v7, "decodeNetRegQuery closing stream: IOException "

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    throw v6

    :catch_2
    move-exception v2

    const-string v7, "[NETIPCMESSAGE]"

    const-string v8, "decodeNetRegQuery closing stream: IOException "

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v2

    const-string v6, "[NETIPCMESSAGE]"

    const-string v7, "decodeNetRegQuery closing stream: IOException "

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public encodeNetDataHandoverInfo(IIII)Z
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v3, 0x1

    const-string v1, "[NETIPCMESSAGE]"

    const-string v2, "encodeNetDataHandoverInfo"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    int-to-byte v1, p2

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    return v3
.end method

.method public encodeNetRegist(II)Z
    .locals 4
    .param p1    # I
    .param p2    # I

    const/4 v3, 0x1

    const-string v1, "[NETIPCMESSAGE]"

    const-string v2, "encodeNetRegist"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    new-array v0, v1, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    return v3
.end method
