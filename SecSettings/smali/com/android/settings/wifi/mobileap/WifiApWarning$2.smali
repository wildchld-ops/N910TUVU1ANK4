.class Lcom/android/settings/wifi/mobileap/WifiApWarning$2;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;->val$cr:Landroid/content/ContentResolver;

    const-string v3, "wifi_saved_state"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    if-ne v1, v4, :cond_1

    const-wide/16 v2, 0x258

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;->val$cr:Landroid/content/ContentResolver;

    const-string v3, "wifi_saved_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method
