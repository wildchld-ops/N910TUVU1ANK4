.class Landroid/webkitsec/PluginFullScreenHolder$1;
.super Ljava/lang/Object;
.source "PluginFullScreenHolder.java"

# interfaces
.implements Landroid/webkitsec/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/PluginFullScreenHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/PluginFullScreenHolder;


# direct methods
.method constructor <init>(Landroid/webkitsec/PluginFullScreenHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/PluginFullScreenHolder$1;->this$0:Landroid/webkitsec/PluginFullScreenHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 4

    iget-object v0, p0, Landroid/webkitsec/PluginFullScreenHolder$1;->this$0:Landroid/webkitsec/PluginFullScreenHolder;

    # getter for: Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/PluginFullScreenHolder;->access$000(Landroid/webkitsec/PluginFullScreenHolder;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Landroid/webkitsec/PluginFullScreenHolder$1;->this$0:Landroid/webkitsec/PluginFullScreenHolder;

    # getter for: Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/PluginFullScreenHolder;->access$000(Landroid/webkitsec/PluginFullScreenHolder;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0xb6

    iget-object v2, p0, Landroid/webkitsec/PluginFullScreenHolder$1;->this$0:Landroid/webkitsec/PluginFullScreenHolder;

    # getter for: Landroid/webkitsec/PluginFullScreenHolder;->mNpp:I
    invoke-static {v2}, Landroid/webkitsec/PluginFullScreenHolder;->access$100(Landroid/webkitsec/PluginFullScreenHolder;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    # getter for: Landroid/webkitsec/PluginFullScreenHolder;->mLayout:Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;
    invoke-static {}, Landroid/webkitsec/PluginFullScreenHolder;->access$300()Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/PluginFullScreenHolder$1;->this$0:Landroid/webkitsec/PluginFullScreenHolder;

    # getter for: Landroid/webkitsec/PluginFullScreenHolder;->mContentView:Landroid/view/View;
    invoke-static {v1}, Landroid/webkitsec/PluginFullScreenHolder;->access$200(Landroid/webkitsec/PluginFullScreenHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    # setter for: Landroid/webkitsec/PluginFullScreenHolder;->mLayout:Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;
    invoke-static {v0}, Landroid/webkitsec/PluginFullScreenHolder;->access$302(Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;)Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;

    iget-object v0, p0, Landroid/webkitsec/PluginFullScreenHolder$1;->this$0:Landroid/webkitsec/PluginFullScreenHolder;

    # getter for: Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/PluginFullScreenHolder;->access$000(Landroid/webkitsec/PluginFullScreenHolder;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getViewManager()Landroid/webkitsec/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/ViewManager;->showAll()V

    return-void
.end method
