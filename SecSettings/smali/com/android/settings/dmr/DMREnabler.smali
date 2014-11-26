.class public Lcom/android/settings/dmr/DMREnabler;
.super Ljava/lang/Object;
.source "DMREnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static mIsON:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mCurConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsBound:Z

.field private mIsConnectionReceiverRegistered:Z

.field private mIsSwitchStateReceiverRegistered:Z

.field private mLastBroadCastMessageAction:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsConnectionReceiverRegistered:Z

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsSwitchStateReceiverRegistered:Z

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    iput v1, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    new-instance v0, Lcom/android/settings/dmr/DMREnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dmr/DMREnabler$1;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/dmr/DMREnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/dmr/DMREnabler$4;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/dmr/DMREnabler$5;

    invoke-direct {v0, p0}, Lcom/android/settings/dmr/DMREnabler$5;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/dmr/DMREnabler$6;

    invoke-direct {v0, p0}, Lcom/android/settings/dmr/DMREnabler$6;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mConnection:Landroid/content/ServiceConnection;

    const-string v0, "DMREnabler"

    const-string v1, " DMREnabler(Context, Switch )"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.dmr.started"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.dmr.stoped"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.dmr.starting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.dmr.stopping"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dmr/DMREnabler;I)V
    .locals 0
    .param p0    # Lcom/android/settings/dmr/DMREnabler;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/settings/dmr/DMREnabler;->handleServerStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dmr/DMREnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/settings/dmr/DMREnabler;

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dmr/DMREnabler;II)V
    .locals 0
    .param p0    # Lcom/android/settings/dmr/DMREnabler;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dmr/DMREnabler;->handleServerStateChangedDelayed(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dmr/DMREnabler;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/dmr/DMREnabler;

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/dmr/DMREnabler;I)I
    .locals 0
    .param p0    # Lcom/android/settings/dmr/DMREnabler;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/dmr/DMREnabler;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    .locals 1
    .param p0    # Lcom/android/settings/dmr/DMREnabler;

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/dmr/DMREnabler;Lcom/sec/android/allshare/dmrservice/IMediaRenderer;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    .locals 0
    .param p0    # Lcom/android/settings/dmr/DMREnabler;
    .param p1    # Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    iput-object p1, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/dmr/DMREnabler;)Z
    .locals 1
    .param p0    # Lcom/android/settings/dmr/DMREnabler;

    iget-boolean v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/dmr/DMREnabler;)Z
    .locals 1
    .param p0    # Lcom/android/settings/dmr/DMREnabler;

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->isEthernetConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/dmr/DMREnabler;)Z
    .locals 1
    .param p0    # Lcom/android/settings/dmr/DMREnabler;

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->isWifiConnectedExtented()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/dmr/DMREnabler;)V
    .locals 0
    .param p0    # Lcom/android/settings/dmr/DMREnabler;

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->updateSwitchState()V

    return-void
.end method

.method private bindRemoteService()V
    .locals 4

    const-string v1, "DMREnabler"

    const-string v2, "bindService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    if-nez v1, :cond_0

    const-string v1, "DMREnabler"

    const-string v2, "service is not bound "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "asfdmr.intent.action.bindDMRService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.allshare.dmrservice"

    const-string v2, "com.sec.android.allshare.dmrservice.DMRServiceManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x49

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mCurConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    :cond_0
    return-void
.end method

