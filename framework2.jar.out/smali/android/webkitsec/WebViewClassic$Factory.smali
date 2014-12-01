.class Landroid/webkitsec/WebViewClassic$Factory;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkitsec/WebViewFactoryProvider$Statics;
.implements Landroid/webkitsec/WebViewFactoryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebView(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$PrivateAccess;)Landroid/webkitsec/WebViewProvider;
    .locals 1

    new-instance v0, Landroid/webkitsec/WebViewClassic;

    invoke-direct {v0, p1, p2}, Landroid/webkitsec/WebViewClassic;-><init>(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$PrivateAccess;)V

    return-object v0
.end method

.method public findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookieManager()Landroid/webkitsec/CookieManager;
    .locals 1

    invoke-static {}, Landroid/webkitsec/CookieManagerClassic;->getInstance()Landroid/webkitsec/CookieManagerClassic;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/webkitsec/WebSettingsClassic;->getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeolocationPermissions()Landroid/webkitsec/GeolocationPermissions;
    .locals 1

    invoke-static {}, Landroid/webkitsec/GeolocationPermissionsClassic;->getInstance()Landroid/webkitsec/GeolocationPermissionsClassic;

    move-result-object v0

    return-object v0
.end method

.method public getStatics()Landroid/webkitsec/WebViewFactoryProvider$Statics;
    .locals 0

    return-object p0
.end method

.method public getWebIconDatabase()Landroid/webkitsec/WebIconDatabase;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebIconDatabaseClassic;->getInstance()Landroid/webkitsec/WebIconDatabaseClassic;

    move-result-object v0

    return-object v0
.end method

.method public getWebStorage()Landroid/webkitsec/WebStorage;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->getInstance()Landroid/webkitsec/WebStorageClassic;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewDatabase(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabase;
    .locals 1

    invoke-static {p1}, Landroid/webkitsec/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabaseClassic;

    move-result-object v0

    return-object v0
.end method

.method public setPlatformNotificationsEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/webkitsec/WebViewClassic;->enablePlatformNotifications()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->disablePlatformNotifications()V

    goto :goto_0
.end method
