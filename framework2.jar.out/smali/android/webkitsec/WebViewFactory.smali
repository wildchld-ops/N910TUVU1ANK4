.class public final Landroid/webkitsec/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# static fields
.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProvider"

.field private static final CHROMIUM_WEBVIEW_JAR:Ljava/lang/String; = "/system/framework/webviewchromium.jar"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_WEBVIEW_FACTORY:Ljava/lang/String; = "android.webkitsec.WebViewClassic$Factory"

.field private static final DEPRECATED_CHROMIUM_PROPERTY:Ljava/lang/String; = "webview.use_chromium"

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field public static final WEBVIEW_EXPERIMENTAL_PROPERTY:Ljava/lang/String; = "persist.sys.webview.exp"

.field private static sProviderInstance:Landroid/webkitsec/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkitsec/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFactoryByName(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/webkitsec/WebViewFactoryProvider;
    .locals 5

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkitsec/WebViewFactoryProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "WebViewFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "WebViewFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "WebViewFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static getProvider()Landroid/webkitsec/WebViewFactoryProvider;
    .locals 4

    sget-object v2, Landroid/webkitsec/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/webkitsec/WebViewFactory;->sProviderInstance:Landroid/webkitsec/WebViewFactoryProvider;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkitsec/WebViewFactory;->sProviderInstance:Landroid/webkitsec/WebViewFactoryProvider;

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/webkitsec/WebViewFactory;->isExperimentalWebViewEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-static {}, Landroid/webkitsec/WebViewFactory;->loadChromiumProvider()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v1

    sput-object v1, Landroid/webkitsec/WebViewFactory;->sProviderInstance:Landroid/webkitsec/WebViewFactoryProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_1
    sget-object v1, Landroid/webkitsec/WebViewFactory;->sProviderInstance:Landroid/webkitsec/WebViewFactoryProvider;

    if-nez v1, :cond_2

    const-string v1, "android.webkitsec.WebViewClassic$Factory"

    const-class v3, Landroid/webkitsec/WebViewFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/webkitsec/WebViewFactory;->getFactoryByName(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v1

    sput-object v1, Landroid/webkitsec/WebViewFactory;->sProviderInstance:Landroid/webkitsec/WebViewFactoryProvider;

    sget-object v1, Landroid/webkitsec/WebViewFactory;->sProviderInstance:Landroid/webkitsec/WebViewFactoryProvider;

    if-nez v1, :cond_2

    new-instance v1, Landroid/webkitsec/WebViewClassic$Factory;

    invoke-direct {v1}, Landroid/webkitsec/WebViewClassic$Factory;-><init>()V

    sput-object v1, Landroid/webkitsec/WebViewFactory;->sProviderInstance:Landroid/webkitsec/WebViewFactoryProvider;

    :cond_2
    sget-object v1, Landroid/webkitsec/WebViewFactory;->sProviderInstance:Landroid/webkitsec/WebViewFactoryProvider;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static isExperimentalWebViewAvailable()Z
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/framework/webviewchromium.jar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isExperimentalWebViewEnabled()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Landroid/webkitsec/WebViewFactory;->isExperimentalWebViewAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "webview.use_chromium"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WebViewFactory"

    const-string v3, "The property %s has been deprecated. Please use %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "webview.use_chromium"

    aput-object v5, v4, v0

    const-string/jumbo v0, "persist.sys.webview.exp"

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "persist.sys.webview.exp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static loadChromiumProvider()Landroid/webkitsec/WebViewFactoryProvider;
    .locals 4

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/framework/webviewchromium.jar"

    const/4 v2, 0x0

    const-class v3, Landroid/webkitsec/WebViewFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v1, "com.android.webview.chromium.WebViewChromiumFactoryProvider"

    invoke-static {v1, v0}, Landroid/webkitsec/WebViewFactory;->getFactoryByName(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v1

    return-object v1
.end method
