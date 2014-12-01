.class public Lcom/android/settings/AirplaneModeSwitchEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mToggleImageView:Lcom/android/settings/ToggleImageView;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$1;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler$2;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$3;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/AirplaneModeSwitchEnabler;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v6, :cond_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    :cond_1
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v5, v0}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v5, v4}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    move v0, v4

    :goto_2
    const-string v6, "AirplaneModeSwitchEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AirplaneModeSwitchEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_8

    move v2, v4

    :goto_3
    if-ne v0, v2, :cond_2

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v6, :cond_5

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    :cond_6
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v5, v0}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v5, v4}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_7
    move v0, v5

    goto :goto_2

    :cond_8
    move v2, v5

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_4
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v2, v1}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v1, p1}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    const-string v1, "AirplaneModeSwitchEnabler"

    const-string v2, "Intent to IMSService for sending DE-REG packet"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method public changeAirplaneMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "ril.cdma.inecmmode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move v5, p2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0

    :cond_4
    const v1, 0x7f090dcc

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v7, "com.android.mms"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const v1, 0x7f090dcf

    :cond_5
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    const v1, 0x7f090dd0

    :cond_6
    :goto_2
    if-eqz v5, :cond_a

    move v2, v1

    :goto_3
    if-eqz v5, :cond_b

    const v4, 0x7f090dca

    :goto_4
    if-eqz v5, :cond_c

    const v3, 0x7f090836

    :goto_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$10;

    invoke-direct {v6, p0, v5}, Lcom/android/settings/AirplaneModeSwitchEnabler$10;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/settings/AirplaneModeSwitchEnabler$11;

    invoke-direct {v7, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$11;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$12;

    invoke-direct {v6, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$12;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_7
    const v1, 0x7f090dd0

    goto :goto_1

    :cond_8
    const v1, 0x7f090dce

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    const v1, 0x7f090dd1

    goto :goto_2

    :cond_a
    const v2, 0x7f090dcb

    goto :goto_3

    :cond_b
    const v4, 0x7f0901bf

    goto :goto_4

    :cond_c
    const v3, 0x7f090835

    goto :goto_5
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 7

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, p2

    const v1, 0x7f090dcc

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v1, 0x7f090dcf

    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    const v1, 0x7f090dd0

    :cond_3
    :goto_2
    if-eqz v4, :cond_6

    move v2, v1

    :goto_3
    if-eqz v4, :cond_7

    const v3, 0x7f090dca

    :goto_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$13;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/AirplaneModeSwitchEnabler$13;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$14;

    invoke-direct {v6, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$14;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/AirplaneModeSwitchEnabler$15;

    invoke-direct {v5, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$15;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    const v1, 0x7f090dd0

    goto :goto_1

    :cond_5
    const v1, 0x7f090dce

    goto :goto_2

    :cond_6
    const v2, 0x7f090dcb

    goto :goto_3

    :cond_7
    const v3, 0x7f0901bf

    goto :goto_4
.end method

.method public pause()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v1, v3}, Lcom/android/settings/ToggleImageView;->setOnToggleListener(Lcom/android/settings/ToggleImageView$OnToggleListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AirplaneModeSwitchEnabler"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v1, v4}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/ToggleImageView;->setOnToggleListener(Lcom/android/settings/ToggleImageView$OnToggleListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckBox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
