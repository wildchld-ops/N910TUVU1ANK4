.class Landroid/webkitsec/AccessibilityInjector;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/AccessibilityInjector$CallbackHandler;,
        Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ANDROIDVOX_TEMPLATE:Ljava/lang/String; = "(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.AndroidVox) != \'undefined\')      && (cvox.AndroidVox != null)      && cvox.ChromeVox.isActive) {    return cvox.AndroidVox.performAction(\'%1s\');  } else {    return false;  }})()"

.field private static final ACCESSIBILITY_SCREEN_READER_JAVASCRIPT_TEMPLATE:Ljava/lang/String; = "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'%1s\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_OPTED_OUT:I = 0x0

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_PROVIDED:I = 0x1

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_UNDEFINED:I = -0x1

.field private static final ALIAS_TRAVERSAL_JS_INTERFACE:Ljava/lang/String; = "accessibilityTraversal"

.field private static final ALIAS_TTS_JS_INTERFACE:Ljava/lang/String; = "accessibility"

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TOGGLE_CVOX_TEMPLATE:Ljava/lang/String; = "javascript:(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.ChromeVox.host) != \'undefined\')      && (cvox.ChromeVox.host != null)) {    cvox.ChromeVox.host.activateOrDeactivateChromeVox(%b);  }})();"


# instance fields
.field private mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

.field private mAccessibilityJSONObject:Lorg/json/JSONObject;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityScriptInjected:Z

.field private mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

.field private final mContext:Landroid/content/Context;

.field private mInjectScriptRunnable:Ljava/lang/Runnable;

.field private mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

.field private final mWebView:Landroid/webkitsec/WebView;

.field private final mWebViewClassic:Landroid/webkitsec/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/webkitsec/AccessibilityInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/webkitsec/AccessibilityInjector$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/AccessibilityInjector$1;-><init>(Landroid/webkitsec/AccessibilityInjector;)V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mInjectScriptRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/webkitsec/AccessibilityInjector;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkitsec/AccessibilityInjector;)Landroid/webkitsec/WebView;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkitsec/AccessibilityInjector;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->injectJavaScript()V

    return-void
.end method

.method private addCallbackApis()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    const-string v1, "accessibilityTraversal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/AccessibilityInjector$CallbackHandler;-><init>(Ljava/lang/String;Landroid/webkitsec/AccessibilityInjector$1;)V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    const-string v2, "accessibilityTraversal"

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private addTtsApis()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    const-string v2, "accessibility"

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private getAxsUrlParameterValue(Ljava/lang/String;)I
    .locals 6

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    const-string v4, "axs"

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/webkitsec/AccessibilityInjector;->verifyInjectionValue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private getScreenReaderInjectionUrl()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_script_injection_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'%1s\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private injectJavaScript()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/webkitsec/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    iget-boolean v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->getScreenReaderInjectionUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebView;->loadUrl(Ljava/lang/String;)V

    sget-boolean v1, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Loading screen reader into WebView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Attempted to inject screen reader twice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAccessibilityEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isJavaScriptEnabled()Z
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getJavaScriptEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private isScriptInjectionEnabled()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_script_injection"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private removeAccessibilityApisIfNecessary()V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->removeTtsApis()V

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->removeCallbackApis()V

    return-void
.end method

.method private removeCallbackApis()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method private removeTtsApis()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->stop()I

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method private sendActionToAndroidVox(ILandroid/os/Bundle;)Z
    .locals 10

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    if-nez v7, :cond_2

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    :cond_0
    :try_start_0
    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "action"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.AndroidVox) != \'undefined\')      && (cvox.AndroidVox != null)      && cvox.ChromeVox.isActive) {    return cvox.AndroidVox.performAction(\'%1s\');  } else {    return false;  }})()"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    if-nez v7, :cond_3

    :goto_1
    return v6

    :cond_2
    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :sswitch_0
    if-eqz p2, :cond_1

    :try_start_1
    const-string v7, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "granularity"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :sswitch_1
    if-eqz p2, :cond_1

    const-string v7, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "element"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    iget-object v6, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    # invokes: Landroid/webkitsec/AccessibilityInjector$CallbackHandler;->performAction(Landroid/webkitsec/WebView;Ljava/lang/String;)Z
    invoke-static {v6, v7, v3}, Landroid/webkitsec/AccessibilityInjector$CallbackHandler;->access$500(Landroid/webkitsec/AccessibilityInjector$CallbackHandler;Landroid/webkitsec/WebView;Ljava/lang/String;)Z

    move-result v6

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_1
    .end sparse-switch
.end method

.method private shouldInjectJavaScript(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isJavaScriptEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/webkitsec/AccessibilityInjector;->getAxsUrlParameterValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isScriptInjectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private toggleAndroidVox(Z)V
    .locals 5

    iget-boolean v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "javascript:(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.ChromeVox.host) != \'undefined\')      && (cvox.ChromeVox.host != null)) {    cvox.ChromeVox.host.activateOrDeactivateChromeVox(%b);  }})();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private toggleFallbackAccessibilityInjector(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/AccessibilityInjectorFallback;

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v0, v1}, Landroid/webkitsec/AccessibilityInjectorFallback;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    goto :goto_0
.end method

.method private verifyInjectionValue(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addAccessibilityApisIfNecessary()V
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isJavaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->addTtsApis()V

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->addCallbackApis()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->shutdown()V

    iput-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    if-eqz v0, :cond_1

    iput-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    :cond_1
    return-void
.end method

.method public handleKeyEventIfNecessary(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iput-boolean v2, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    invoke-direct {p0, v2}, Landroid/webkitsec/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-boolean v3, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/16 v4, 0x68

    invoke-virtual {v3, v4, v0, v2, p1}, Landroid/webkitsec/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x82

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x21

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x11

    goto :goto_1

    :sswitch_3
    const/16 v0, 0x42

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/16 v4, 0x67

    invoke-virtual {v3, v4, v0, v2, p1}, Landroid/webkitsec/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    invoke-virtual {v1, p1}, Landroid/webkitsec/AccessibilityInjectorFallback;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/webkitsec/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/webkitsec/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    invoke-direct {p0, p1}, Landroid/webkitsec/AccessibilityInjector;->shouldInjectJavaScript(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Request callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    iget-object v2, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mInjectScriptRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/AccessibilityInjector$CallbackHandler;->requestCallback(Landroid/webkitsec/WebView;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    const-string v2, "NullPointerException in onPageFinished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    sget-boolean v0, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Started loading new page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/AccessibilityInjector;->addAccessibilityApisIfNecessary()V

    return-void
.end method

.method public onSelectionStringChangedWebCoreThread(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/AccessibilityInjectorFallback;->onSelectionStringChangedWebCoreThread(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    invoke-direct {p0, v0}, Landroid/webkitsec/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/AccessibilityInjector;->sendActionToAndroidVox(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/AccessibilityInjectorFallback;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public supportsAccessibilityAction(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method public toggleAccessibilityFeedback(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isJavaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/webkitsec/AccessibilityInjector;->toggleAndroidVox(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->stop()I

    goto :goto_0
.end method

.method public updateJavaScriptEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/AccessibilityInjector;->addAccessibilityApisIfNecessary()V

    :goto_0
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->reload()V

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->removeAccessibilityApisIfNecessary()V

    goto :goto_0
.end method
