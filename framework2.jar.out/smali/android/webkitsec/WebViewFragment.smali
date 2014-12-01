.class public Landroid/webkitsec/WebViewFragment;
.super Landroid/app/Fragment;
.source "WebViewFragment.java"


# instance fields
.field private mIsWebViewAvailable:Z

.field private mWebView:Landroid/webkitsec/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getWebView()Landroid/webkitsec/WebView;
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewFragment;->mIsWebViewAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewFragment;->mWebView:Landroid/webkitsec/WebView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewFragment;->mWebView:Landroid/webkitsec/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewFragment;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->destroy()V

    :cond_0
    new-instance v0, Landroid/webkitsec/WebView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewFragment;->mWebView:Landroid/webkitsec/WebView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewFragment;->mIsWebViewAvailable:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewFragment;->mWebView:Landroid/webkitsec/WebView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewFragment;->mWebView:Landroid/webkitsec/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewFragment;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewFragment;->mWebView:Landroid/webkitsec/WebView;

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewFragment;->mIsWebViewAvailable:Z

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Landroid/webkitsec/WebViewFragment;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewFragment;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->onResume()V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method
