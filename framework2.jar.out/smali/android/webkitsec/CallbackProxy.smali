.class Landroid/webkitsec/CallbackProxy;
.super Landroid/os/Handler;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/CallbackProxy$5;,
        Landroid/webkitsec/CallbackProxy$UploadFile;,
        Landroid/webkitsec/CallbackProxy$UploadFileMessageData;,
        Landroid/webkitsec/CallbackProxy$JsResultReceiver;,
        Landroid/webkitsec/CallbackProxy$ResultTransport;
    }
.end annotation


# static fields
.field private static final ADD_HISTORY_ITEM:I = 0x87

.field private static final ADD_MESSAGE_TO_CONSOLE:I = 0x81

.field private static final ALERTDIALOG_CHECKBOX:I = 0xc9

.field private static final ASYNC_KEYEVENTS:I = 0x74

.field private static final AUTH_CREDENTIALS:I = 0x89

.field private static final AUTH_REQUEST:I = 0x68

.field private static final AUTO_LOGIN:I = 0x8c

.field private static final CLIENT_CERT_REQUEST:I = 0x8d

.field private static final CLOSE_WINDOW:I = 0x6e

.field private static final CREATE_WINDOW:I = 0x6d

.field private static final DOWNLOAD_FILE:I = 0x76

.field private static final EXCEEDED_DATABASE_QUOTA:I = 0x7e

.field private static final GEOLOCATION_PERMISSIONS_HIDE_PROMPT:I = 0x83

.field private static final GEOLOCATION_PERMISSIONS_SHOW_PROMPT:I = 0x82

.field private static final GET_VISITED_HISTORY:I = 0x85

.field private static final HISTORY_INDEX_CHANGED:I = 0x88

.field private static final IS_SEARCH_OPTION_AVAILABLE:I = 0xca

.field private static final JS_DIALOG:I = 0x70

.field private static final JS_TIMEOUT:I = 0x80

.field private static final LOAD_RESOURCE:I = 0x6c

.field private static final LOGTAG:Ljava/lang/String; = "CallbackProxy"

.field private static final NOTIFICATION_CANCEL_PROMPT:I = 0x97

.field private static final NOTIFICATION_HIDE_PROMPT:I = 0x98

.field private static final NOTIFICATION_PERMISSIONS_SHOW_PROMPT:I = 0x95

.field private static final NOTIFICATION_SEND_RESPONSE_BACK:I = 0x96

.field private static final NOTIFY:I = 0xc8

.field private static final OPEN_FILE_CHOOSER:I = 0x86

.field private static final OVERRIDE_URL:I = 0x67

.field private static final PAGE_FINISHED:I = 0x79

.field private static final PAGE_STARTED:I = 0x64

.field private static final PERF_PROBE:Z = false

.field private static final PRINT_PAGE:I = 0x94

.field private static final PROCEEDED_AFTER_SSL_ERROR:I = 0x90

.field private static final PROGRESS:I = 0x6a

.field private static final REACHED_APPCACHE_MAXSIZE:I = 0x7f

.field private static final READER_DATA:I = 0x92

.field private static final RECEIVED_CERTIFICATE:I = 0x7c

.field private static final RECEIVED_ICON:I = 0x65

.field private static final RECEIVED_TITLE:I = 0x66

.field private static final RECEIVED_TOUCH_ICON_URL:I = 0x84

.field private static final RECOG_DATA:I = 0x93

.field private static final REPORT_ERROR:I = 0x77

.field private static final REQUEST_FOCUS:I = 0x7a

.field private static final RESEND_POST_DATA:I = 0x78

.field private static final SAVE_PASSWORD:I = 0x6f

.field private static final SCALE_CHANGED:I = 0x7b

.field private static final SET_BING_SEARCH:I = 0x99

.field private static final SET_INSTALLABLE_WEBAPP:I = 0x8a

.field private static final SPELLCHECK_FINISH:I = 0x91

.field private static final SSL_ERROR:I = 0x69

.field private static final SWITCH_OUT_HISTORY:I = 0x7d

.field private static final UPDATE_URL:I = 0x9a

.field private static final UPDATE_VISITED:I = 0x6b


# instance fields
.field private final mBackForwardList:Landroid/webkitsec/WebBackForwardListClassic;

.field private mBlockMessages:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mDownloadListener:Landroid/webkitsec/DownloadListener;

.field private volatile mLatestProgress:I

