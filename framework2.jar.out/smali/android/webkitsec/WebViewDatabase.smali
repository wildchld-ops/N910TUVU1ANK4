.class public Landroid/webkitsec/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "webviewdatabase"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabase;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebViewFactory;->getProvider()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkitsec/WebViewFactoryProvider;->getWebViewDatabase(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearFormData()V
    .locals 1

    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 1

    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public clearUsernamePassword()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public hasFormData()Z
    .locals 1

    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 1

    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public hasUsernamePassword()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method
