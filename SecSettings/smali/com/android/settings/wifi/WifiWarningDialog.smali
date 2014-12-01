.class public Lcom/android/settings/wifi/WifiWarningDialog;
.super Landroid/app/Activity;
.source "WifiWarningDialog.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field static mWifiEnableWarningDialog:Landroid/app/AlertDialog;


# instance fields
.field private mCurrentDialog:Landroid/app/Dialog;

.field private mEnableWarningDialogIntent:Landroid/content/Intent;

.field private mIsLightTheme:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mIsLightTheme:Z

    return-void
.end method

.method private Sendmsg(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_cmcc_manual"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_cmcc_manual"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xf

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "enable"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "WifiWarningDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetupWizard KEY_CMCC_MANUAL_CONNECTION onPreferenceChange connectionType :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_cmcc_manual"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->wifiWarningDialogPressOK()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->wifiWarningDialogPressCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiWarningDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiWarningDialog;->Sendmsg(I)V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiWarningDialog;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private displayDialog(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiWarningDialog;->getDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiWarningDialog"

    const-string v2, "Dialog is null or showing -> exist dialog cancel "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private getDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x0

    const-string v3, "WifiWarningDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayDialog id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/settings/wifi/WifiWarningDialog;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/wifi/WifiWarningDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiWarningDialog$4;-><init>(Lcom/android/settings/wifi/WifiWarningDialog;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09130b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0901ba

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/wifi/WifiWarningDialog$5;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiWarningDialog$5;-><init>(Lcom/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    const v4, 0x7f091ba4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v6

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/String;

    const v5, 0x7f091ba5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/String;

    const v5, 0x7f091ba6

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    new-instance v3, Lcom/android/settings/wifi/WifiWarningDialog$6;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiWarningDialog$6;-><init>(Lcom/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v0, v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    return-object v3
.end method

.method private parseIntent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mEnableWarningDialogIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const-string v0, "WifiWarningDialog"

    const-string v1, "WifiWarningDialog.parseIntent: mEnableWarningDialogIntent == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mEnableWarningDialogIntent:Landroid/content/Intent;

    const-string v1, "dialog_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showEnableWarningDialog()V
    .locals 5

    const-string v2, "WifiWarningDialog"

    const-string v3, "showEnableWarningDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    :cond_0
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiWarningDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiWarningDialog$1;-><init>(Lcom/android/settings/wifi/WifiWarningDialog;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mIsLightTheme:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    :goto_0
    invoke-direct {v3, v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f09197c

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09197d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09185a

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0901ba

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiWarningDialog$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiWarningDialog$3;-><init>(Lcom/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiWarningDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiWarningDialog$2;-><init>(Lcom/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void

    :cond_2
    const/4 v2, 0x4

    goto :goto_0
.end method

.method private wifiWarningDialogPressCancel()V
    .locals 4

    const-string v2, "WifiWarningDialog"

    const-string v3, "wifiWarningDialogPressCancel. Send Broadcast: WIFI_DIALOG_CANCEL_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "called_dialog"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "from"

    const-string v3, "WifiWarningDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-super {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WifiWarningDialog"

    const-string v3, "wifiWarningDialogPressCancel. dismiss dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wifiWarningDialogPressOK()V
    .locals 4

    const-string v2, "WifiWarningDialog"

    const-string v3, "wifiWarningDialogPressOK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x46

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WifiWarningDialog"

    const-string v3, "wifiWarningDialogPressOK. dismiss dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "WifiWarningDialog"

    const-string v1, "WifiWarningDialog.onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mEnableWarningDialogIntent:Landroid/content/Intent;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mIsLightTheme:Z

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->parseIntent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->parseIntent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wlan_enable_warning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWarningDialog"

    const-string v1, "Receive request: wlan_enable_warning. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->showEnableWarningDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->parseIntent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->parseIntent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_connection_method"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiWarningDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive request: set_connection_method.  setupwizard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "persist.sys.setupwizard"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiWarningDialog;->Sendmsg(I)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiWarningDialog;->displayDialog(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sput-object v1, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
