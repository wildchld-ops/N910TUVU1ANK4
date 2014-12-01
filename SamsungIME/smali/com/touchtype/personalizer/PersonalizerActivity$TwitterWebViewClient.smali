.class Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitterWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerActivity;


# direct methods
.method public constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Page finished: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$800(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :try_start_0
    const-string v5, "oauth_verifier"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v5, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;

    invoke-direct {v5, p0, v2}, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    const-string v5, "api.twitter.com/oauth"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "denied"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "redirect_after_login"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    const-string v5, "settings"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_0

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedOperationException TwitterWebViewClient for URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # invokes: Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V
    invoke-static {v5}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$400(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    goto :goto_0
.end method
