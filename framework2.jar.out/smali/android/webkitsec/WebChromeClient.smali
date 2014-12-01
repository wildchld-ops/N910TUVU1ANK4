.class public Landroid/webkitsec/WebChromeClient;
.super Ljava/lang/Object;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebChromeClient$CustomViewCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBingSearchAlertDialogCheckBoxValue(Landroid/webkitsec/WebView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkitsec/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkitsec/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public isBingSearch(Landroid/webkitsec/WebView;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSearchOptionAvailable(Landroid/webkitsec/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAlertDialogWithCheckBox(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCloseWindow(Landroid/webkitsec/WebView;)V
    .locals 0

    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConsoleMessage(Landroid/webkitsec/ConsoleMessage;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/webkitsec/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkitsec/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {p1}, Landroid/webkitsec/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkitsec/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateWindow(Landroid/webkitsec/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkitsec/WebStorage$QuotaUpdater;)V
    .locals 0

    invoke-interface {p9, p3, p4}, Landroid/webkitsec/WebStorage$QuotaUpdater;->updateQuota(J)V

    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/GeolocationPermissions$Callback;)V
    .locals 0

    return-void
.end method

.method public onHideCustomView()V
    .locals 0

    return-void
.end method

.method public onJsAlert(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onJsConfirm(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onJsPrompt(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsPromptResult;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onJsTimeout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onNotificationManagerCancelPrompt(I)V
    .locals 0

    return-void
.end method

.method public onNotificationManagerShowPrompt(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILandroid/webkitsec/NotificationPermissions$Callback;)V
    .locals 0

    return-void
.end method

.method public onNotificationPermissionsHidePrompt()V
    .locals 0

    return-void
.end method

.method public onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/NotificationPermissions$Callback;)V
    .locals 0

    return-void
.end method

.method public onPrintPage()V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Landroid/webkitsec/WebView;I)V
    .locals 0

    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkitsec/WebStorage$QuotaUpdater;)V
    .locals 0

    invoke-interface {p5, p3, p4}, Landroid/webkitsec/WebStorage$QuotaUpdater;->updateQuota(J)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkitsec/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onReceivedTitle(Landroid/webkitsec/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkitsec/WebView;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onRequestFocus(Landroid/webkitsec/WebView;)V
    .locals 0

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkitsec/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkitsec/WebChromeClient$CustomViewCallback;)V
    .locals 0

    return-void
.end method

.method public openFileChooser(Landroid/webkitsec/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setBingSearch(Landroid/webkitsec/WebView;)V
    .locals 0

    return-void
.end method

.method public setBingSearchAlertDialogCheckBoxValue(Landroid/webkitsec/WebView;Z)V
    .locals 0

    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
