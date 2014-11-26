.class Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmailWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerActivity;


# direct methods
.method private constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype/personalizer/PersonalizerActivity$1;)V
    .locals 0
    .param p1    # Lcom/touchtype/personalizer/PersonalizerActivity;
    .param p2    # Lcom/touchtype/personalizer/PersonalizerActivity$1;

    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->isRedirectedUrl:Z
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$700(Lcom/touchtype/personalizer/PersonalizerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    const/4 v1, 0x1

    # setter for: Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z
    invoke-static {v0, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$602(Lcom/touchtype/personalizer/PersonalizerActivity;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$600(Lcom/touchtype/personalizer/PersonalizerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->isRedirectedUrl:Z
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$700(Lcom/touchtype/personalizer/PersonalizerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$800(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    const/4 v1, 0x0

    # setter for: Lcom/touchtype/personalizer/PersonalizerActivity;->isRedirectedUrl:Z
    invoke-static {v0, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$702(Lcom/touchtype/personalizer/PersonalizerActivity;Z)Z

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Ljava/lang/String;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading URL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "access_token"

    const-string v1, "state"

    const-string v7, "http://www.swiftkey.net/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->extractParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->extractParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # invokes: Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V
    invoke-static {v7}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$400(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    :goto_0
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->isLoadingFinished:Z
    invoke-static {v7}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$600(Lcom/touchtype/personalizer/PersonalizerActivity;)Z

    move-result v7

    return v7

    :cond_2
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;
    invoke-static {v7}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/GmailAuthenticator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/touchtype/personalizer/service/GmailAuthenticator;->getSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mismatched state parameter"

    invoke-static {v7, v8}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # invokes: Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V
    invoke-static {v7}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$400(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/touchtype_fluency/service/util/PostParams;

    invoke-direct {v4}, Lcom/touchtype_fluency/service/util/PostParams;-><init>()V

    invoke-virtual {v4, v0, v2}, Lcom/touchtype_fluency/service/util/PostParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # invokes: Lcom/touchtype/personalizer/PersonalizerActivity;->finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V
    invoke-static {v7, v4}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$500(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype_fluency/service/util/PostParams;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
