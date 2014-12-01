.class Lcom/android/settings/wifi/WifiOffloadDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiOffloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiOffloadDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v1, "WifiOffloadDialog"

    const-string v2, "Wifi is turned OFF, close dialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    # getter for: Lcom/android/settings/wifi/WifiOffloadDialog;->mSearchingText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->access$200(Lcom/android/settings/wifi/WifiOffloadDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WifiOffloadDialog"

    const-string v2, "remove scanning animation"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    # getter for: Lcom/android/settings/wifi/WifiOffloadDialog;->mSearchingText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->access$200(Lcom/android/settings/wifi/WifiOffloadDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    # getter for: Lcom/android/settings/wifi/WifiOffloadDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->access$300(Lcom/android/settings/wifi/WifiOffloadDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
