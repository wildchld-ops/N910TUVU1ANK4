.class public Landroid/webkitsec/WebViewClientClassicExt;
.super Landroid/webkitsec/WebViewClient;
.source "WebViewClientClassicExt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProceededAfterSslError(Landroid/webkitsec/WebView;Landroid/net/http/SslError;)V
    .locals 0
    .param p1    # Landroid/webkitsec/WebView;
    .param p2    # Landroid/net/http/SslError;

    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkitsec/WebView;Landroid/webkitsec/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/webkitsec/WebView;
    .param p2    # Landroid/webkitsec/ClientCertRequestHandler;
    .param p3    # Ljava/lang/String;

    invoke-virtual {p2}, Landroid/webkitsec/ClientCertRequestHandler;->cancel()V

    return-void
.end method
