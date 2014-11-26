.class public Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
.super Landroid/app/Activity;
.source "CaptivePortalWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;,
        Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    }
.end annotation


# static fields
.field private static mProgressBar:Landroid/widget/ProgressBar;


# instance fields
.field private mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

.field protected mContext:Landroid/content/Context;

.field private mWebview:Landroid/webkit/WebView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiNetworkId:I

    return-void
.end method

.method static synthetic access$000()Landroid/widget/ProgressBar;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    .locals 0
    .param p0    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
    .param p1    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Landroid/webkit/SslErrorHandler;
    .param p3    # Landroid/net/http/SslError;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Landroid/webkit/SslErrorHandler;
    .param p3    # Landroid/net/http/SslError;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->createPageInfoDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Landroid/webkit/SslErrorHandler;
    .param p3    # Landroid/net/http/SslError;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->createSslCertificateDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createPageInfoDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 8
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Landroid/webkit/SslErrorHandler;
    .param p3    # Landroid/net/http/SslError;

    iget-object v5, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f04017b

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    const v5, 0x7f0b0393

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0b00bc

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f09038e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090859

    new-instance v7, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$11;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$11;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$10;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$10;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createSslCertificateDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 6
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Landroid/webkit/SslErrorHandler;
    .param p3    # Landroid/net/http/SslError;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09038b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090859

    new-instance v4, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$5;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$5;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09038a

    new-instance v5, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$4;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$4;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$3;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    return-object v2
.end method

.method private createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 4
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Landroid/webkit/SslErrorHandler;
    .param p3    # Landroid/net/http/SslError;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09038b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09038c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090389

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$9;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$9;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09038d

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$8;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$8;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901ba

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$7;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$7;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$6;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$6;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f040272

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    iput-object p0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    move-object v0, p0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->setCustomTitle(Landroid/app/Activity;)V

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiNetworkId:I

    const v3, 0x7f0b060b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    const v3, 0x7f0b01d1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    sput-object v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    new-instance v2, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v4, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const-string v3, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v4, "Load the Page in WebView : http://www.google.com/"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    const-string v4, "http://www.google.com/"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    const v3, 0x7f0b060e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$2;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " OnResume Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiNetworkId:I

    iget-object v1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " WiFi AP changed by Settings Application -- Check this AP for Internet connection "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    new-instance v0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method
