.class public interface abstract Landroid/webkitsec/WebViewFactoryProvider;
.super Ljava/lang/Object;
.source "WebViewFactoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebViewFactoryProvider$Statics;
    }
.end annotation


# virtual methods
.method public abstract createWebView(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$PrivateAccess;)Landroid/webkitsec/WebViewProvider;
.end method

.method public abstract getCookieManager()Landroid/webkitsec/CookieManager;
.end method

.method public abstract getGeolocationPermissions()Landroid/webkitsec/GeolocationPermissions;
.end method

.method public abstract getStatics()Landroid/webkitsec/WebViewFactoryProvider$Statics;
.end method

.method public abstract getWebIconDatabase()Landroid/webkitsec/WebIconDatabase;
.end method

.method public abstract getWebStorage()Landroid/webkitsec/WebStorage;
.end method

.method public abstract getWebViewDatabase(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabase;
.end method
