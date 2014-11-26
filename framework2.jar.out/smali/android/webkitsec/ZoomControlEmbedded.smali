.class Landroid/webkitsec/ZoomControlEmbedded;
.super Ljava/lang/Object;
.source "ZoomControlEmbedded.java"

# interfaces
.implements Landroid/webkitsec/ZoomControlBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/ZoomControlEmbedded$1;,
        Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;
    }
.end annotation


# instance fields
.field private final mWebView:Landroid/webkitsec/WebViewClassic;

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private final mZoomManager:Landroid/webkitsec/ZoomManager;


# direct methods
.method public constructor <init>(Landroid/webkitsec/ZoomManager;Landroid/webkitsec/WebViewClassic;)V
    .locals 0
    .param p1    # Landroid/webkitsec/ZoomManager;
    .param p2    # Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    iput-object p2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-void
.end method

.method static synthetic access$100(Landroid/webkitsec/ZoomControlEmbedded;)Landroid/webkitsec/WebViewClassic;
    .locals 1
    .param p0    # Landroid/webkitsec/ZoomControlEmbedded;

    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkitsec/ZoomControlEmbedded;)Landroid/widget/ZoomButtonsController;
    .locals 1
    .param p0    # Landroid/webkitsec/ZoomControlEmbedded;

    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method private getControls()Landroid/widget/ZoomButtonsController;
    .locals 5

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    new-instance v2, Landroid/widget/ZoomButtonsController;

    iget-object v3, p0, Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v3, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;-><init>(Landroid/webkitsec/ZoomControlEmbedded;Landroid/webkitsec/ZoomControlEmbedded$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x800005

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v2
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Landroid/webkitsec/ZoomControlEmbedded;->getControls()Landroid/widget/ZoomButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->isZoomScaleFixed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->isDoubleTapEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getDoubleTapToastCount()I

    move-result v0

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->isInZoomOverview()Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebSettingsClassic;->setDoubleTapToastCount(I)V

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10405f3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->canZoomIn()Z

    move-result v0

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->canZoomOut()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->isInZoomOverview()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0
.end method
