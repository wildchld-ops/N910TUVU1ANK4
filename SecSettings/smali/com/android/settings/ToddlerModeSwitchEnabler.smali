.class public Lcom/android/settings/ToddlerModeSwitchEnabler;
.super Ljava/lang/Object;
.source "ToddlerModeSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;
    }
.end annotation


# static fields
.field private static mPreviousMobileDataState:Z

.field private static mPreviousWifiState:Z


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mToddlerModeObserver:Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mPreviousMobileDataState:Z

    sput-boolean v0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mPreviousWifiState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/android/settings/ToddlerModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ToddlerModeSwitchEnabler$1;-><init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;-><init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mToddlerModeObserver:Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/android/settings/ToddlerModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ToddlerModeSwitchEnabler$1;-><init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;-><init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mToddlerModeObserver:Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ToddlerModeSwitchEnabler;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/ToddlerModeSwitchEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->setMode(Z)V

    return-void
.end method

.method public static isToddlerModeOn(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "toddler_mode_switch"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setMode(Z)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "toddler_mode_switch"

    if-eqz p1, :cond_4

    move v3, v1

    :goto_1
    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v3, "ToddlerModeSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConnectivity : set to  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ToddlerModeSwitchEnabler;->mPreviousMobileDataState:Z

    iget-object v3, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "toddler_mode_data_state"

    sget-boolean v3, Lcom/android/settings/ToddlerModeSwitchEnabler;->mPreviousMobileDataState:Z

    if-eqz v3, :cond_5

    move v3, v1

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_6

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_0
    :goto_4
    iget-object v3, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ToddlerModeSwitchEnabler;->mPreviousWifiState:Z

    iget-object v3, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "toddler_mode_wifi_state"

    sget-boolean v3, Lcom/android/settings/ToddlerModeSwitchEnabler;->mPreviousWifiState:Z

    if-eqz v3, :cond_9

    move v3, v1

    :goto_5
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v3, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "toddler_mode_wifi_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "toddler_mode_data_state"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_8

    move v3, v1

    :goto_6
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_4

    :cond_8
    move v3, v2

    goto :goto_6

    :cond_9
    move v3, v2

    goto :goto_5
.end method

.method private showConfirmPopup(Z)V
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0919f5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz p1, :cond_0

    const v2, 0x7f0919f6

    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/ToddlerModeSwitchEnabler$4;

    invoke-direct {v4, p0}, Lcom/android/settings/ToddlerModeSwitchEnabler$4;-><init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/ToddlerModeSwitchEnabler$3;

    invoke-direct {v4, p0}, Lcom/android/settings/ToddlerModeSwitchEnabler$3;-><init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ToddlerModeSwitchEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/settings/ToddlerModeSwitchEnabler$2;-><init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v2, 0x7f0919f7

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "ToddlerModeSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToddlerMode onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ToddlerModeSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToddlerMode isToddlerModeOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->setMode(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 3

    const-string v0, "ToddlerModeSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToddlerMode onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ToddlerModeSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToddlerMode isToddlerModeOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/ToddlerModeSwitchEnabler;->showConfirmPopup(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mToddlerModeObserver:Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public resume()V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "toddler_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mToddlerModeObserver:Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;

    const/4 v6, -0x2

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public setCheckBox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