.method private handleServerStateChanged(I)V
    .locals 6
    .param p1    # I

    const/16 v5, 0x3e9

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "DMREnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleServerStateChanged() with stete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    if-eqz v0, :cond_0

    if-ne p1, v5, :cond_0

    iget v0, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    if-eq v0, v5, :cond_0

    const-string v0, "DMREnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " return due to last state  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    sput-boolean v3, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :pswitch_0
    sput-boolean v4, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    sput-boolean v4, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    sput-boolean v3, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    sput-boolean v3, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleServerStateChangedDelayed(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const-string v0, "DMREnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleServerStateChangedDelayed() with stete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private isEthernetConnected()Z
    .locals 6

    const-string v3, "DMREnabler"

    const-string v4, " isEthernetConnected()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v3, "DMREnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEthernetConnected() bEthernetConnected ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConnectedExtented()Z
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "DMREnabler"

    const-string v8, " isWifiConnectedExtented()"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const-string v8, "wifip2p"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    iget-object v7, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v2, :cond_2

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v1, :cond_0

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v6, "DMREnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wifi State : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WifiDirect State : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    if-nez v1, :cond_1

    const-string v6, "DMREnabler"

    const-string v7, "Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v5, "DMREnabler"

    const-string v7, "Finally of netInfoWifi != null + netInfoP2p != null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    const-string v7, "DMREnabler"

    const-string v8, "Wifi State : netInfoWifi is null >> check p2p state"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v6, "DMREnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " WifiDirect State : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    const-string v6, "DMREnabler"

    const-string v7, "Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v5, "DMREnabler"

    const-string v7, "Finally of netInfoWifi == null + netInfoP2p != null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_0

    :cond_5
    const-string v5, "DMREnabler"

    const-string v7, "Finally of netInfoWifi != null and connected as well "

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_0

    :cond_6
    const-string v5, "DMREnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check Wi-Fi State or Function state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto/16 :goto_0
.end method

.method private setBroadcastReceiver()V
    .locals 5

    const-string v1, "DMREnabler"

    const-string v2, "setBroadcastReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsConnectionReceiverRegistered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsConnectionReceiverRegistered:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsSwitchStateReceiverRegistered:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsSwitchStateReceiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DMREnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on setBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 4
    .param p1    # I

    const-string v1, "DMREnabler"

    const-string v2, " showDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f09178b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f091795

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/dmr/DMREnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/dmr/DMREnabler$3;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dmr/DMREnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/dmr/DMREnabler$2;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x273d
        :pswitch_0
    .end packed-switch
.end method

.method private unBindRemoteService()V
    .locals 2

    const-string v0, "DMREnabler"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mCurConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mCurConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mCurConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    :cond_1
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    const-string v1, "DMREnabler"

    const-string v2, "unregisterBroadcastReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsConnectionReceiverRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsConnectionReceiverRegistered:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsSwitchStateReceiverRegistered:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsSwitchStateReceiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DMREnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on unregisterBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSwitchState()V
    .locals 4

    const-string v1, "DMREnabler"

    const-string v2, "updateSwitch"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v1}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->isMediaRendererStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DMREnabler"

    const-string v2, "isMediaRendererStarted is true "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DMREnabler"

    const-string v2, "! mSwitch.isChecked()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "DMREnabler"

    const-string v2, "isMediaRendererStarted is false "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DMREnabler"

    const-string v2, "mSwitch.isChecked() "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DMREnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch()  RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DMREnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch()  Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v1, "DMREnabler"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const/16 v7, 0x3ed

    const/16 v6, 0x3ea

    const-string v3, "DMREnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged isChecked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->isEthernetConnected()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->isWifiConnectedExtented()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DMREnabler"

    const-string v4, " (!isEthernetConnected() && !isWifiConnectedExtented()) "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x273d

    invoke-direct {p0, v3}, Lcom/android/settings/dmr/DMREnabler;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v3, :cond_3

    if-nez p2, :cond_2

    :try_start_0
    const-string v3, "DMREnabler"

    const-string v4, "!isChecked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v3}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->isMediaRendererStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3ec

    invoke-direct {p0, v3}, Lcom/android/settings/dmr/DMREnabler;->handleServerStateChanged(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.stopping"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3ec

    iput v3, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "DMREnabler"

    const-string v4, "isMediaRendererStarted() : stopMediaRenderer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v3}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->stopMediaRenderer()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.stoped"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3ea

    iput v3, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "DMREnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged()  RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.error"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "DMREnabler"

    const-string v4, "isChecked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v3}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->isMediaRendererStarted()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x3eb

    invoke-direct {p0, v3}, Lcom/android/settings/dmr/DMREnabler;->handleServerStateChanged(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.starting"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3eb

    iput v3, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_STARTING"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DMREnabler"

    const-string v4, "isMediaRendererStarted() is not true so : startMediaRenderer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v3}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->startMediaRenderer()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.started"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_STARTED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x3e9

    iput v3, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v3, "DMREnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged()  RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.error"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v3, "DMREnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged()  Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.error"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const-string v3, "DMREnabler"

    const-string v4, "mService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.stoped"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_STOPED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    const-string v0, "DMREnabler"

    const-string v1, " pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->unregisterBroadcastReceiver()V

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->unBindRemoteService()V

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "DMREnabler"

    const-string v1, " resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->setBroadcastReceiver()V

    iget-boolean v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    if-nez v0, :cond_0

    const-string v0, "DMREnabler"

    const-string v1, " MediaRenderer Service is not bound so bounding the serivce."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->bindRemoteService()V

    :cond_0
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1    # Landroid/widget/Switch;

    const-string v0, "DMREnabler"

    const-string v1, " setSwitch()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->updateSwitchState()V

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
