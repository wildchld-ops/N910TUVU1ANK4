.class Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
.super Landroid/os/AsyncTask;
.source "CaptivePortalWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private isCaptive:Z

.field private isWiFiConnAvailable:Z

.field final synthetic this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isWiFiConnAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isCaptivePortalNetwork()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isCaptive:Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    if-nez v0, :cond_0

    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " Internet connection Unavilable "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isCaptive:Z

    if-eqz v0, :cond_1

    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, "Page is still captive portal, doing nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " Has Internet connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
