.class Landroid/webkitsec/BrowserFrame;
.super Landroid/os/Handler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/BrowserFrame$ConfigCallback;,
        Landroid/webkitsec/BrowserFrame$JSObject;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DRAWABLEDIR:I = 0x3

.field private static final FILE_UPLOAD_LABEL:I = 0x4

.field private static final FILE_UPLOAD_NO_FILE_CHOSEN:I = 0x7

.field static final FRAME_COMPLETED:I = 0x3e9

.field static final FRAME_LOADTYPE_BACK:I = 0x1

.field static final FRAME_LOADTYPE_FORWARD:I = 0x2

.field static final FRAME_LOADTYPE_INDEXEDBACKFORWARD:I = 0x3

.field static final FRAME_LOADTYPE_REDIRECT:I = 0x7

.field static final FRAME_LOADTYPE_RELOAD:I = 0x4

.field static final FRAME_LOADTYPE_RELOADALLOWINGSTALEDATA:I = 0x5

.field static final FRAME_LOADTYPE_REPLACE:I = 0x8

.field static final FRAME_LOADTYPE_SAME:I = 0x6

.field static final FRAME_LOADTYPE_STANDARD:I = 0x0

.field private static final LOADERROR:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_OUTSTANDING_REQUESTS:I = 0x12c

.field private static final NODOMAIN:I = 0x1

.field static final ORIENTATION_CHANGED:I = 0x3ea

.field static final POLICY_FUNCTION:I = 0x3eb

.field static final POLICY_IGNORE:I = 0x2

.field static final POLICY_USE:I = 0x0

.field private static final RESET_LABEL:I = 0x5

.field private static final SCHEME_HOST_DELIMITER:Ljava/lang/String; = "://"

.field private static final SUBMIT_LABEL:I = 0x6

.field private static final TRANSITION_SWITCH_THRESHOLD:I = 0x4b

.field static sConfigCallback:Landroid/webkitsec/BrowserFrame$ConfigCallback;

.field static sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;


# instance fields
.field private mBlockMessages:Z

.field private final mCallbackProxy:Landroid/webkitsec/CallbackProxy;

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

.field private mDevActionError:Z

.field private mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private mFirstLayoutDone:Z

.field private mIsMainFrame:Z

.field private mJavaScriptObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkitsec/BrowserFrame$JSObject;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

.field mLoadInitFromJava:Z

.field private mLoadType:I

.field mNativeFrame:I

.field private mOrientation:I

.field private mRemovedJavaScriptObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/webkitsec/WebSettingsClassic;

