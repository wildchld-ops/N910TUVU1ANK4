.class Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
.super Landroid/os/AsyncTask;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityCheckTask"
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
.field final synthetic this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;Lcom/android/settings/wifi/SetupWizardWifiScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isWiFiConnAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isCaptivePortalNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v1, -0x1

    # setter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " What is the Connection result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v0, v0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v1, v1, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
