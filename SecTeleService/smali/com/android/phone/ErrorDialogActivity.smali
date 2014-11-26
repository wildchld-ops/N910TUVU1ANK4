.class public Lcom/android/phone/ErrorDialogActivity;
.super Landroid/app/Activity;
.source "ErrorDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ErrorDialogActivity$23;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsRegistServiceState:Z

.field private mRadioOnProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/ErrorDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/ErrorDialogActivity;->mIsRegistServiceState:Z

    new-instance v0, Lcom/android/phone/ErrorDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ErrorDialogActivity$1;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    iput-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/ErrorDialogActivity;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/ErrorDialogActivity;

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/ErrorDialogActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/phone/ErrorDialogActivity;

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/ErrorDialogActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0    # Lcom/android/phone/ErrorDialogActivity;
    .param p1    # Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/ErrorDialogActivity;)V
    .locals 0
    .param p0    # Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/ErrorDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0    # Lcom/android/phone/ErrorDialogActivity;
    .param p1    # Landroid/content/DialogInterface;

    invoke-direct {p0, p1}, Lcom/android/phone/ErrorDialogActivity;->addVoiceMailNumberPanel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/ErrorDialogActivity;)V
    .locals 0
    .param p0    # Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->showAirplaneModeOffProgressDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/ErrorDialogActivity;)V
    .locals 0
    .param p0    # Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->unregisterForServiceStateChanged()V

    return-void
.end method

.method private addVoiceMailNumberPanel(Landroid/content/DialogInterface;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    return-void
.end method

.method private registerForServiceStateChanged()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    iput-boolean v3, p0, Lcom/android/phone/ErrorDialogActivity;->mIsRegistServiceState:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private sendRadioOnTimerMessageDelayed()V
    .locals 12

    const-wide/16 v10, 0x4e20

    const/4 v9, 0x1

    const/4 v8, 0x2

    const-string v5, "single_lte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v5, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v8, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v5, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->registerForServiceStateChanged()V

    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v5}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v0

    sget-object v5, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RADIO_ON_TIMER simId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-ne v3, v9, :cond_2

    const-string v5, "feature_marvell_dsds"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x88b8

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private sendStartUpErrorViaATCommand()V
    .locals 3

    sget-object v0, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "sendStartUpErrorViaATCommand"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    const-string v1, "SERR"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setFlagToShowWhenLocked()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private showAirplaneModeErrorDialog(I)V
    .locals 5
    .param p1    # I

    const v1, 0x7f090025

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f090087

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090448

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$13;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$13;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090028

    new-instance v4, Lcom/android/phone/ErrorDialogActivity$12;

    invoke-direct {v4, p0}, Lcom/android/phone/ErrorDialogActivity$12;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$11;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$11;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$10;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$10;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-void
.end method

.method private showAirplaneModeOffProgressDialog()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090449

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/ErrorDialogActivity$18;

    invoke-direct {v1, p0}, Lcom/android/phone/ErrorDialogActivity$18;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/ErrorDialogActivity$19;

    invoke-direct {v1, p0}, Lcom/android/phone/ErrorDialogActivity$19;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->sendRadioOnTimerMessageDelayed()V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDivertToVoiceDialog(I)V
    .locals 6
    .param p1    # I

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$20;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$20;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    new-instance v2, Lcom/android/phone/ErrorDialogActivity$21;

    invoke-direct {v2, p0}, Lcom/android/phone/ErrorDialogActivity$21;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    new-instance v0, Lcom/android/phone/ErrorDialogActivity$22;

    invoke-direct {v0, p0}, Lcom/android/phone/ErrorDialogActivity$22;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090455

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090456

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showEmergencyCallFromAirplaneModeDialog(I)V
    .locals 4
    .param p1    # I

    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->setFlagToShowWhenLocked()V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090448

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090025

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$17;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$17;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090028

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$16;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$16;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/ErrorDialogActivity$15;

    invoke-direct {v2, p0}, Lcom/android/phone/ErrorDialogActivity$15;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/ErrorDialogActivity$14;

    invoke-direct {v2, p0}, Lcom/android/phone/ErrorDialogActivity$14;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-void
.end method

