.class Lcom/touchtype/personalizer/PersonalizerActivity$1;
.super Ljava/lang/Object;
.source "PersonalizerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerActivity;->startGmail(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerActivity;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$1;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity$1;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity$1;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$1;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    # getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/GmailAuthenticator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype/personalizer/service/GmailAuthenticator;->getAuthUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
