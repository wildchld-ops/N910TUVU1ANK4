.class Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;
.super Ljava/lang/Thread;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareProfileFileReceiver"
.end annotation


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field dis:Ljava/io/DataInputStream;

.field fos:Ljava/io/FileOutputStream;

.field socket:Ljava/net/Socket;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Ljava/net/Socket;)V
    .locals 0
    .param p2    # Ljava/net/Socket;

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "WifiStateMachine"

    const-string v9, "ShareProfileFileReceiver - File reception starts."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    const-string v3, "ReceivedEncrypted.conf"

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ShareProfileFileReceiver - senderID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/misc/wifi/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->fos:Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->fos:Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "WifiStateMachine"

    const-string v9, "ShareProfileFileReceiver - File is created."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v6, 0x1000

    new-array v0, v6, [B

    :goto_0
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v8, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while receiving file. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x20137

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void

    :cond_3
    :try_start_1
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    const/4 v7, 0x0

    const-string v8, "Sender:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_4
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->updateConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v8, v3, v7}, Landroid/net/wifi/WifiStateMachine;->access$44700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
