.class public Lcom/sec/epdg/EpdgTestRilAdapter;
.super Ljava/lang/Object;
.source "EpdgTestRilAdapter.java"

# interfaces
.implements Lcom/sec/epdg/EpdgRilInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;,
        Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;
    }
.end annotation


# static fields
.field private static final INCOMING_TAG:Ljava/lang/String; = "[RIL-EPDG]"

.field private static final OEM_DATA_IWLAN_INTF_CONF:B = 0x11t

.field private static final OEM_DATA_IWLAN_INTF_INIT:B = 0x10t

.field private static final OEM_FUNCTION_ID_DATA:B = 0xdt

.field private static final OUTGOING_TAG:Ljava/lang/String; = "[EPDG-RIL]"

.field private static final SRIL_PROTO_IPV4:I = 0x1

.field private static final SRIL_PROTO_IPV4V6:I = 0x3

.field private static final SRIL_PROTO_IPV6:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[TESTRILADAPTER]"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

.field private static mInstance:Lcom/sec/epdg/EpdgTestRilAdapter;


# instance fields
.field private final mIpsecMessenger:Landroid/os/Messenger;

.field private final mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

.field private rilConnInitInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->mServiceMessenger:Landroid/os/Messenger;

    new-instance v1, Lcom/sec/epdg/EpdgTestRilAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgTestRilAdapter$1;-><init>(Lcom/sec/epdg/EpdgTestRilAdapter;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    sput-object p1, Lcom/sec/epdg/EpdgTestRilAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EPDGTestRilThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;-><init>(Lcom/sec/epdg/EpdgTestRilAdapter;Landroid/os/Looper;)V

    sput-object v1, Lcom/sec/epdg/EpdgTestRilAdapter;->mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    new-instance v1, Landroid/os/Messenger;

    sget-object v2, Lcom/sec/epdg/EpdgTestRilAdapter;->mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->mIpsecMessenger:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgTestRilAdapter;->connectToRilService()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/epdg/EpdgTestRilAdapter;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/epdg/EpdgTestRilAdapter;)Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInitInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInitInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgTestRilAdapter;->configureInterfaceInit(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V

    return-void
.end method

.method private configureInterface(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V
    .locals 4

    const-string v1, "[TESTRILADAPTER]"

    const-string v2, "configureInterface is called"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getInterfaceConfigureCommand()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTestRilAdapter;->mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/epdg/EpdgTestRilAdapter;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method private configureInterfaceInit(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V
    .locals 4

    const-string v1, "[TESTRILADAPTER]"

    const-string v2, "configureInterfaceInit is called"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getInterfaceInitCommand()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTestRilAdapter;->mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/epdg/EpdgTestRilAdapter;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method private connectToRilService()V
    .locals 4

    const-string v1, "[TESTRILADAPTER]"

    const-string v2, "connect To Secphone service"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/sec/epdg/EpdgTestRilAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgTestRilAdapter;->mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgTestRilAdapter;
    .locals 2

    sget-object v0, Lcom/sec/epdg/EpdgTestRilAdapter;->mInstance:Lcom/sec/epdg/EpdgTestRilAdapter;

    if-nez v0, :cond_0

    const-string v0, "[TESTRILADAPTER]"

    const-string v1, "Creating EpdgTestRilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/EpdgTestRilAdapter;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgTestRilAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/epdg/EpdgTestRilAdapter;->mInstance:Lcom/sec/epdg/EpdgTestRilAdapter;

    sget-object v0, Lcom/sec/epdg/EpdgTestRilAdapter;->mInstance:Lcom/sec/epdg/EpdgTestRilAdapter;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[TESTRILADAPTER]"

    const-string v1, "EpdgTestRilAdapter already exists !"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgTestRilAdapter;->mInstance:Lcom/sec/epdg/EpdgTestRilAdapter;

    goto :goto_0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 5

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->mIpsecMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "[TESTRILADAPTER]"

    const-string v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[TESTRILADAPTER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeOemRilRequestRaw: RemoteException occured !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private makeToast(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sec/epdg/EpdgTestRilAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x1388

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public triggerHandover(IZ)V
    .locals 0

    return-void
.end method

.method public updateApnConnStatus(IZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;ZZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "[EPDG-RIL]"

    const-string/jumbo v1, "updateApnConnStatus"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    new-instance v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-direct {v0, p0, v3}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;-><init>(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$1;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIpv4addr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setLocalIP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIpv6addr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setLocalIPv6(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setGatewayIP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setIpType(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    # setter for: Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->intfstatus:I
    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->access$402(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;I)I

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setConnectionId(I)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgTestRilAdapter;->configureInterface(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setIpType(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setGatewayIP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setIpType(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-direct {v0, p0, v3}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;-><init>(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$1;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->intfstatus:I
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->access$402(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;I)I

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setConnectionId(I)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgTestRilAdapter;->configureInterface(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V

    goto :goto_1
.end method

.method public updateEpdgAvailability(Z)V
    .locals 0

    return-void
.end method
