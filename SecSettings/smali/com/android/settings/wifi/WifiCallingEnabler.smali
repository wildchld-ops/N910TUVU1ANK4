.class public final Lcom/android/settings/wifi/WifiCallingEnabler;
.super Ljava/lang/Object;
.source "WifiCallingEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsWfcProvisioned:Z

.field private mShouldEnableWifiOnResume:Z

.field private mStateChangedListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mWfcStateObserver:Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mIsWfcProvisioned:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mShouldEnableWifiOnResume:Z

    new-instance v0, Lcom/android/settings/wifi/WifiCallingEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiCallingEnabler$1;-><init>(Lcom/android/settings/wifi/WifiCallingEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mStateChangedListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mStateChangedListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mWfcStateObserver:Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiCallingEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mShouldEnableWifiOnResume:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiCallingEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mShouldEnableWifiOnResume:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiCallingEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mIsWfcProvisioned:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/WifiCallingEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mIsWfcProvisioned:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiCallingEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiCallingEnabler;->updateWfcState(Z)V

    return-void
.end method

.method private updateWfcState(Z)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "state"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/WfcHelper;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mIsWfcProvisioned:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;-><init>(Lcom/android/settings/wifi/WifiCallingEnabler;Lcom/android/settings/wifi/WifiCallingEnabler$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/wifi/WfcHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.smartwifi.WFC_AIR_PLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mShouldEnableWifiOnResume:Z

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiCallingEnabler;->updateWfcState(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mWfcStateObserver:Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/WfcHelper;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mWfcStateObserver:Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mStateChangedListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/WfcHelper;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mWfcStateObserver:Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mStateChangedListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