.field private mProgressUpdatePending:Z

.field private volatile mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

.field private volatile mWebChromeClient:Landroid/webkitsec/WebChromeClient;

.field private mWebCoreIdleTime:J

.field private mWebCoreThreadTime:J

.field private mWebFeedLinks:[Landroid/webkitsec/WebFeedLink;

.field private final mWebView:Landroid/webkitsec/WebViewClassic;

.field private volatile mWebViewClient:Landroid/webkitsec/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/webkitsec/CallbackProxy;->mLatestProgress:I

    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    new-instance v0, Landroid/webkitsec/WebBackForwardListClassic;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebBackForwardListClassic;-><init>(Landroid/webkitsec/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkitsec/CallbackProxy;->mBackForwardList:Landroid/webkitsec/WebBackForwardListClassic;

    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/CallbackProxy;)Landroid/webkitsec/WebViewClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/CallbackProxy;)Landroid/webkitsec/WebChromeClient;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    return-object v0
.end method

.method private getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    move-object v1, p1

    invoke-static {p1}, Landroid/webkitsec/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x10405ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x10405ec

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private declared-synchronized sendMessageToUiThreadSync(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/webkitsec/WebCoreThreadWatchdog;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "CallbackProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessageToUiThreadSync Package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Landroid/webkitsec/WebCoreThreadWatchdog;->resume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "CallbackProxy"

    const-string v2, "Caught exception waiting for synchronous UI message to be processed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x81

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "sourceID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lineNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "msgLevel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected declared-synchronized blockMessages()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkitsec/CallbackProxy;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method canShowAlertDialog()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method

.method public createWindow(ZZ)Landroid/webkitsec/BrowserFrame;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    const/4 v7, 0x0

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening pop-up for URL "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " failed"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    :goto_0
    return-object v0

    :cond_0
    new-instance v9, Landroid/webkitsec/WebView$WebViewTransport;

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v1}, Landroid/webkitsec/WebView$WebViewTransport;-><init>(Landroid/webkitsec/WebView;)V

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v4, 0x6d

    if-eqz p1, :cond_1

    move v3, v11

    :goto_1
    if-eqz p2, :cond_2

    move v1, v11

    :goto_2
    invoke-virtual {p0, v4, v3, v1, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    invoke-virtual {v9}, Landroid/webkitsec/WebView$WebViewTransport;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->fromWebView(Landroid/webkitsec/WebView;)Landroid/webkitsec/WebViewClassic;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/webkitsec/WebViewCore;->initializeSubwindow()V

    invoke-virtual {v6}, Landroid/webkitsec/WebViewCore;->getBrowserFrame()Landroid/webkitsec/BrowserFrame;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening pop-up for URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move v2, v11

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v0, v7

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening pop-up for URL "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " failed"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening pop-up for URL "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " failed"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    goto/16 :goto_0
.end method

.method public doUpdateVisitedHistory(Ljava/lang/String;Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x6b

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mBackForwardList:Landroid/webkitsec/WebBackForwardListClassic;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/CallbackProxy;->mLatestProgress:I

    return v0
.end method

.method public getReaderData(Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x92

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getRecognizeData(Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x93

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getVisitedHistory(Landroid/webkitsec/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkitsec/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method getWebBackForwardListClient()Landroid/webkitsec/WebBackForwardListClient;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkitsec/WebChromeClient;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebFeedLinks:[Landroid/webkitsec/WebFeedLink;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWebViewClient()Landroid/webkitsec/WebViewClient;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 71

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/CallbackProxy;->messagesBlocked()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Landroid/webkitsec/WebViewClassic;->onPageStarted(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    move-object/from16 v0, v69

    invoke-virtual {v10, v11, v0, v4}, Landroid/webkitsec/WebViewClient;->onPageStarted(Landroid/webkitsec/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/webkitsec/WebViewClassic;->onPageFinished(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v41

    invoke-virtual {v4, v10, v0}, Landroid/webkitsec/WebViewClient;->onPageFinished(Landroid/webkitsec/WebView;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v4}, Landroid/webkitsec/WebChromeClient;->onReceivedIcon(Landroid/webkitsec/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_2

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v10}, Landroid/webkitsec/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkitsec/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Landroid/webkitsec/WebChromeClient;->onReceivedTitle(Landroid/webkitsec/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    const-string v4, "CallbackProxy"

    const-string v10, "Now calling the setBingSearch of WebChromeClient.java"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/webkitsec/WebChromeClient;->setBingSearch(Landroid/webkitsec/WebView;)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v61, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "description"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "failingUrl"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move/from16 v0, v61

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkitsec/WebViewClient;->onReceivedError(Landroid/webkitsec/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "data"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v59

    invoke-virtual {v4, v10, v0}, Landroid/webkitsec/WebViewClient;->onReceivedReaderData(Landroid/webkitsec/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "data"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v63

    invoke-virtual {v4, v10, v0}, Landroid/webkitsec/WebViewClient;->onReceivedRecognizeData(Landroid/webkitsec/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "resend"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v65

    check-cast v65, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "dontResend"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v38

    check-cast v38, Landroid/os/Message;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v38

    move-object/from16 v1, v65

    invoke-virtual {v4, v10, v0, v1}, Landroid/webkitsec/WebViewClient;->onFormResubmission(Landroid/webkitsec/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {v38 .. v38}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/webkitsec/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v56

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v66, v0

    check-cast v66, Landroid/webkitsec/CallbackProxy$ResultTransport;

    monitor-enter p0

    :try_start_0
    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Landroid/webkitsec/CallbackProxy$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/webkitsec/HttpAuthHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "host"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v60

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkitsec/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkitsec/WebView;Landroid/webkitsec/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v20

    const-string v4, "handler"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkitsec/SslErrorHandler;

    const-string v10, "error"

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/http/SslError;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v10}, Landroid/webkitsec/WebViewClient;->onReceivedSslError(Landroid/webkitsec/WebView;Landroid/webkitsec/SslErrorHandler;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    instance-of v4, v4, Landroid/webkitsec/WebViewClientClassicExt;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    check-cast v4, Landroid/webkitsec/WebViewClientClassicExt;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/http/SslError;

    invoke-virtual {v4, v11, v10}, Landroid/webkitsec/WebViewClientClassicExt;->onProceededAfterSslError(Landroid/webkitsec/WebView;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    instance-of v4, v4, Landroid/webkitsec/WebViewClientClassicExt;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    check-cast v4, Landroid/webkitsec/WebViewClientClassicExt;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v20

    const-string v10, "handler"

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/webkitsec/ClientCertRequestHandler;

    const-string v11, "host_and_port"

    move-object/from16 v0, v49

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v10, v11}, Landroid/webkitsec/WebViewClientClassicExt;->onReceivedClientCertRequest(Landroid/webkitsec/WebView;Landroid/webkitsec/ClientCertRequestHandler;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/webkitsec/CallbackProxy;->mLatestProgress:I

    invoke-virtual {v4, v10, v11}, Landroid/webkitsec/WebChromeClient;->onProgressChanged(Landroid/webkitsec/WebView;I)V

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/CallbackProxy;->mProgressUpdatePending:Z

    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v10}, Landroid/webkitsec/WebViewClient;->doUpdateVisitedHistory(Landroid/webkitsec/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Landroid/webkitsec/WebViewClient;->onLoadResource(Landroid/webkitsec/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "userAgent"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "contentDisposition"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "mimetype"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "referer"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "contentLength"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    instance-of v4, v4, Landroid/webkitsec/BrowserDownloadListener;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    check-cast v4, Landroid/webkitsec/BrowserDownloadListener;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {v4 .. v11}, Landroid/webkitsec/BrowserDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-interface/range {v10 .. v16}, Landroid/webkitsec/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v23

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_8

    const/4 v4, 0x1

    move v10, v4

    :goto_3
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_9

    const/4 v4, 0x1

    move v11, v4

    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10, v11, v4}, Landroid/webkitsec/WebChromeClient;->onCreateWindow(Landroid/webkitsec/WebView;ZZLandroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_7

    monitor-enter p0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->dismissZoomControl()V

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    move v10, v4

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    move v11, v4

    goto :goto_4

    :catchall_2
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/webkitsec/WebChromeClient;->onRequestFocus(Landroid/webkitsec/WebView;)V

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/webkitsec/WebChromeClient;->onCloseWindow(Landroid/webkitsec/WebView;)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v32

    const-string v4, "host"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    const-string/jumbo v4, "username"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    const-string/jumbo v4, "password"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object/from16 v0, v67

    move-object/from16 v1, v70

    move-object/from16 v2, v58

    invoke-virtual {v10, v0, v1, v2, v4}, Landroid/webkitsec/WebViewClassic;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    monitor-enter p0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v4

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v10, v11, v4}, Landroid/webkitsec/WebViewClient;->onUnhandledKeyEvent(Landroid/webkitsec/WebView;Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    const-string v4, "databaseIdentifier"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v4, "url"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v4, "quota"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-string/jumbo v4, "totalQuota"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-string v4, "estimatedDatabaseSize"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/webkitsec/WebStorage$QuotaUpdater;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object v11, v5

    invoke-virtual/range {v10 .. v19}, Landroid/webkitsec/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkitsec/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    const-string/jumbo v4, "requiredStorage"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-string/jumbo v4, "quota"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/webkitsec/WebStorage$QuotaUpdater;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v20, v0

    move-wide/from16 v23, v13

    move-object/from16 v25, v19

    invoke-virtual/range {v20 .. v25}, Landroid/webkitsec/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkitsec/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    const-string/jumbo v4, "origin"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/String;

    const-string v4, "callback"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/webkitsec/GeolocationPermissions$Callback;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, v55

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/webkitsec/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/GeolocationPermissions$Callback;)V

    goto/16 :goto_0

    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkitsec/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto/16 :goto_0

    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "notificationID"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v53

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move/from16 v0, v53

    invoke-virtual {v4, v0}, Landroid/webkitsec/WebChromeClient;->onNotificationManagerCancelPrompt(I)V

    goto/16 :goto_0

    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkitsec/WebChromeClient;->onNotificationPermissionsHidePrompt()V

    goto/16 :goto_0

    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    const-string v4, "CallbackProxy"

    const-string v10, "Inside CallbackProxy NOTIFICATION_PERMISSIONS_SHOW_PROMPT"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    const-string/jumbo v4, "origin"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/String;

    const-string v4, "callback"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/webkitsec/NotificationPermissions$Callback;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, v55

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/webkitsec/WebChromeClient;->onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/NotificationPermissions$Callback;)V

    goto/16 :goto_0

    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    const-string v4, "CallbackProxy"

    const-string v10, "Inside CallbackProxy NOTIFICATION_SEND_RESPONSE_BACK"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    const-string v4, "iconUrl"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/String;

    const-string/jumbo v4, "titleStr"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v4, "bodyStr"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const-string v4, "bitmap"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Bitmap;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "counter"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    const-string v4, "callback"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/webkitsec/NotificationPermissions$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v28}, Landroid/webkitsec/WebChromeClient;->onNotificationManagerShowPrompt(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILandroid/webkitsec/NotificationPermissions$Callback;)V

    goto/16 :goto_0

    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    new-instance v43, Landroid/webkitsec/JsDialogHelper;

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Landroid/webkitsec/JsDialogHelper;-><init>(Landroid/webkitsec/JsPromptResult;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v10}, Landroid/webkitsec/JsDialogHelper;->invokeCallback(Landroid/webkitsec/WebChromeClient;Landroid/webkitsec/WebView;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/webkitsec/JsDialogHelper;->showDialog(Landroid/content/Context;)V

    :cond_a
    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    move-object/from16 v64, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "message"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v50

    move-object/from16 v1, v64

    invoke-virtual {v4, v10, v5, v0, v1}, Landroid/webkitsec/WebChromeClient;->onAlertDialogWithCheckBox(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->cancel()V

    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/webkitsec/WebChromeClient;->getBingSearchAlertDialogCheckBoxValue(Landroid/webkitsec/WebView;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "CallbackProxy"

    const-string/jumbo v10, "the getBingSearchAlertDialogCheckBoxValue returned true - inside CallbackProxy.java"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->cancel()V

    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    :cond_c
    const-string v4, "CallbackProxy"

    const-string v10, "\tthe getBingSearchAlertDialogCheckBoxValue returned false so we can create the dialog box - inside Callbackproxy.java"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v39

    const v4, 0x1090041

    const/4 v10, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v34

    const v4, 0x1020001

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/CheckBox;

    new-instance v4, Landroid/webkitsec/CallbackProxy$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/webkitsec/CallbackProxy$1;-><init>(Landroid/webkitsec/CallbackProxy;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    const v10, 0x1040bf7

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkitsec/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v10, 0x104000a

    new-instance v11, Landroid/webkitsec/CallbackProxy$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v11, v0, v1}, Landroid/webkitsec/CallbackProxy$4;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/JsResult;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v10, 0x1040000

    new-instance v11, Landroid/webkitsec/CallbackProxy$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v11, v0, v1}, Landroid/webkitsec/CallbackProxy$3;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/JsResult;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v10, Landroid/webkitsec/CallbackProxy$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v10, v0, v1}, Landroid/webkitsec/CallbackProxy$2;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/JsResult;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_d
    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    move-object/from16 v64, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "SearchName"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v4, "CallbackProxy"

    const-string v10, "Now making call to isSearchOptionAvailable of WebChromeClient.java"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v4, v10, v0}, Landroid/webkitsec/WebChromeClient;->isSearchOptionAvailable(Landroid/webkitsec/WebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "CallbackProxy"

    const-string v10, "isSearchOptionAvailable returned true after mWebChromeClient call"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->confirm()V

    :goto_5
    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    :cond_e
    const-string v4, "CallbackProxy"

    const-string v10, "isSearchOptionAvailable returned false after mWebChromeClient call"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->cancel()V

    goto :goto_5

    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkitsec/WebChromeClient;->onJsTimeout()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->confirm()V

    :goto_6
    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    :cond_f
    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->cancel()V

    goto :goto_6

    :pswitch_25
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/http/SslCertificate;

    invoke-virtual {v10, v4}, Landroid/webkitsec/WebViewClassic;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_0

    :pswitch_26
    monitor-enter p0

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v4

    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v20, "old"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string/jumbo v23, "new"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v10, v11, v0}, Landroid/webkitsec/WebViewClient;->onScaleChanged(Landroid/webkitsec/WebView;FF)V

    goto/16 :goto_0

    :pswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    goto/16 :goto_0

    :pswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "message"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "sourceID"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "lineNumber"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "msgLevel"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v52

    invoke-static {}, Landroid/webkitsec/ConsoleMessage$MessageLevel;->values()[Landroid/webkitsec/ConsoleMessage$MessageLevel;

    move-result-object v4

    array-length v0, v4

    move/from16 v54, v0

    if-ltz v52, :cond_10

    move/from16 v0, v52

    move/from16 v1, v54

    if-lt v0, v1, :cond_11

    :cond_10
    const/16 v52, 0x0

    :cond_11
    invoke-static {}, Landroid/webkitsec/ConsoleMessage$MessageLevel;->values()[Landroid/webkitsec/ConsoleMessage$MessageLevel;

    move-result-object v4

    aget-object v51, v4, v52

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    new-instance v10, Landroid/webkitsec/ConsoleMessage;

    move-object/from16 v0, v50

    move-object/from16 v1, v68

    move/from16 v2, v46

    move-object/from16 v3, v51

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/webkitsec/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkitsec/ConsoleMessage$MessageLevel;)V

    invoke-virtual {v4, v10}, Landroid/webkitsec/WebChromeClient;->onConsoleMessage(Landroid/webkitsec/ConsoleMessage;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v48, "Web Console"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    sget-object v4, Landroid/webkitsec/CallbackProxy$5;->$SwitchMap$android$webkitsec$ConsoleMessage$MessageLevel:[I

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v4, v4, v10

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_2a
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2b
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2c
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2d
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2e
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkitsec/ValueCallback;

    invoke-virtual {v10, v4}, Landroid/webkitsec/WebChromeClient;->getVisitedHistory(Landroid/webkitsec/ValueCallback;)V

    goto/16 :goto_0

    :pswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    invoke-virtual/range {v36 .. v36}, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->getUploadFile()Landroid/webkitsec/CallbackProxy$UploadFile;

    move-result-object v10

    invoke-virtual/range {v36 .. v36}, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->getAcceptType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v36 .. v36}, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->getCapture()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v10, v11, v0}, Landroid/webkitsec/WebChromeClient;->openFileChooser(Landroid/webkitsec/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_31
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkitsec/WebHistoryItem;

    invoke-virtual {v10, v4}, Landroid/webkitsec/WebBackForwardListClient;->onNewHistoryItem(Landroid/webkitsec/WebHistoryItem;)V

    goto/16 :goto_0

    :pswitch_32
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkitsec/WebHistoryItem;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v4, v11}, Landroid/webkitsec/WebBackForwardListClient;->onIndexChanged(Landroid/webkitsec/WebHistoryItem;I)V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "host"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "username"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "password"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v44

    move-object/from16 v1, v60

    move-object/from16 v2, v70

    move-object/from16 v3, v58

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/webkitsec/WebViewClassic;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "account"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "args"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v60

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkitsec/WebViewClient;->onReceivedLoginRequest(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_35
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v10, v11}, Landroid/webkitsec/WebViewClient;->onSpellCheckFinish(Landroid/webkitsec/WebView;I)V

    goto/16 :goto_0

    :pswitch_36
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkitsec/WebChromeClient;->onPrintPage()V

    goto/16 :goto_0

    :pswitch_37
    const-string v4, "CallbackProxy"

    const-string v10, "UPDATE_URL"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebViewClient;->onUpdateUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_17
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_13
        :pswitch_7
        :pswitch_a
        :pswitch_2
        :pswitch_15
        :pswitch_27
        :pswitch_25
        :pswitch_28
        :pswitch_19
        :pswitch_1a
        :pswitch_24
        :pswitch_29
        :pswitch_1b
        :pswitch_1c
        :pswitch_4
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_34
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_35
        :pswitch_8
        :pswitch_9
        :pswitch_36
        :pswitch_1f
        :pswitch_20
        :pswitch_1d
        :pswitch_1e
        :pswitch_6
        :pswitch_37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_22
        :pswitch_23
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
    .end packed-switch
.end method

.method public isSearchOptionAvailable(Ljava/lang/String;)Z
    .locals 5

    const-string v2, "CallbackProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entered the isSearchOptionAvailable function of CallbackProxy.java with SearchName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    new-instance v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    const/16 v2, 0xca

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SearchName"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    const-string v2, "CallbackProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exiting from the isSearchOptionAvailable function of CallbackProxy.java with value as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v4}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method protected declared-synchronized messagesBlocked()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/CallbackProxy;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAlertDialogWithCheckBox(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    const/16 v2, 0xc9

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    iget-object v2, v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method public onCloseWindow(Landroid/webkitsec/WebViewClassic;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x76

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userAgent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mimetype"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "referer"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "contentLength"

    invoke-virtual {v0, v2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "contentDisposition"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkitsec/WebStorage$QuotaUpdater;)V
    .locals 4

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    invoke-interface {p9, p3, p4}, Landroid/webkitsec/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x7e

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "databaseIdentifier"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "quota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "estimatedDatabaseSize"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "totalQuota"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v1, v2, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x78

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "resend"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "dontResend"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x83

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/GeolocationPermissions$Callback;)V
    .locals 3

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onIndexChanged(Landroid/webkitsec/WebHistoryItem;I)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onJsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    const/16 v2, 0x70

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    new-instance v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    const/16 v2, 0x70

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    iget-object v2, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method public onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    const/16 v2, 0x70

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    iget-object v2, v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method public onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    const/16 v2, 0x70

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    iget-object v2, v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsPromptResult;->getStringResult()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onJsTimeout()Z
    .locals 3

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    new-instance v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    const/16 v2, 0x80

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    iget-object v2, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method onNewHistoryItem(Landroid/webkitsec/WebHistoryItem;)V
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x87

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNotificationManagerCancelPrompt(I)V
    .locals 4

    const-string v1, "CallbackProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside CallbackProxy onNotificationManagerCancelPrompt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x97

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "notificationID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNotificationManagershowPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkitsec/NotificationPermissions$Callback;)V
    .locals 7

    const-string v4, "CallbackProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside CallbackProxy onNotificationManagershowPrompt  counter is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0x96

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, "CallbackProxy"

    const-string v5, "Inside CallbackProxy before send message 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "iconUrl"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "titleStr"

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "bodyStr"

    invoke-virtual {v2, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "callback"

    invoke-virtual {v2, v4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v4, "bitmap"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "counter"

    invoke-virtual {v4, v5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onNotificationPermissionsHidePrompt()V
    .locals 3

    const-string v1, "CallbackProxy"

    const-string v2, "Inside CallbackProxy onNotificationPermissionsHidePrompt "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x98

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/NotificationPermissions$Callback;)V
    .locals 4

    const-string v2, "CallbackProxy"

    const-string v3, "Inside CallbackProxy onNotificationPermissionsShowPrompt "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x95

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x79

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPrintPage()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x94

    invoke-virtual {p0, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProceededAfterSslError(Landroid/net/http/SslError;)V
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    instance-of v1, v1, Landroid/webkitsec/WebViewClientClassicExt;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProgressChanged(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/CallbackProxy;->mLatestProgress:I

    if-ne v0, p1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/webkitsec/CallbackProxy;->mLatestProgress:I

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/CallbackProxy;->mProgressUpdatePending:Z

    if-nez v0, :cond_2

    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/CallbackProxy;->mProgressUpdatePending:Z

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkitsec/WebStorage$QuotaUpdater;)V
    .locals 4

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    invoke-interface {p5, p3, p4}, Landroid/webkitsec/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "requiredStorage"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "quota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1

    const/16 v0, 0x7c

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkitsec/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    instance-of v2, v2, Landroid/webkitsec/WebViewClientClassicExt;

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/webkitsec/ClientCertRequestHandler;->cancel()V

    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "host_and_port"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "failingUrl"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x89

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkitsec/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/webkitsec/HttpAuthHandler;->cancel()V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mBackForwardList:Landroid/webkitsec/WebBackForwardListClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebHistoryItemClassic;->setFavicon(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x65

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "realm"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkitsec/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/webkitsec/SslErrorHandler;->cancel()V

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "error"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedTouchIconUrl(Ljava/lang/String;Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1, p1}, Landroid/webkitsec/WebViewClassic;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mBackForwardList:Landroid/webkitsec/WebBackForwardListClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebHistoryItemClassic;->setTouchIconUrl(Ljava/lang/String;Z)V

    :cond_2
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v1, :cond_0

    const/16 v3, 0x84

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v3, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onRequestFocus()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x7a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 3

    invoke-static {p4}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    const/16 v2, 0x6f

    invoke-virtual {p0, v2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    const/4 v2, 0x0

    return v2
.end method

.method public onScaleChanged(FF)V
    .locals 3

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x7b

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "old"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v2, "new"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onSpellCheckFinish(I)V
    .locals 2

    const/16 v0, 0x91

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTooManyRedirects(Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onUpdateUrl(Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x9a

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method openFileChooser(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    const/16 v4, 0x86

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/webkitsec/CallbackProxy$UploadFile;

    invoke-direct {v2, p0, v3}, Landroid/webkitsec/CallbackProxy$UploadFile;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    new-instance v0, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;

    invoke-direct {v0, v2, p1, p2}, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;-><init>(Landroid/webkitsec/CallbackProxy$UploadFile;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    invoke-virtual {v2}, Landroid/webkitsec/CallbackProxy$UploadFile;->getResult()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public setBingSearch()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "CallbackProxy"

    const-string v1, "Sending the SET_BING_SEARCH message inside CallbackProxy.java"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x99

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setDownloadListener(Landroid/webkitsec/DownloadListener;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    return-void
.end method

.method setWebBackForwardListClient(Landroid/webkitsec/WebBackForwardListClient;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    return-void
.end method

.method public setWebChromeClient(Landroid/webkitsec/WebChromeClient;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    return-void
.end method

.method public setWebFeedLinks([Landroid/webkitsec/WebFeedLink;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mWebFeedLinks:[Landroid/webkitsec/WebFeedLink;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWebViewClient(Landroid/webkitsec/WebViewClient;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    return-void
.end method

.method shouldInterceptRequest(Ljava/lang/String;)Landroid/webkitsec/WebResourceResponse;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1, p1}, Landroid/webkitsec/WebViewClassic;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/webkitsec/WebViewClient;->shouldInterceptRequest(Landroid/webkitsec/WebView;Ljava/lang/String;)Landroid/webkitsec/WebResourceResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x6c

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3, p1}, Landroid/webkitsec/WebViewClassic;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    new-instance v1, Landroid/webkitsec/CallbackProxy$ResultTransport;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkitsec/CallbackProxy$ResultTransport;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    invoke-virtual {v1}, Landroid/webkitsec/CallbackProxy$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method protected shutdown()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/webkitsec/CallbackProxy;->setWebViewClient(Landroid/webkitsec/WebViewClient;)V

    invoke-virtual {p0, v0}, Landroid/webkitsec/CallbackProxy;->setWebChromeClient(Landroid/webkitsec/WebChromeClient;)V

    return-void
.end method

.method switchOutDrawHistory()V
    .locals 1

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkitsec/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uiOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2, p1}, Landroid/webkitsec/WebViewClassic;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    iget-object v3, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/webkitsec/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkitsec/WebView;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "WebCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uiOverrideUrlLoading: shouldOverrideUrlLoading() returns"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_4

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
