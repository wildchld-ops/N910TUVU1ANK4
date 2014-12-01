.class public Lcom/android/settings/wifi/SetupWizardWifiScreen;
.super Landroid/app/Activity;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    }
.end annotation


# instance fields
.field private intentExtras:Landroid/os/Bundle;

.field private isApCheckDone:Z

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mConnCheckProgressDialog:Landroid/app/ProgressDialog;

.field private mConnectionResult:I

.field private mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

.field private mFilter:Landroid/content/IntentFilter;

.field final mHandler:Landroid/os/Handler;

.field private mIsFragmentCreated:Z

.field private mIsWifiConnected:Z

.field private mNegativeButtonLayout:Landroid/widget/LinearLayout;

.field private mNegativeButtonText:Landroid/widget/TextView;

.field private mPositiveButtonText:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSuccessWifiConNID:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScreenSubText:Landroid/widget/TextView;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnCheckProgressDialog:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    iput v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isApCheckDone:Z

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->intentExtras:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    new-instance v0, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/SetupWizardWifiScreen;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/WifiSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/SetupWizardWifiScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    return-object v0
.end method

.method private getDimension(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const v10, 0x7f091490

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle Connection State: Action ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "What is the Connection Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showConnProgressDialog()V

    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;Lcom/android/settings/wifi/SetupWizardWifiScreen$1;)V

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    const-string v4, " This AP is already passed Netowrk Connection and it has valid internet connection"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    const v4, 0x7f091492

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v6, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    goto :goto_0

    :cond_3
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "wifi_state"

    invoke-virtual {p2, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Wifi State : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v8, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    if-ne v2, v7, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v4, 0x7f091498

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    const-string v4, "No Networks Found"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v4, 0x7f09149a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    goto/16 :goto_0
.end method

.method private initializeView()V
    .locals 6

    const v5, 0x7f0b0727

    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    const-string v4, "initializeView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->setCustomTitle(Landroid/app/Activity;)V

    const v3, 0x7f0b0726

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v3, 0x7f0b072a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    const v3, 0x7f0b0728

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v4, 0x7f091498

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$2;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b0729

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setMargins(IIIILandroid/widget/LinearLayout;)V
    .locals 1

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private showAlertDialog(I)V
    .locals 6

    const v5, 0x7f090859

    const/4 v4, 0x0

    const-string v1, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Show the Alert Dialog for the connection Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f091499

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$6;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$6;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0903b9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0903ba

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0903bc

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0903bb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$8;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$8;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/settings/wifi/SetupWizardWifiScreen$9;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$9;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09149c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09149d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$10;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$10;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private showConnProgressDialog()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " Show the Connection Check Progress Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f09149e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateLayoutMarginOnOrienationChange()V
    .locals 13

    const/4 v2, 0x0

    const v0, 0x7f0b0722

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02088b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0725

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v0, 0x7f0b060c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const v0, 0x7f0f0127

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v1

    const v0, 0x7f0f0128

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v3

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setMargins(IIIILandroid/widget/LinearLayout;)V

    const v0, 0x7f0f0132

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v7

    const v0, 0x7f0f0131

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v8

    const v0, 0x7f0f0133

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v9

    const v0, 0x7f0f0134

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setMargins(IIIILandroid/widget/LinearLayout;)V

    return-void
.end method

.method private wifiConnSuccess()V
    .locals 2

    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " WiFi Connection Success "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    const v1, 0x7f091494

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    return-void
.end method


# virtual methods
.method public isSCamera()Z
    .locals 2

    const-string v0, "gd1ltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "onActivityResult Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " onBackPressed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->updateLayoutMarginOnOrienationChange()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "OnCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isSCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const v0, 0x7f0402cc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "persist.sys.vzw_wifi_running"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/SetupWizardWifiScreen$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$1;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.sys.vzw_wifi_running"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " OnPause Called ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v2, "SetupWizard --> SetupWizardWifiScreen"

    const-string v3, " OnResume Called ..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    if-nez v2, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b06d6

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
