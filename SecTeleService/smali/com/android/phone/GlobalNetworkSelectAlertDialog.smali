.class public Lcom/android/phone/GlobalNetworkSelectAlertDialog;
.super Landroid/app/Activity;
.source "GlobalNetworkSelectAlertDialog.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget v2, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v2, v0, :cond_0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$1;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    iput-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$7;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$7;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    iput-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0    # Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "GlobalNetworkSelectAlertDialog"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040048

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a010d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0907a0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09079f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090025

    new-instance v6, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090028

    new-instance v6, Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$4;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/GlobalNetworkSelectAlertDialog$3;

    invoke-direct {v5, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$3;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/GlobalNetworkSelectAlertDialog$2;

    invoke-direct {v5, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$2;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;

    invoke-direct {v5, p0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;-><init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "GlobalNetworkSelectAlertDialog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "GlobalNetworkSelectAlertDialog"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