.field private final mWebViewCore:Landroid/webkitsec/WebViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkitsec/BrowserFrame;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkitsec/WebViewCore;Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/WebSettingsClassic;Ljava/util/Map;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/webkitsec/WebViewCore;
    .param p3    # Landroid/webkitsec/CallbackProxy;
    .param p4    # Landroid/webkitsec/WebSettingsClassic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkitsec/WebViewCore;",
            "Landroid/webkitsec/CallbackProxy;",
            "Landroid/webkitsec/WebSettingsClassic;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v2, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    iput-boolean v2, p0, Landroid/webkitsec/BrowserFrame;->mCommitted:Z

    iput-boolean v3, p0, Landroid/webkitsec/BrowserFrame;->mBlockMessages:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/webkitsec/BrowserFrame;->mOrientation:I

    iput-boolean v3, p0, Landroid/webkitsec/BrowserFrame;->mDevActionError:Z

    iput-object v4, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    iput-object v4, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v2, :cond_0

    new-instance v2, Landroid/webkitsec/JWebCoreJavaBridge;

    invoke-direct {v2}, Landroid/webkitsec/JWebCoreJavaBridge;-><init>()V

    sput-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_2

    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/webkitsec/JWebCoreJavaBridge;->setCacheSize(I)V

    :goto_0
    invoke-static {v1}, Landroid/webkitsec/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkitsec/CookieSyncManager;

    invoke-static {v1}, Landroid/webkitsec/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkitsec/PluginManager;

    :cond_0
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sConfigCallback:Landroid/webkitsec/BrowserFrame$ConfigCallback;

    if-nez v2, :cond_1

    new-instance v3, Landroid/webkitsec/BrowserFrame$ConfigCallback;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-direct {v3, v2}, Landroid/webkitsec/BrowserFrame$ConfigCallback;-><init>(Landroid/view/WindowManager;)V

    sput-object v3, Landroid/webkitsec/BrowserFrame;->sConfigCallback:Landroid/webkitsec/BrowserFrame$ConfigCallback;

    sget-object v2, Landroid/webkitsec/BrowserFrame;->sConfigCallback:Landroid/webkitsec/BrowserFrame$ConfigCallback;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    :cond_1
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sConfigCallback:Landroid/webkitsec/BrowserFrame$ConfigCallback;

    invoke-virtual {v2, p0}, Landroid/webkitsec/BrowserFrame$ConfigCallback;->addHandler(Landroid/os/Handler;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-direct {p0, p5}, Landroid/webkitsec/BrowserFrame;->addJavaScriptObjects(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    iput-object p4, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    iput-object p1, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-static {v1}, Landroid/webkitsec/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabaseClassic;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/BrowserFrame;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    iput-object p2, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v2

    invoke-direct {p0, p2, v0, v2}, Landroid/webkitsec/BrowserFrame;->nativeCreateFrame(Landroid/webkitsec/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkitsec/WebBackForwardList;)V

    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrowserFrame constructor: this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    return-void

    :cond_2
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    const/high16 v3, 0x400000

    invoke-virtual {v2, v3}, Landroid/webkitsec/JWebCoreJavaBridge;->setCacheSize(I)V

    goto :goto_0
.end method

.method private UpdateUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onUpdateUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/BrowserFrame;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/webkitsec/BrowserFrame;
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/BrowserFrame;->nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/webkitsec/BrowserFrame;I)V
    .locals 0
    .param p0    # Landroid/webkitsec/BrowserFrame;
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->nativeAuthenticationCancel(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkitsec/BrowserFrame;I)V
    .locals 0
    .param p0    # Landroid/webkitsec/BrowserFrame;
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->nativeSslCertErrorProceed(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkitsec/BrowserFrame;II)V
    .locals 0
    .param p0    # Landroid/webkitsec/BrowserFrame;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/BrowserFrame;->nativeSslCertErrorCancel(II)V

    return-void
.end method

.method private addJavaScriptObjects(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    new-instance v4, Landroid/webkitsec/BrowserFrame$JSObject;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Landroid/webkitsec/BrowserFrame$JSObject;-><init>(Landroid/webkitsec/BrowserFrame;Ljava/lang/Object;Z)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private autoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkitsec/CallbackProxy;->onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native childFramesAsText()Ljava/lang/String;
.end method

.method private closeWindow(Landroid/webkitsec/WebViewCore;)V
    .locals 2
    .param p1    # Landroid/webkitsec/WebViewCore;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {p1}, Landroid/webkitsec/WebViewCore;->getWebViewClassic()Landroid/webkitsec/WebViewClassic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/CallbackProxy;->onCloseWindow(Landroid/webkitsec/WebViewClassic;)V

    return-void
.end method

.method private createWindow(ZZ)Landroid/webkitsec/BrowserFrame;
    .locals 3
    .param p1    # Z
    .param p2    # Z

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    const v1, 0x1040bfa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->createWindow(ZZ)Landroid/webkitsec/BrowserFrame;

    move-result-object v0

    goto :goto_0
.end method

.method private decidePolicyForFormResubmission(I)V
    .locals 4
    .param p1    # I

    const/16 v3, 0x3eb

    const/4 v2, 0x2

    invoke-virtual {p0, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v2, v0, v1}, Landroid/webkitsec/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method private density()F
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkitsec/WebViewCore;->getFixedDisplayDensity(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method private didFinishLoading()V
    .locals 9

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    iget-object v8, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/webkitsec/KeyStoreHandler;->installCert(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    invoke-virtual {v0}, Landroid/webkitsec/DownloadFileHandler;->handleFile()Z

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-object v1, v0, Landroid/webkitsec/DownloadFileHandler;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-object v2, v0, Landroid/webkitsec/DownloadFileHandler;->mUserAgent:Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-object v3, v0, Landroid/webkitsec/DownloadFileHandler;->mContentDisposition:Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-object v4, v0, Landroid/webkitsec/DownloadFileHandler;->mMimeType:Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-object v5, v0, Landroid/webkitsec/DownloadFileHandler;->mReferer:Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-wide v6, v0, Landroid/webkitsec/DownloadFileHandler;->mContentLength:J

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual/range {v0 .. v7}, Landroid/webkitsec/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private didReceiveAuthenticationChallenge(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .param p5    # Z

    new-instance v0, Landroid/webkitsec/BrowserFrame$1;

    invoke-direct {v0, p0, p4, p1, p5}, Landroid/webkitsec/BrowserFrame$1;-><init>(Landroid/webkitsec/BrowserFrame;ZIZ)V

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1, v0, p2, p3}, Landroid/webkitsec/CallbackProxy;->onReceivedHttpAuthRequest(Landroid/webkitsec/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private didReceiveData([BI)V
    .locals 1
    .param p1    # [B
    .param p2    # I

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/KeyStoreHandler;->didReceiveData([BI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/DownloadFileHandler;->didReceiveData([BI)V

    goto :goto_0
.end method

.method private didReceiveIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private didReceiveTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->onReceivedTouchIconUrl(Ljava/lang/String;Z)V

    return-void
.end method

.method private native documentAsText()Ljava/lang/String;
.end method

.method private downloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # J

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_0

    const-string p4, ""
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Landroid/webkitsec/MimeTypeMap;->getSingleton()Landroid/webkitsec/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p4, p1, p3}, Landroid/webkitsec/MimeTypeMap;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/webkitsec/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/webkitsec/KeyStoreHandler;

    invoke-direct {v0, p4}, Landroid/webkitsec/KeyStoreHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    :goto_1
    return-void

    :cond_1
    invoke-static {p4}, Landroid/webkitsec/DownloadFileHandler;->isDownLoadableContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "webkit"

    const-string v1, "isDownLoadableContent is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/webkitsec/DownloadFileHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/webkitsec/DownloadFileHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkitsec/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native externalRepresentation()Ljava/lang/String;
.end method

.method private getFile(Ljava/lang/String;[BII)I
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # [B
    .param p3    # I
    .param p4    # I

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v2, p4, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    sub-int/2addr v4, p3

    if-lt v4, v2, :cond_0

    invoke-virtual {v3, p2, p3, v2}, Ljava/io/InputStream;->read([BII)I

    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getRawResFilename(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/webkitsec/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0    # I
    .param p1    # Landroid/content/Context;

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v6, "webkit"

    const-string v7, "getRawResFilename got incompatible resource ID"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    :goto_0
    return-object v6

    :pswitch_0
    const v2, 0x1100005

    const-string v6, "SKO"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Web_CustomizeErrorPage"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "KTO"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Web_CustomizeErrorPage"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "LUO"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Web_CustomizeErrorPage"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v4, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ko"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v2, 0x1100006

    :cond_1
    :goto_1
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v5, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const/4 v6, 0x3

    if-ne p0, v6, :cond_3

    iget-object v6, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const-string/jumbo v6, "webkit"

    const-string v7, "Can\'t find drawable directory."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    goto :goto_0

    :pswitch_1
    const v2, 0x1100003

    goto :goto_1

    :pswitch_2
    const v2, 0x108017a

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10407e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10407e8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10407e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10407e7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_3
    iget-object v6, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private native getUsernamePassword()[Ljava/lang/String;
.end method

.method private native hasPasswordField()Z
.end method

.method private inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 24
    .param p1    # Ljava/lang/String;

    const-string v3, "file:///android_asset/"

    const-string v5, "file:///android_res/"

    const-string v4, "content:"

    const-string v20, "file:///android_res/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    const-string v20, "file:///android_res/"

    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "url has length 0 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    :goto_0
    return-object v20

    :cond_1
    const/16 v20, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    const/16 v20, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_3

    :cond_2
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Incorrect res path: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    goto :goto_0

    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    add-int/lit8 v20, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".R$"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v20

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "not of type string: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v20, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v20, "file:///android_asset/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    const-string v20, "file:///android_asset/"

    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v20

    goto/16 :goto_0

    :catch_1
    move-exception v10

    const/16 v20, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v10

    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Problem loading url: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkitsec/WebSettingsClassic;->getAllowContentAccess()Z

    move-result v20

    if-eqz v20, :cond_9

    const-string v20, "content:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x3f

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_7

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkitsec/WebSettingsClassic;->isEmailPreviewMode()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v20

    goto/16 :goto_0

    :catch_3
    move-exception v10

    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method private isBingSearch()I
    .locals 2

    const-string/jumbo v0, "webkit"

    const-string v1, "Entered isBingSearch function of BrowserFrame.java"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "webkit"

    const-string v1, "Now calling isSearchOptionAvailable of CallbackProxy.java with SearchName = bing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    const-string v1, "bing"

    invoke-virtual {v0, v1}, Landroid/webkitsec/CallbackProxy;->isSearchOptionAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "webkit"

    const-string v1, "Since searchEngine options does not contain bing, returning 2 as value"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getSearchEngineName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "webkit"

    const-string v1, "Since searchEngineName contains bing, returning 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "webkit"

    const-string v1, "Since searchEngineName does not contain bing, returning false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFinished(Ljava/lang/String;IZ)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z

    if-nez p3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p3, :cond_2

    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mDevActionError:Z

    if-nez v0, :cond_1

    const-string v0, "GATE"

    const-string v1, "<GATE-M>DEV_ACTION_COMPLETED</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->resetLoadingStates()V

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->switchOutDrawHistory()V

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onPageFinished(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mDevActionError:Z

    :cond_2
    return-void
.end method

.method private loadStarted(Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/graphics/Bitmap;
    .param p3    # I
    .param p4    # Z

    const/4 v1, 0x0

    iput-boolean p4, p0, Landroid/webkitsec/BrowserFrame;->mIsMainFrame:Z

    if-nez p4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iput p3, p0, Landroid/webkitsec/BrowserFrame;->mLoadType:I

    if-eqz p4, :cond_1

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-boolean v1, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    iput-boolean v1, p0, Landroid/webkitsec/BrowserFrame;->mCommitted:Z

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->clearContent()V

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private maybeSavePassword([BLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # [B
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getSavePassword()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v4

    invoke-static {v4}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    new-instance v3, Landroid/net/WebAddress;

    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebHistoryItemClassic;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    invoke-virtual {v4, v2}, Landroid/webkitsec/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    invoke-virtual {v4, v2, p2, p3}, Landroid/webkitsec/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, p2, p3, v5}, Landroid/webkitsec/CallbackProxy;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Z)V
.end method

.method private native nativeAuthenticationCancel(I)V
.end method

.method private native nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeCallPolicyFunction(II)V
.end method

.method private native nativeCreateFrame(Landroid/webkitsec/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkitsec/WebBackForwardList;)V
.end method

.method private native nativeGetShouldStartScrolledRight(I)Z
.end method

.method private native nativeGoBackOrForward(I)V
.end method

.method private native nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method private native nativeOrientationChanged(I)V
.end method

.method private native nativePostUrl(Ljava/lang/String;[B)V
.end method

.method private native nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeSetUAProfURL(Ljava/lang/String;)V
.end method

.method private native nativeSslCertErrorCancel(II)V
.end method

.method private native nativeSslCertErrorProceed(I)V
.end method

.method private native nativeStopLoading()V
.end method

.method private reportError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mDevActionError:Z

    const-string v0, "GATE"

    const-string v1, "<GATE-M>DEV_ACTION_ERROR</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->resetLoadingStates()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkitsec/CallbackProxy;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportError errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") desc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reportSslCertError(II[BLjava/lang/String;)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # [B
    .param p4    # Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p3}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-static {p2, v3, p4}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    invoke-static {}, Landroid/webkitsec/SslCertLookupTable;->getInstance()Landroid/webkitsec/SslCertLookupTable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkitsec/SslCertLookupTable;->isAllowed(Landroid/net/http/SslError;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->nativeSslCertErrorProceed(I)V

    iget-object v5, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v5, v4}, Landroid/webkitsec/CallbackProxy;->onProceededAfterSslError(Landroid/net/http/SslError;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "webkit"

    const-string v6, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/BrowserFrame;->nativeSslCertErrorCancel(II)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/webkitsec/BrowserFrame$2;

    invoke-direct {v2, p0, v4, p1, p2}, Landroid/webkitsec/BrowserFrame$2;-><init>(Landroid/webkitsec/BrowserFrame;Landroid/net/http/SslError;II)V

    iget-object v5, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v5, v2, v4}, Landroid/webkitsec/CallbackProxy;->onReceivedSslError(Landroid/webkitsec/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method private requestClientCert(ILjava/lang/String;)V
    .locals 7
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/webkitsec/SslClientCertLookupTable;->getInstance()Landroid/webkitsec/SslClientCertLookupTable;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkitsec/SslClientCertLookupTable;->IsAllowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p2}, Landroid/webkitsec/SslClientCertLookupTable;->PrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, p2}, Landroid/webkitsec/SslClientCertLookupTable;->CertificateChain(Ljava/lang/String;)[[B

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Landroid/webkitsec/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, p2}, Landroid/webkitsec/SslClientCertLookupTable;->IsDenied(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, [[B

    invoke-virtual {p0, p1, v5, v6, v2}, Landroid/webkitsec/BrowserFrame;->nativeSslClientCert(IJ[[B)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Landroid/webkitsec/SslClientCertLookupTable;->IsCac(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "webkit"

    const-string/jumbo v4, "requestClientCert() - previously cac"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/webkitsec/WebView;->getCACEngineState()I

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "webkit"

    const-string/jumbo v4, "requestClientCert - engine is not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/webkitsec/WebView;->registerCACEngine()Z

    :cond_2
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/webkitsec/WebView;->setOpenSslContext(Z)Z

    check-cast v2, [[B

    invoke-virtual {p0, p1, v5, v6, v2}, Landroid/webkitsec/BrowserFrame;->nativeSslClientCert(IJ[[B)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v3, Landroid/webkitsec/ClientCertRequestHandler;

    invoke-direct {v3, p0, p1, p2, v1}, Landroid/webkitsec/ClientCertRequestHandler;-><init>(Landroid/webkitsec/BrowserFrame;ILjava/lang/String;Landroid/webkitsec/SslClientCertLookupTable;)V

    invoke-virtual {v2, v3, p2}, Landroid/webkitsec/CallbackProxy;->onReceivedClientCertRequest(Landroid/webkitsec/ClientCertRequestHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestFocus()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->onRequestFocus()V

    return-void
.end method

.method private resetLoadingStates()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mCommitted:Z

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    return-void
.end method

.method private saveFormData(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebHistoryItemClassic;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkitsec/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    invoke-virtual {v2, v1, p1}, Landroid/webkitsec/WebViewDatabaseClassic;->setFormData(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method private setBingSearch()Z
    .locals 5

    const-string/jumbo v1, "webkit"

    const-string v2, "Entered the setBingSearch function of BrowserFrame.java"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    const-string v2, "bing"

    invoke-virtual {v1, v2}, Landroid/webkitsec/CallbackProxy;->isSearchOptionAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getSearchEngineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    const v3, 0x1040bf9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    const v4, 0x1040bf8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/CallbackProxy;->onAlertDialogWithCheckBox(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The JsConfirmResult from the popup dialog gave value as"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string/jumbo v1, "webkit"

    const-string v2, "Now calling setBingSearch of callBackProxy.java from BrowserFrame.java"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkitsec/CallbackProxy;->setBingSearch()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "webkit"

    const-string v2, "Returning false from setBingSearch of BrowserFrame.java"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCertificate([B)V
    .locals 4
    .param p1    # [B

    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v2, v3}, Landroid/webkitsec/CallbackProxy;->onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "webkit"

    const-string v3, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProgress(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onProgressChanged(I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewCore;->getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/CallbackProxy;->setWebFeedLinks([Landroid/webkitsec/WebFeedLink;)V

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4b

    if-le p1, v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->switchOutDrawHistory()V

    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onReceivedTitle(Ljava/lang/String;)V

    return-void
.end method

.method private native setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private shouldInterceptRequest(Ljava/lang/String;)Landroid/webkitsec/WebResourceResponse;
    .locals 8
    .param p1    # Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v4, Landroid/webkitsec/WebResourceResponse;

    invoke-direct {v4, v7, v7, v0}, Landroid/webkitsec/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v6, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebSettingsClassic;->getAllowFileAccess()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "file://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v4, Landroid/webkitsec/WebResourceResponse;

    invoke-direct {v4, v7, v7, v7}, Landroid/webkitsec/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v6, p1}, Landroid/webkitsec/CallbackProxy;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkitsec/WebResourceResponse;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v6, "browser:incognito"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1100002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    new-instance v5, Landroid/webkitsec/WebResourceResponse;

    const-string/jumbo v6, "text/html"

    const-string/jumbo v7, "utf8"

    invoke-direct {v5, v6, v7, v2}, Landroid/webkitsec/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "webkit"

    const-string v7, "Failed opening raw.incognito_mode_start_page"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldSaveFormData()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebHistoryItemClassic;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private spellCheckFinished(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onSpellCheckFinish(I)V

    return-void
.end method

.method private transitionToCommitted(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mCommitted:Z

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->getWebViewClassic()Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v0}, Landroid/webkitsec/ViewManager;->postResetStateAll()V

    :cond_0
    return-void
.end method

.method private updateVisitedHistory(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    return-void
.end method

.method private urlBlocked(Ljava/lang/String;)Z
    .locals 13
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v12, 0x1

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "webkit"

    const-string v1, "Firewall not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "euler: isUrlBlocked = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    invoke-virtual {v4, p1}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v12, :cond_6

    invoke-virtual {p0}, Landroid/webkitsec/BrowserFrame;->didFirstLayout()V

    const-string/jumbo v0, "webkit"

    const-string v1, "euler: stopLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/BrowserFrame;->stopLoading()V

    const-string/jumbo v0, "webkit"

    const-string v1, "euler: loadFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadType:I

    iget-boolean v1, p0, Landroid/webkitsec/BrowserFrame;->mIsMainFrame:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/webkitsec/BrowserFrame;->loadFinished(Ljava/lang/String;IZ)V

    const-string v2, ""

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v0, 0x1100003

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v0, "%s"

    invoke-virtual {v10, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "%e"

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    const v4, 0x1040299

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "webkit"

    const-string v1, "Firewall is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_2
    move-object v6, v7

    :cond_4
    :goto_3
    const-string/jumbo v0, "webkit"

    const-string v1, "euler: loadData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    :goto_4
    return v0

    :catch_0
    move-exception v8

    :goto_5
    :try_start_3
    const-string v2, "Failed loading web page!"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_4

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    const-string/jumbo v0, "webkit"

    const-string v1, "Resource Closing Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v6, :cond_5

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_7
    throw v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :catch_2
    move-exception v8

    const-string/jumbo v1, "webkit"

    const-string v3, "Resource Closing Error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_3
    move-exception v8

    const-string/jumbo v0, "webkit"

    const-string v1, "Resource Closing Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_6

    :catch_4
    move-exception v8

    move-object v6, v7

    goto :goto_5
.end method

.method private windowObjectCleared(I)V
    .locals 5
    .param p1    # I

    iget-object v3, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkitsec/BrowserFrame$JSObject;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/webkitsec/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/webkitsec/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    iget-boolean v4, v2, Landroid/webkitsec/BrowserFrame$JSObject;->requireAnnotation:Z

    invoke-direct {p0, p1, v3, v0, v4}, Landroid/webkitsec/BrowserFrame;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public SetUAProfURL(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "BrowserFrame"

    const-string v1, "Calling SetUAProfURL in BrowserFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->nativeSetUAProfURL(Ljava/lang/String;)V

    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    sget-boolean v0, Landroid/webkitsec/BrowserFrame;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/webkitsec/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    new-instance v1, Landroid/webkitsec/BrowserFrame$JSObject;

    invoke-direct {v1, p0, p1, p3}, Landroid/webkitsec/BrowserFrame$JSObject;-><init>(Landroid/webkitsec/BrowserFrame;Ljava/lang/Object;Z)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public native clearCache()V
.end method

.method committed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mCommitted:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/BrowserFrame;->nativeDestroyFrame()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mBlockMessages:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method didFirstLayout()V
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->contentDraw()V

    :cond_0
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->documentAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->childFramesAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public native documentHasImages()Z
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->externalRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method firstLayoutDone()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    return v0
.end method

.method getCallbackProxy()Landroid/webkitsec/CallbackProxy;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    return-object v0
.end method

.method public getReaderData(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->getReaderData(Ljava/lang/String;)V

    const-string/jumbo v0, "webkit"

    const-string v1, "Reader:BrowserFrame - getReaderData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getRecognizeData(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->getRecognizeData(Ljava/lang/String;)V

    const-string/jumbo v0, "webkit"

    const-string v1, "Reader:BrowserFrame - getRecognizeData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getShouldStartScrolledRight()Z
    .locals 1

    iget v0, p0, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v0}, Landroid/webkitsec/BrowserFrame;->nativeGetShouldStartScrolledRight(I)Z

    move-result v0

    return v0
.end method

.method getUserAgentString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->nativeGoBackOrForward(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;

    const/4 v7, 0x0

    iget-boolean v5, p0, Landroid/webkitsec/BrowserFrame;->mBlockMessages:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebSettingsClassic;->getSavePassword()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->hasPasswordField()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v5}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v4, Landroid/net/WebAddress;

    invoke-virtual {v1}, Landroid/webkitsec/WebHistoryItemClassic;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/webkitsec/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabaseClassic;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_0

    aget-object v5, v3, v7

    if-eqz v5, :cond_0

    aget-object v5, v3, v7

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-direct {p0, v5, v6}, Landroid/webkitsec/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Landroid/webkitsec/BrowserFrame;->nativeCallPolicyFunction(II)V

    goto/16 :goto_0

    :pswitch_2
    iget v5, p0, Landroid/webkitsec/BrowserFrame;->mOrientation:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v5, v6, :cond_0

    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, p0, Landroid/webkitsec/BrowserFrame;->mOrientation:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5}, Landroid/webkitsec/BrowserFrame;->nativeOrientationChanged(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v2

    instance-of v2, v2, Landroid/webkitsec/HtmlComposerView;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    if-ne v2, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v2, p1}, Landroid/webkitsec/CallbackProxy;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/BrowserFrame;->didFirstLayout()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p5, "about:blank"

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string p1, "about:blank"

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string/jumbo p3, "text/html"

    :cond_6
    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/BrowserFrame;->nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    return-void
.end method

.method loadType()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadType:I

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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

    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->urlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    invoke-static {p1}, Landroid/webkitsec/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/BrowserFrame;->nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public native nativeDestroyFrame()V
.end method

.method native nativeSslClientCert(IJ[[B)V
.end method

.method native nativeSslClientCert(I[B[[B)V
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # [B

    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->urlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/BrowserFrame;->nativePostUrl(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    goto :goto_0
.end method

.method public native reload(Z)V
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/BrowserFrame;->nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopLoading()V
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->resetLoadingStates()V

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->nativeStopLoading()V

    return-void
.end method

.method public native stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
.end method
