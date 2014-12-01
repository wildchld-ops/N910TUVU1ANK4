.class Lcom/android/settings/wifi/mobileap/WifiApSettings$4;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z
    invoke-static {v1, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$502(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
