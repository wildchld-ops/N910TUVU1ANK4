.class Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;
.super Ljava/lang/Thread;
.source "OxygenStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/OxygenStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OlsrdMonitorThread"
.end annotation


# static fields
.field private static final OLSRD_CHANGE_ALARM_INTERVAL_PREFIX:Ljava/lang/String; = "OLSRD_CHANGE_ALARM_INTERVAL"

.field public static final OLSRD_HUNG_PREFIX:Ljava/lang/String; = "OLSRD_HUNG"

.field private static final OLSRD_INITIALIZED_PREFIX:Ljava/lang/String; = "OLSRD_INITIALIZED"

.field private static final OLSRD_TERMINATE_PREFIX:Ljava/lang/String; = "OLSRD_TERMINATE"


# instance fields
.field m:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

.field mSM:Lcom/android/internal/util/StateMachine;

.field mUdpSocket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Landroid/net/wifi/OxygenStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/OxygenStateMachine;Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;Lcom/android/internal/util/StateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->this$0:Landroid/net/wifi/OxygenStateMachine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->m:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

    iput-object p3, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    return-void
.end method

.method private dispatchMessage(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "OLSRD_INITIALIZED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x20172

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v5, "OLSRD_TERMINATE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x20173

    invoke-virtual {v3, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    move v3, v4

    goto :goto_0

    :cond_2
    const-string v5, "OLSRD_HUNG"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x20174

    invoke-virtual {v3, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    move v3, v4

    goto :goto_0

    :cond_3
    const-string v4, "OLSRD_CHANGE_ALARM_INTERVAL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-le v4, v3, :cond_0

    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x20175

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "OxygenStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot recognize alarm interval ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public quit()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->mUdpSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->mUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    :try_start_0
    new-instance v4, Ljava/net/DatagramSocket;

    const v5, 0xed19

    invoke-direct {v4, v5}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v4, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->mUdpSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/16 v4, 0x800

    new-array v0, v4, [B

    new-instance v2, Ljava/net/DatagramPacket;

    array-length v4, v0

    invoke-direct {v2, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    :try_start_1
    iget-object v4, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->mUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v4, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->m:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

    # getter for: Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mMonitoring:Z
    invoke-static {v4}, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->access$2400(Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "OxygenStateMachine"

    const-string v5, "terminate monitor thread"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v4, "OxygenStateMachine"

    const-string v5, "Can\'t open datagram socket 60697"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x20164

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "OxygenStateMachine"

    const-string v5, "receive fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    const-string v4, "OxygenStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->dispatchMessage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "OxygenStateMachine"

    const-string v5, "terminate monitor thread"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
