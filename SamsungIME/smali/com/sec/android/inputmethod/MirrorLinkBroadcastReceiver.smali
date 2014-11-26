.class public Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLinkBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;
    }
.end annotation


# static fields
.field public static final MESSAGE_CREATE_ALERT_DIALOG:I = 0x65

.field public static final MESSAGE_UPDATE_VIEW:I = 0x64

.field private static volatile mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;


# instance fields
.field mCertificationListener:Lcom/mirrorlink/android/commonapi/ICertificationListener;

.field mCertificationManager:Lcom/mirrorlink/android/commonapi/ICertificationManager;

.field mConnectionListener:Lcom/mirrorlink/android/commonapi/IConnectionListener;

.field mConnectionManager:Lcom/mirrorlink/android/commonapi/IConnectionManager;

.field mContext:Landroid/content/Context;

.field mDeviceStatusListener:Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

.field mDeviceStatusManager:Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

.field mEventMappingListener:Lcom/mirrorlink/android/commonapi/IEventMappingListener;

.field mEventMappingManager:Lcom/mirrorlink/android/commonapi/IEventMappingManager;

.field protected final mHandler:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;

.field mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mMirrorLinkConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mConnectionManager:Lcom/mirrorlink/android/commonapi/IConnectionManager;

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mEventMappingManager:Lcom/mirrorlink/android/commonapi/IEventMappingManager;

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mDeviceStatusManager:Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mCertificationManager:Lcom/mirrorlink/android/commonapi/ICertificationManager;

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mMirrorLinkConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mHandler:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mConnectionListener:Lcom/mirrorlink/android/commonapi/IConnectionListener;

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$3;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mEventMappingListener:Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$4;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mDeviceStatusListener:Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$5;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mCertificationListener:Lcom/mirrorlink/android/commonapi/ICertificationListener;

    return-void
.end method

.method static synthetic access$000()Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    .locals 1

    sget-object v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mirrorlink/android/commonapi/ICommonAPIService;)Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    .locals 0
    .param p0    # Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    sput-object p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    return-object p0
.end method

.method private connect()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.mirrorlink.android.service.BIND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mMirrorLinkConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private createService()V
    .locals 1

    new-instance v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;-><init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mMirrorLinkConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mMirrorLinkConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mMirrorLinkConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mMirrorLinkConnection:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method

.method public getService()Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    .locals 1

    sget-object v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.tmserver.mirrorlink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive mirrorlink boardcast recieved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "mlconnected"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mlconnected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->createService()V

    invoke-direct {p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->connect()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->disconnect()V

    goto :goto_0
.end method
