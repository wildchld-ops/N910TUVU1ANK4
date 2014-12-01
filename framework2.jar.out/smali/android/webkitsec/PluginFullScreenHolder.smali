.class Landroid/webkitsec/PluginFullScreenHolder;
.super Ljava/lang/Object;
.source "PluginFullScreenHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;
    }
.end annotation


# static fields
.field private static mLayout:Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;


# instance fields
.field private final mCallback:Landroid/webkitsec/WebChromeClient$CustomViewCallback;

.field private mContentView:Landroid/view/View;

.field private final mNpp:I

.field private final mOrientation:I

.field private final mWebView:Landroid/webkitsec/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/webkitsec/PluginFullScreenHolder$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/PluginFullScreenHolder$1;-><init>(Landroid/webkitsec/PluginFullScreenHolder;)V

    iput-object v0, p0, Landroid/webkitsec/PluginFullScreenHolder;->mCallback:Landroid/webkitsec/WebChromeClient$CustomViewCallback;

    iput-object p1, p0, Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;

    iput p3, p0, Landroid/webkitsec/PluginFullScreenHolder;->mNpp:I

    iput p2, p0, Landroid/webkitsec/PluginFullScreenHolder;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/PluginFullScreenHolder;)Landroid/webkitsec/WebViewClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/PluginFullScreenHolder;)I
    .locals 1

    iget v0, p0, Landroid/webkitsec/PluginFullScreenHolder;->mNpp:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkitsec/PluginFullScreenHolder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/PluginFullScreenHolder;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300()Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;
    .locals 1

    sget-object v0, Landroid/webkitsec/PluginFullScreenHolder;->mLayout:Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;

    return-object v0
.end method

.method static synthetic access$302(Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;)Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;
    .locals 0

    sput-object p0, Landroid/webkitsec/PluginFullScreenHolder;->mLayout:Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;

    return-object p0
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 5

    const/4 v4, -0x1

    new-instance v2, Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;

    iget-object v3, p0, Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;-><init>(Landroid/webkitsec/PluginFullScreenHolder;Landroid/content/Context;)V

    sput-object v2, Landroid/webkitsec/PluginFullScreenHolder;->mLayout:Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sget-object v2, Landroid/webkitsec/PluginFullScreenHolder;->mLayout:Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;

    invoke-virtual {v2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/webkitsec/PluginFullScreenHolder;->mLayout:Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    instance-of v2, p1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :cond_0
    iput-object p1, p0, Landroid/webkitsec/PluginFullScreenHolder;->mContentView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v1, p0, Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewManager()Landroid/webkitsec/ViewManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewManager()Landroid/webkitsec/ViewManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/ViewManager;->hideAll()V

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/PluginFullScreenHolder;->mLayout:Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;

    iget v2, p0, Landroid/webkitsec/PluginFullScreenHolder;->mOrientation:I

    iget-object v3, p0, Landroid/webkitsec/PluginFullScreenHolder;->mCallback:Landroid/webkitsec/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkitsec/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
