.class public Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "VolteQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;,
        Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;
    }
.end annotation


# static fields
.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field private static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-VolteQuickSettingButton"

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VoLTE:I

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private isAirPlaneMode:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMccmnc:Ljava/lang/String;

.field private mMobileData:Z

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;

.field private mState:Z

.field private mVolteObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mInitialized:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMccmnc:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const v1, 0x7f0b01d9

    const v2, 0x7f0b01da

    const v3, 0x7f0202d8

    const v4, 0x7f0202d7

    const v5, 0x7f0202d6

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voicecall_type"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mState:Z

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMccmnc:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMccmnc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->checkMccmnc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I

    if-eq v0, v8, :cond_1

    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mVolteObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;

    return-void

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->getVoLTEEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mInitialized:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mState:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMobileData:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMobileData:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private static checkMccmnc(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "45416"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45419"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "45400"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45403"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45406"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45001"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVoLTEEnabled()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "voicecall_type"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMccmnc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "voicecall_type"

    const/4 v6, -0x2

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMccmnc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->checkMccmnc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I

    if-eq v4, v2, :cond_0

    move v0, v2

    :goto_0
    const-string v4, "STATUSBAR-VolteQuickSettingButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVoLTEEnabled() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/isAirPlaneMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I

    if-ne v6, v2, :cond_1

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private isSimReady()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0169

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b016a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)V

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x7d9

    invoke-virtual {v3, v5}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    move v3, v4

    :cond_1
    return v3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x7d8

    invoke-virtual {v3, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method public static manualIMSDeregister(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x7

    invoke-static {v1, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    const-string v1, "STATUSBAR-VolteQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manualIMSDeregister mInterfaceForGeneral:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    :cond_0
    return-void
.end method

.method public static manualIMSRegister(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x7

    invoke-static {v1, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    const-string v1, "STATUSBAR-VolteQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manualIMSRegister mInterfaceForGeneral:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    :cond_0
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mVolteObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public init()V
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "voicecall_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mVolteObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$MobileDataObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    return-void
.end method

.method public onClick(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-string v3, "STATUSBAR-VolteQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I

    if-ne v3, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0b01db

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eq v3, v1, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-ne v3, v2, :cond_3

    :cond_2
    const-string v3, "LTE"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "STATUSBAR-VolteQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(): MobileData state change is not allowed during volte : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0b0155

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mInitialized:Z

    if-nez v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0b01dd

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isSimReady()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMccmnc:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mMccmnc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->checkMccmnc(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0b01dc

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "voicecall_type"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->manualIMSRegister(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    sget-object v3, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v4, 0x7f0b01df

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    sget-object v3, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->getVoLTEEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "voicecall_type"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->manualIMSDeregister(Landroid/content/Context;)V

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method public onLongClick()V
    .locals 3

    const-string v0, "STATUSBAR-VolteQuickSettingButton"

    const-string v1, "onLongClick(): "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0b01db

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.phone"

    const-string v1, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
