.class public Lcom/android/settings/MobileDataEnabler;
.super Ljava/lang/Object;
.source "MobileDataEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;,
        Lcom/android/settings/MobileDataEnabler$SwitchHandler;
    }
.end annotation


# static fields
.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private isAirPlaneMode:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mDataEnabledObserver:Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;

.field private mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/MobileDataEnabler$9;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$9;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mDataEnabledObserver:Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;

    new-instance v0, Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$SwitchHandler;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_CARD_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MobileDataEnabler;->toastAlert:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/MobileDataEnabler;

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;
    .locals 1
    .param p0    # Lcom/android/settings/MobileDataEnabler;

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MobileDataEnabler;)I
    .locals 1
    .param p0    # Lcom/android/settings/MobileDataEnabler;

    iget v0, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/MobileDataEnabler;I)I
    .locals 0
    .param p0    # Lcom/android/settings/MobileDataEnabler;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/MobileDataEnabler;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/settings/MobileDataEnabler;

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private onRoamingDisplayMobileDataOnAlert()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090be4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f091570

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09156f

    new-instance v2, Lcom/android/settings/MobileDataEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/MobileDataEnabler$1;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/MobileDataEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/MobileDataEnabler$2;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/android/settings/MobileDataEnabler;->mStateMachineEvent:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    iget v6, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    if-ne v6, v5, :cond_2

    sget-object v4, Lcom/android/settings/MobileDataEnabler;->toastAlert:Landroid/widget/Toast;

    const v5, 0x7f091721

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    sget-object v4, Lcom/android/settings/MobileDataEnabler;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v6, "gsm.sim.currentcardstatus"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "gsm.sim.currentcardstatus2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c8a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090c8b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v6, "gsm.operator.isroaming"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "gsm.operator.isroaming2"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v2, v5

    :goto_1
    iget-object v6, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "EverPoppedUp"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v6, "MobileDataEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCheckedChanged, isRoaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isChecked = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCheckedRoamingOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    if-eqz p2, :cond_6

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    if-nez v3, :cond_0

    const-string v4, "MobileDataEnabler"

    const-string v6, "onCheckedChanged, show warning only once when roaming."

    invoke-static {v4, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "EverPoppedUp"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->onRoamingDisplayMobileDataOnAlert()V

    goto/16 :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mDataEnabledObserver:Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MobileDataEnabler"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mDataEnabledObserver:Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4
    .param p1    # Landroid/widget/Switch;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "gsm.sim.currentcardstatus"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gsm.sim.currentcardstatus2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    :cond_2
    const-string v1, "MobileDataEnabler"

    const-string v2, " setSwitch setChecked , false"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/settings/MobileDataEnabler;->setSwitchChecked(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/MobileDataEnabler;->setSwitchChecked(Z)V

    goto :goto_0
.end method

.method public setSwitchChecked(Z)V
    .locals 3
    .param p1    # Z

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MobileDataEnabler;->mStateMachineEvent:Z

    const-string v0, "MobileDataEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setSwitchChecked , checked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MobileDataEnabler;->mStateMachineEvent:Z

    :cond_0
    return-void
.end method
