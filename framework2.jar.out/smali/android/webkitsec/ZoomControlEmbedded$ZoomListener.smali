.class Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;
.super Ljava/lang/Object;
.source "ZoomControlEmbedded.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/ZoomControlEmbedded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/ZoomControlEmbedded;


# direct methods
.method private constructor <init>(Landroid/webkitsec/ZoomControlEmbedded;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkitsec/ZoomControlEmbedded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/ZoomControlEmbedded;Landroid/webkitsec/ZoomControlEmbedded$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;-><init>(Landroid/webkitsec/ZoomControlEmbedded;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkitsec/ZoomControlEmbedded;

    # getter for: Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomControlEmbedded;->access$100(Landroid/webkitsec/ZoomControlEmbedded;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkitsec/ZoomControlEmbedded;

    # getter for: Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;
    invoke-static {v0}, Landroid/webkitsec/ZoomControlEmbedded;->access$200(Landroid/webkitsec/ZoomControlEmbedded;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkitsec/ZoomControlEmbedded;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomControlEmbedded;->update()V

    :cond_0
    return-void
.end method

.method public onZoom(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkitsec/ZoomControlEmbedded;

    # getter for: Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomControlEmbedded;->access$100(Landroid/webkitsec/ZoomControlEmbedded;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->zoomIn()Z

    :goto_0
    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkitsec/ZoomControlEmbedded;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomControlEmbedded;->update()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkitsec/ZoomControlEmbedded;

    # getter for: Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomControlEmbedded;->access$100(Landroid/webkitsec/ZoomControlEmbedded;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->zoomOut()Z

    goto :goto_0
.end method
