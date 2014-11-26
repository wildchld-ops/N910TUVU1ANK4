.class Landroid/webkitsec/CallbackProxy$1;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/CallbackProxy;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/CallbackProxy;


# direct methods
.method constructor <init>(Landroid/webkitsec/CallbackProxy;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/CallbackProxy$1;->this$0:Landroid/webkitsec/CallbackProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    if-eqz p2, :cond_0

    const-string v0, "CallbackProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling the setBingSearchAlertDialogCheckBoxValue with value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy$1;->this$0:Landroid/webkitsec/CallbackProxy;

    # getter for: Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;
    invoke-static {v0}, Landroid/webkitsec/CallbackProxy;->access$100(Landroid/webkitsec/CallbackProxy;)Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy$1;->this$0:Landroid/webkitsec/CallbackProxy;

    # getter for: Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v1}, Landroid/webkitsec/CallbackProxy;->access$000(Landroid/webkitsec/CallbackProxy;)Landroid/webkitsec/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/webkitsec/WebChromeClient;->setBingSearchAlertDialogCheckBoxValue(Landroid/webkitsec/WebView;Z)V

    :cond_0
    return-void
.end method
