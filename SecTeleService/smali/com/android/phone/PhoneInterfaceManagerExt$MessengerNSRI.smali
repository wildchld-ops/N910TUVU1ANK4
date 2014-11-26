.class Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessengerNSRI"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private volatile mMsgNSRILooper:Landroid/os/Looper;

.field private mResult:[B

.field private final phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1    # Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->mDone:Z

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "[NSRI_Messenger] MessengerNSRI .. created !"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method static synthetic access$1702(Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;[B)[B
    .locals 0
    .param p0    # Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;
    .param p1    # [B

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->mResult:[B

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized commonNSRIRequestProcCmd([BI)[B
    .locals 7
    .param p1    # [B
    .param p2    # I

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xb

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, p2, 0x5

    const/16 v5, 0x16

    :try_start_4
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x74

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5, p2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_2
    iget-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v5, :cond_1

    :try_start_6
    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "[NSRI_Messenger] MessengerNSRI ..wait for done"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catch_2
    move-exception v3

    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "[NSRI_Messenger] IOException!!! -commonNSRIRequestProcCmd-"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "[NSRI_Messenger] commonNSRIRequestProcCmd -done-"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->mResult:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v5
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->mMsgNSRILooper:Landroid/os/Looper;

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
