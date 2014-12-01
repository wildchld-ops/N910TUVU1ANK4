.class Lcom/android/phone/PhoneInterfaceManagerExt$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManagerExt;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1    # Landroid/os/Message;

    const/4 v12, 0x1

    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DOMESTIC PCSC HandleMessage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    const-string v9, "PhoneInterfaceManagerExt"

    const-string v10, "Get Default"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    new-array v10, v12, [B

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x5

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_2

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    check-cast v9, [B

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11, v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v9

    const/4 v11, 0x1

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "90"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v9

    const/4 v11, 0x2

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "0"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v11

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USIM(TCash) : Get CONNECT_DONE event "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v12}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v9

    array-length v9, v9

    if-ge v4, v9, :cond_1

    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CONNECT : Value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v12}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v12

    aget-byte v12, v12, v4

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    :try_start_3
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, -0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v9, "PhoneInterfaceManagerExt"

    const-string v11, "Exception in getting Logical Channel."

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, -0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    :cond_1
    :try_start_5
    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connect! Logical Ch is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v12}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLockNotified:Z
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$302(Lcom/android/phone/PhoneInterfaceManagerExt;Z)Z

    monitor-exit v10

    goto/16 :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, -0x2

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    const-string v9, "PhoneInterfaceManagerExt"

    const-string v11, "SMARTCARD_IO_ERROR_CARD_NOT_EXIST"

    invoke-static {v9, v11}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_6
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_5

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    check-cast v9, [B

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11, v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v9

    const/4 v11, 0x0

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "90"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v9

    const/4 v11, 0x1

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "0"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    const/4 v4, 0x0

    :goto_5
    :try_start_8
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v9

    array-length v9, v9

    if-ge v4, v9, :cond_4

    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DISCONNECT : Value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v12}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v12

    aget-byte v12, v12, v4

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    :try_start_9
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, -0x3

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_a
    const-string v9, "PhoneInterfaceManagerExt"

    const-string v11, "Exception in disconnecting."

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, -0x3

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    goto :goto_4

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v9

    :cond_4
    :try_start_b
    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Disconnect! res:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v12}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLockNotified:Z
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$302(Lcom/android/phone/PhoneInterfaceManagerExt;Z)Z

    monitor-exit v10

    goto/16 :goto_0

    :cond_5
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, -0x3

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    const-string v9, "PhoneInterfaceManagerExt"

    const-string v11, "SMARTCARD_IO_INVALID_CHANNEL"

    invoke-static {v9, v11}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_c
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_7

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    check-cast v9, [B

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11, v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v11

    array-length v11, v11

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    const/4 v4, 0x0

    :goto_7
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v9

    array-length v9, v9

    if-ge v4, v9, :cond_6

    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TRANSMIT : Value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v12}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v12

    aget-byte v12, v12, v4

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get TRANSMIT_DONE event "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v12}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLockNotified:Z
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$302(Lcom/android/phone/PhoneInterfaceManagerExt;Z)Z

    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v9

    :cond_7
    :try_start_d
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, -0x4

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_8

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_e
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_8

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    check-cast v9, [B

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11, v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    :goto_9
    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get POWERUP event "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v12}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLockNotified:Z
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$302(Lcom/android/phone/PhoneInterfaceManagerExt;Z)Z

    monitor-exit v10

    goto/16 :goto_0

    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v9

    :cond_8
    :try_start_f
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, -0x2

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_9

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_10
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_d

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    check-cast v9, [B

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11, v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS_AKA result="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v12}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v12

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v9

    const/4 v11, 0x1

    aget-byte v9, v9, v11

    if-nez v9, :cond_a

    const-string v9, "PhoneInterfaceManagerExt"

    const-string v11, "IMS_AKA result = is success appending DB "

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DB"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x4

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_a
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.sec.android.internal.ims.USIMAuthParams"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const-string v3, "REGISTER"

    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "eventType====="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dataArr====="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "REGISTER"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "eventType"

    const/4 v11, 0x1

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_b
    const-string v9, "data"

    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_9

    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nonce====="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "nonce"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v9, v9, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    if-eqz v9, :cond_c

    const-string v9, "PhoneInterfaceManagerExt"

    const-string v11, "mApplication.mContext is not null====="

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v9, v9, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9, v5}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    :goto_c
    const-string v9, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get USIMAUTH event "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v12}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLockNotified:Z
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$302(Lcom/android/phone/PhoneInterfaceManagerExt;Z)Z

    monitor-exit v10

    goto/16 :goto_0

    :catchall_4
    move-exception v9

    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v9

    :cond_a
    :try_start_11
    const-string v9, "PhoneInterfaceManagerExt"

    const-string v11, "IMS_AKA result = is failure appending DC "

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    # getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DC"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x4

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_a

    :cond_b
    const-string v9, "eventType"

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_b

    :cond_c
    const-string v9, "PhoneInterfaceManagerExt"

    const-string v11, "mApplication.mContext is  null====="

    invoke-static {v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    goto/16 :goto_0

    :cond_d
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManagerExt$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v11, -0x2

    # setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v9, v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
