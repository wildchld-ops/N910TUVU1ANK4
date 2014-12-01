.class public Lcom/touchtype/personalizer/PersonalizerActivity;
.super Landroid/app/Activity;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;,
        Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;,
        Lcom/touchtype/personalizer/PersonalizerActivity$FacebookWebViewClient;,
        Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isLoadingFinished:Z

.field private isRedirectedUrl:Z

.field private mContext:Landroid/content/Context;

.field private mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

.field private mWeiboAuthenticator:Lcom/touchtype/personalizer/service/WeiboAuthenticator;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isRedirectedUrl:Z

    return-void
.end method

.method static synthetic access$100(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/TwitterAuthenticator;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/GmailAuthenticator;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V

    return-void
.end method

.method static synthetic access$500(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype_fluency/service/util/PostParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V

    return-void
.end method

.method static synthetic access$600(Lcom/touchtype/personalizer/PersonalizerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z

    return v0
.end method

.method static synthetic access$602(Lcom/touchtype/personalizer/PersonalizerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z

    return p1
.end method

.method static synthetic access$700(Lcom/touchtype/personalizer/PersonalizerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isRedirectedUrl:Z

    return v0
.end method

.method static synthetic access$702(Lcom/touchtype/personalizer/PersonalizerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isRedirectedUrl:Z

    return p1
.end method

.method static synthetic access$800(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/WeiboAuthenticator;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWeiboAuthenticator:Lcom/touchtype/personalizer/service/WeiboAuthenticator;

    return-object v0
.end method

.method public static extractParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v2, ""

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x26

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method private finishFail()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "params"

    invoke-virtual {p1}, Lcom/touchtype_fluency/service/util/PostParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getVerifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private start(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v4, "service"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-static {v6}, Ljunit/framework/Assert;->assertTrue(Z)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startFacebook(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startWeibo(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startGmail(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startTwitter(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v5, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method private startFacebook(Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "Enable"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "UseSSO"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    const-string v4, "AccessToken"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->createParamsForSSO(Ljava/lang/String;)Lcom/touchtype_fluency/service/util/PostParams;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/touchtype/personalizer/PersonalizerActivity$FacebookWebViewClient;

    invoke-direct {v5, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$FacebookWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "340440709365233"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&display=touch&redirect_uri=http%3A%2F%2Fwww.touchtype-online.com%2Flogin_success.html&scope=user_about_me,user_notes,user_status,read_mailbox"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private startGmail(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype/personalizer/PersonalizerActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    new-instance v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/touchtype/personalizer/service/GmailAuthenticator;-><init>(Landroid/content/Context;Lcom/touchtype/personalizer/PersonalizerActivity;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerActivity$1;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$1;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startTwitter(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;

    invoke-direct {v1, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;-><init>(Landroid/content/Context;Lcom/touchtype/personalizer/PersonalizerActivity;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private startWeibo(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;

    invoke-direct {v1, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/touchtype/personalizer/service/WeiboAuthenticator;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/touchtype/personalizer/service/WeiboAuthenticator;-><init>(Landroid/content/Context;Lcom/touchtype/personalizer/PersonalizerActivity;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWeiboAuthenticator:Lcom/touchtype/personalizer/service/WeiboAuthenticator;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public loadWebView(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x7f0300b7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v1, 0x7f0800f0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    const v1, 0x7f0e01f9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0800f1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->freeMemory()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->start(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;

    const-string v2, "CookieManager not initialised. onDestroy called before onCreate?"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
