.class public Landroid/webkitsec/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewDebug$HierarchyHandler;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebView$1;,
        Landroid/webkitsec/WebView$FindListenerDistributor;,
        Landroid/webkitsec/WebView$PrivateAccess;,
        Landroid/webkitsec/WebView$HitTestResult;,
        Landroid/webkitsec/WebView$ContentSizeListener;,
        Landroid/webkitsec/WebView$PictureListener;,
        Landroid/webkitsec/WebView$FindListener;,
        Landroid/webkitsec/WebView$WebViewTransport;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "webview_proxy"

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static mIsBrowserPolicyEnabled:Z

.field private static sEnforceThreadChecking:Ljava/lang/Boolean;


# instance fields
.field private mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

.field private mProvider:Landroid/webkitsec/WebViewProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/WebView;->sEnforceThreadChecking:Ljava/lang/Boolean;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkitsec/WebView;->mIsBrowserPolicyEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/WebView;->sEnforceThreadChecking:Ljava/lang/Boolean;

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    invoke-direct {p0}, Landroid/webkitsec/WebView;->ensureProviderCreated()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p4, p5}, Landroid/webkitsec/WebViewProvider;->init(Ljava/util/Map;Z)V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p2, p3}, Landroid/webkitsec/WebViewProvider;->updateSelectPopupRsrc(Landroid/util/AttributeSet;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$1001(Landroid/webkitsec/WebView;ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$101(Landroid/webkitsec/WebView;)I
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method static synthetic access$1101(Landroid/webkitsec/WebView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkitsec/WebView;IIIIIIIIZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkitsec/WebView;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/View;->awakenScrollBars(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkitsec/WebView;IZ)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkitsec/WebView;)F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/webkitsec/WebView;)F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/webkitsec/WebView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkitsec/WebView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1902(Landroid/webkitsec/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/view/View;->mScrollX:I

    return p1
.end method

.method static synthetic access$2002(Landroid/webkitsec/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/view/View;->mScrollY:I

    return p1
.end method

.method static synthetic access$201(Landroid/webkitsec/WebView;II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method static synthetic access$301(Landroid/webkitsec/WebView;)V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method static synthetic access$401(Landroid/webkitsec/WebView;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$501(Landroid/webkitsec/WebView;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$601(Landroid/webkitsec/WebView;)Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$701(Landroid/webkitsec/WebView;IIII)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$801(Landroid/webkitsec/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$901(Landroid/webkitsec/WebView;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private static checkThread()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All WebView methods must be called on the UI thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Future versions of WebView may not support use on other threads."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "webview_proxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    sget-object v1, Landroid/webkitsec/WebView;->sEnforceThreadChecking:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method public static clearClientCertCacList()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/SslClientCertLookupTable;->getInstance()Landroid/webkitsec/SslClientCertLookupTable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/SslClientCertLookupTable;->clearCacList()V

    return-void
.end method

.method public static clearClientCertDeniedList()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/SslClientCertLookupTable;->getInstance()Landroid/webkitsec/SslClientCertLookupTable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/SslClientCertLookupTable;->clearDeniedList()V

    return-void
.end method

.method public static deregisterCACEngine()V
    .locals 2

    const-string/jumbo v0, "webview_proxy"

    const-string v1, "[cac_debug_log] deregisterCACEngine "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/webkitsec/JniUtil;->deregisterCACEngine()V

    return-void
.end method

.method public static disablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    invoke-static {}, Landroid/webkitsec/WebView;->getFactory()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewFactoryProvider;->getStatics()Landroid/webkitsec/WebViewFactoryProvider$Statics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewFactoryProvider$Statics;->setPlatformNotificationsEnabled(Z)V

    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    invoke-static {}, Landroid/webkitsec/WebView;->getFactory()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewFactoryProvider;->getStatics()Landroid/webkitsec/WebViewFactoryProvider$Statics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewFactoryProvider$Statics;->setPlatformNotificationsEnabled(Z)V

    return-void
.end method

.method private ensureProviderCreated()V
    .locals 2

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkitsec/WebView;->getFactory()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    new-instance v1, Landroid/webkitsec/WebView$PrivateAccess;

    invoke-direct {v1, p0}, Landroid/webkitsec/WebView$PrivateAccess;-><init>(Landroid/webkitsec/WebView;)V

    invoke-interface {v0, p0, v1}, Landroid/webkitsec/WebViewFactoryProvider;->createWebView(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$PrivateAccess;)Landroid/webkitsec/WebViewProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    :cond_0
    return-void
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->getFactory()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewFactoryProvider;->getStatics()Landroid/webkitsec/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkitsec/WebViewFactoryProvider$Statics;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCACEngineState()I
    .locals 2

    const-string/jumbo v0, "webview_proxy"

    const-string v1, "[cac_debug_log] getCACEngineState "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/webkitsec/JniUtil;->getCACEngineState()I

    move-result v0

    return v0
.end method

.method private static declared-synchronized getFactory()Landroid/webkitsec/WebViewFactoryProvider;
    .locals 2

    const-class v0, Landroid/webkitsec/WebView;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkitsec/WebViewFactory;->getProvider()Landroid/webkitsec/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPluginList()Landroid/webkitsec/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v1, Landroid/webkitsec/WebView;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    new-instance v0, Landroid/webkitsec/PluginList;

    invoke-direct {v0}, Landroid/webkitsec/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static registerCACEngine()Z
    .locals 3

    const-string/jumbo v1, "webview_proxy"

    const-string v2, "[cac_debug_log] registerCACEngine "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-boolean v1, Landroid/webkitsec/WebView;->mIsBrowserPolicyEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/webkitsec/JniUtil;->registerCACEngine()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static setBrowserPolicy(Z)V
    .locals 3

    const-string/jumbo v0, "webview_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cac_debug_log] setBrowserPolicy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Landroid/webkitsec/WebView;->mIsBrowserPolicyEnabled:Z

    return-void
.end method

.method public static setOpenSslContext(Z)Z
    .locals 3

    const-string/jumbo v0, "webview_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cac_debug_log] setOpenSslContext cac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/webkitsec/JniUtil;->setOpenSslContext(Z)Z

    move-result v0

    return v0
.end method

.method private setupFindListenerIfNeeded()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebView;->mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/WebView$FindListenerDistributor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/WebView$FindListenerDistributor;-><init>(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$1;)V

    iput-object v0, p0, Landroid/webkitsec/WebView;->mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    iget-object v1, p0, Landroid/webkitsec/WebView;->mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewProvider;->setFindListener(Landroid/webkitsec/WebView$FindListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public applyreadability(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->applyreadability(Ljava/lang/String;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canZoomIn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearActionModes()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearActionModes()V

    return-void
.end method

.method public clearCache(Z)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->clearCache(Z)V

    return-void
.end method

.method public clearFormData()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearFormData()V

    return-void
.end method

.method public clearHistory()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearHistory()V

    return-void
.end method

.method public clearMatches()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearMatches()V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearSelection()V

    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearSslPreferences()V

    return-void
.end method

.method public clearView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearView()V

    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeScroll()V

    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public copyBackForwardList()Landroid/webkitsec/WebBackForwardList;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->copyBackForwardList()Landroid/webkitsec/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelectionSec()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->copySelectionSec()Z

    move-result v0

    return v0
.end method

.method public debugDump()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->destroy()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->preDispatchDraw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->documentHasImages(Landroid/os/Message;)V

    return-void
.end method

.method public dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    return-void
.end method

.method public emulateShiftHeld()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v0

    iget-object v1, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v1, p1, p2}, Landroid/webkitsec/WebViewProvider;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v1

    return v1
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    const-string v0, "findAll blocks UI: prefer findAllAsync"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->findAll(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->findAllAsync(Ljava/lang/String;)V

    return-void
.end method

.method public findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findNext(Z)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->findNext(Z)V

    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->flingScroll(II)V

    return-void
.end method

.method public freeMemory()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->freeMemory()V

    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Landroid/webkitsec/WebView$HitTestResult;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getHitTestResult()Landroid/webkitsec/WebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getProgress()I

    move-result v0

    return v0
.end method

.method public getReaderArticle()Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getReaderArticle()Z

    move-result v0

    return v0
.end method

.method public getReaderFlag()Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getReaderFlag()Z

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Landroid/webkitsec/WebSettings;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public getWebClipboard()Landroid/webkitsec/WebClipboard;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewProvider()Landroid/webkitsec/WebViewProvider;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getZoomControls()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->goBack()V

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->goBackOrForward(I)V

    return-void
.end method

.method public goForward()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->goForward()V

    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->invokeZoomPicker()V

    return-void
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/webkitsec/WebViewProvider;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public loadinitialJs(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->loadinitialJs(Ljava/lang/String;)V

    return-void
.end method

.method notifyFindDialogDismissed()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->notifyFindDialogDismissed()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onAttachedToWindow()V

    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onDetachedFromWindow()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onMeasure(II)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onOverScrolled(IIZZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->onResume()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onScrollChanged(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/webkitsec/WebView;->ensureProviderCreated()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onWindowFocusChanged(Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->pauseTimers()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    return-void
.end method

.method public reload()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->reload()V

    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->requestFocusNodeHref(Landroid/os/Message;)V

    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->requestImageRef(Landroid/os/Message;)V

    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkitsec/WebBackForwardList;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->restoreState(Landroid/os/Bundle;)Landroid/webkitsec/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public resumeTimers()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->resumeTimers()V

    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkitsec/WebBackForwardList;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->saveState(Landroid/os/Bundle;)Landroid/webkitsec/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->saveWebArchive(Ljava/lang/String;)V

    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkitsec/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider;->saveWebArchive(Ljava/lang/String;ZLandroid/webkitsec/ValueCallback;)V

    return-void
.end method

.method public scrollSelectPopup()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->scrollSelectPopup()V

    return-void
.end method

.method public selectLastTouchText()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->selectLastTouchText()Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setBackgroundColor(I)V

    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setCertificate(Landroid/net/http/SslCertificate;)V

    return-void
.end method

.method public setContentSizeListener(Landroid/webkitsec/WebView$ContentSizeListener;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setContentSizeListener(Landroid/webkitsec/WebView$ContentSizeListener;)V

    return-void
.end method

.method public setDownloadListener(Landroid/webkitsec/DownloadListener;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setDownloadListener(Landroid/webkitsec/DownloadListener;)V

    return-void
.end method

.method setFindDialogFindListener(Landroid/webkitsec/WebView$FindListener;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    invoke-direct {p0}, Landroid/webkitsec/WebView;->setupFindListenerIfNeeded()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

    # setter for: Landroid/webkitsec/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkitsec/WebView$FindListener;
    invoke-static {v0, p1}, Landroid/webkitsec/WebView$FindListenerDistributor;->access$2102(Landroid/webkitsec/WebView$FindListenerDistributor;Landroid/webkitsec/WebView$FindListener;)Landroid/webkitsec/WebView$FindListener;

    return-void
.end method

.method public setFindListener(Landroid/webkitsec/WebView$FindListener;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    invoke-direct {p0}, Landroid/webkitsec/WebView;->setupFindListenerIfNeeded()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

    # setter for: Landroid/webkitsec/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkitsec/WebView$FindListener;
    invoke-static {v0, p1}, Landroid/webkitsec/WebView$FindListenerDistributor;->access$002(Landroid/webkitsec/WebView$FindListenerDistributor;Landroid/webkitsec/WebView$FindListener;)Landroid/webkitsec/WebView$FindListener;

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setHorizontalScrollbarOverlay(Z)V

    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewProvider;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setInitialScale(I)V

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setMapTrackballToArrowKeys(Z)V

    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setNetworkAvailable(Z)V

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-direct {p0}, Landroid/webkitsec/WebView;->ensureProviderCreated()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setOverScrollMode(I)V

    return-void
.end method

.method public setPageZoomOnIMELaunch(Z)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setPageZoomOnIMELaunch(Z)V

    return-void
.end method

.method public setPictureListener(Landroid/webkitsec/WebView$PictureListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setPictureListener(Landroid/webkitsec/WebView$PictureListener;)V

    return-void
.end method

.method public setReaderArticle(Z)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setReaderArticle(Z)V

    return-void
.end method

.method public setReaderFlag(Z)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setReaderFlag(Z)V

    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setScrollBarStyle(I)V

    invoke-super {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    return-void
.end method

.method public setSelectionCallback(Landroid/webkitsec/SelectActionModeCallbackSec;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setSelectionCallback(Landroid/webkitsec/SelectActionModeCallbackSec;)V

    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setVerticalScrollbarOverlay(Z)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkitsec/WebChromeClient;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setWebChromeClient(Landroid/webkitsec/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkitsec/WebViewClient;)V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setWebViewClient(Landroid/webkitsec/WebViewClient;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->showFindDialog(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public stopLoading()V
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->stopLoading()V

    return-void
.end method

.method public zoomIn()Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->zoomOut()Z

    move-result v0

    return v0
.end method
