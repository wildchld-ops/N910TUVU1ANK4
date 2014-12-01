.class public final Landroid/webkitsec/MockGeolocation;
.super Ljava/lang/Object;
.source "MockGeolocation.java"


# instance fields
.field private mWebViewCore:Landroid/webkitsec/WebViewCore;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/MockGeolocation;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    return-void
.end method

.method private static native nativeSetError(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
.end method

.method private static native nativeSetPermission(Landroid/webkitsec/WebViewCore;Z)V
.end method

.method private static native nativeSetPosition(Landroid/webkitsec/WebViewCore;DDD)V
.end method

.method private static native nativeSetUseMock(Landroid/webkitsec/WebViewCore;)V
.end method


# virtual methods
.method public setError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/MockGeolocation;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0, p1, p2}, Landroid/webkitsec/MockGeolocation;->nativeSetError(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    return-void
.end method

.method public setPermission(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/MockGeolocation;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0, p1}, Landroid/webkitsec/MockGeolocation;->nativeSetPermission(Landroid/webkitsec/WebViewCore;Z)V

    return-void
.end method

.method public setPosition(DDD)V
    .locals 7

    iget-object v0, p0, Landroid/webkitsec/MockGeolocation;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Landroid/webkitsec/MockGeolocation;->nativeSetPosition(Landroid/webkitsec/WebViewCore;DDD)V

    return-void
.end method

.method public setUseMock()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/MockGeolocation;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0}, Landroid/webkitsec/MockGeolocation;->nativeSetUseMock(Landroid/webkitsec/WebViewCore;)V

    return-void
.end method
