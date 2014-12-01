.class Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;
.super Ljava/lang/Object;
.source "OxygenStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/OxygenStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OlsrdCommander"
.end annotation


# static fields
.field static final MAX_RETRY_COUNT:I = 0x3

.field static final MAX_TIMEOUT:I = 0xbb8

.field static final OLSRD_CMD_PING:I = 0x1


# instance fields
.field mTerminate:Z

.field mUdpSocket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Landroid/net/wifi/OxygenStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/OxygenStateMachine;)V
    .locals 1

    iput-object p1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->this$0:Landroid/net/wifi/OxygenStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mTerminate:Z

    return-void
.end method

.method private send(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v1, v2, 0x1

    if-ge v2, v6, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->sendToOlsrd(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    const-string v3, "TIMEOUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OxygenStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "socket receive timeout retry:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    :cond_0
    if-lt v1, v6, :cond_1

    const-string v3, "OLSRD_HUNG"

    invoke-direct {p0, v3}, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->sendToMonitor(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private sendToMonitor(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    if-nez v4, :cond_1

    const-string v4, "OxygenStateMachine"

    const-string v5, "can\'t request to restart OLSRD. socket is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v4, "localhost"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v0

    const v5, 0xed19

    invoke-direct {v3, v0, v4, v2, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iget-object v4, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    # getter for: Landroid/net/wifi/OxygenStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/OxygenStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OxygenStateMachine"

    const-string v5, "Restart OLSRD (reason: socket timeout)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "OxygenStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t open datagram socket 60697\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "OxygenStateMachine"

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v4, "OxygenStateMachine"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendToOlsrd(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_2

    :cond_0
    const-string v8, "OxygenStateMachine"

    const-string v9, "message is empty"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    :try_start_0
    iget-object v8, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    if-nez v8, :cond_3

    move-object v6, v7

    goto :goto_0

    :cond_3
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v8, "localhost"

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    new-instance v3, Ljava/net/DatagramPacket;

    array-length v8, v0

    const v9, 0xed1b

    invoke-direct {v3, v0, v8, v2, v9}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iget-object v8, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v8, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    # getter for: Landroid/net/wifi/OxygenStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/OxygenStateMachine;->access$000()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "OxygenStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packet sent : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v8, 0x800

    new-array v4, v8, [B

    new-instance v5, Ljava/net/DatagramPacket;

    array-length v8, v4

    invoke-direct {v5, v4, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    iget-object v8, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    const/16 v9, 0xbb8

    invoke-virtual {v8, v9}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    iget-object v8, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v8, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    if-eqz p2, :cond_5

    iget-boolean v8, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mTerminate:Z

    if-nez v8, :cond_5

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v10

    invoke-direct {v6, v8, v9, v10}, Ljava/lang/String;-><init>([BII)V

    # getter for: Landroid/net/wifi/OxygenStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/OxygenStateMachine;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "OxygenStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packet returned : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v8, "OxygenStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t open datagram socket 60699\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    move-object v6, v7

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v7, "OxygenStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Socket Timeout Exception msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/String;

    const-string v7, "TIMEOUT"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    throw v7

    :catch_2
    move-exception v1

    :try_start_2
    const-string v8, "OxygenStateMachine"

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v8, "OxygenStateMachine"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public make()Z
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "OxygenStateMachine"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ping()Z
    .locals 3

    const/4 v1, 0x1

    const-string v2, "PING"

    invoke-direct {p0, v2, v1}, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->send(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "PONG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    # getter for: Landroid/net/wifi/OxygenStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/OxygenStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OxygenStateMachine"

    const-string v1, "quit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mTerminate:Z

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->mUdpSocket:Ljava/net/DatagramSocket;

    :cond_1
    return-void
.end method

.method public setChannel(I)Z
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANNEL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->send(Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v1, 0x1

    return v1
.end method

.method public terminate()Z
    .locals 2

    const-string v0, "TERMINATE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->send(Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method