.method private showGenericErrorDialog(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ErrorDialogActivity;->showGenericErrorDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showGenericErrorDialog(ILcom/android/phone/Constants$CallStatusCode;)V
    .locals 1
    .param p1    # I
    .param p2    # Lcom/android/phone/Constants$CallStatusCode;

    const-string v0, "sec_bt_at_command"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->sendStartUpErrorViaATCommand()V

    :cond_0
    if-eqz p2, :cond_4

    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/phone/Constants$CallStatusCode;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMS_SERVICE_IMPOSSIBLE:Lcom/android/phone/Constants$CallStatusCode;

    if-ne p2, v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/ErrorDialogActivity;->showDivertToVoiceDialog(I)V

    :goto_0
    return-void

    :cond_2
    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/android/phone/ErrorDialogActivity;->showGenericErrorDialog(I)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_CALL_FROM_AIRPLANE_MODE_DIALOG:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/phone/ErrorDialogActivity;->showEmergencyCallFromAirplaneModeDialog(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/ErrorDialogActivity;->showAirplaneModeErrorDialog(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/ErrorDialogActivity;->showGenericErrorDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0901ad
        :pswitch_0
    .end packed-switch
.end method

.method private showGenericErrorDialog(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/phone/ErrorDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/ErrorDialogActivity$2;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    new-instance v0, Lcom/android/phone/ErrorDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/android/phone/ErrorDialogActivity$3;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090025

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showGenericErrorDialog(Ljava/lang/CharSequence;Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Lcom/android/phone/Constants$CallStatusCode;

    invoke-direct {p0, p1}, Lcom/android/phone/ErrorDialogActivity;->showGenericErrorDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showMissingVoicemailErrorDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090025

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$6;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$6;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09003a

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$5;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$5;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/ErrorDialogActivity$4;

    invoke-direct {v2, p0}, Lcom/android/phone/ErrorDialogActivity$4;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-void
.end method

.method private showProgressIndication(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    sget-object v0, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgressIndication(message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->dismissProgressIndication()V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showTryVoicecallDialog(ILjava/lang/String;)V
    .locals 6
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, p2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090025

    new-instance v5, Lcom/android/phone/ErrorDialogActivity$9;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/ErrorDialogActivity$9;-><init>(Lcom/android/phone/ErrorDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090028

    new-instance v5, Lcom/android/phone/ErrorDialogActivity$8;

    invoke-direct {v5, p0}, Lcom/android/phone/ErrorDialogActivity$8;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/ErrorDialogActivity$7;

    invoke-direct {v4, p0}, Lcom/android/phone/ErrorDialogActivity$7;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/phone/ErrorDialogActivity;->mIsRegistServiceState:Z

    if-eqz v0, :cond_0

    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/ErrorDialogActivity;->mIsRegistServiceState:Z

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private updateProgressIndication(Lcom/android/phone/Constants$ProgressIndicationType;)V
    .locals 3
    .param p1    # Lcom/android/phone/Constants$ProgressIndicationType;

    const v2, 0x7f0901bc

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->dismissProgressIndication()V

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/ErrorDialogActivity$23;->$SwitchMap$com$android$phone$Constants$ProgressIndicationType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressIndication: unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->dismissProgressIndication()V

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->dismissProgressIndication()V

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->setFlagToShowWhenLocked()V

    const v0, 0x7f0901bd

    invoke-direct {p0, v2, v0}, Lcom/android/phone/ErrorDialogActivity;->showProgressIndication(II)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->setFlagToShowWhenLocked()V

    const v0, 0x7f0901be

    invoke-direct {p0, v2, v0}, Lcom/android/phone/ErrorDialogActivity;->showProgressIndication(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->dismissProgressIndication()V

    iput-object v2, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->unregisterForServiceStateChanged()V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v2, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public dismissProgressIndication()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismissProgressIndication()..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, p0, Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mRadioOnProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/4 v9, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "show_missing_voicemail"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/phone/PhoneGlobals;->setErrorDialogActivityInstance(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "vt_fail_try_voicecall_number"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->showMissingVoicemailErrorDialog()V

    :goto_0
    return-void

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "error_message_id"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, v5}, Lcom/android/phone/ErrorDialogActivity;->showTryVoicecallDialog(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "error_message_id"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "error_message"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "call_status_code"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "progress_indication_type"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/android/phone/Constants$ProgressIndicationType;

    if-eq v1, v9, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/android/phone/ErrorDialogActivity;->showGenericErrorDialog(ILcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0, v2, v0}, Lcom/android/phone/ErrorDialogActivity;->showGenericErrorDialog(Ljava/lang/CharSequence;Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-direct {p0, v3}, Lcom/android/phone/ErrorDialogActivity;->updateProgressIndication(Lcom/android/phone/Constants$ProgressIndicationType;)V

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v7, "ErrorDialogActivity called with no error type extra."

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->cleanUp()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public sendECMPStateChangedMsg()V
    .locals 4

    const/4 v3, 0x3

    sget-object v0, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "sendECMPStateChangedMsg()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
