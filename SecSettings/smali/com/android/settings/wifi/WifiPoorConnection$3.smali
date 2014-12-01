.class Lcom/android/settings/wifi/WifiPoorConnection$3;
.super Ljava/lang/Object;
.source "WifiPoorConnection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiPoorConnection;->showPoorConnectionDiag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPoorConnection;

.field final synthetic val$mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPoorConnection;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->val$mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiPoorConnection;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->val$mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    # getter for: Lcom/android/settings/wifi/WifiPoorConnection;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiPoorConnection;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiPoorConnection"

    const-string v2, "CANCEL BUTTON - CHECKBOX CHECKED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiPoorConnection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_poor_connection_warning"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    # getter for: Lcom/android/settings/wifi/WifiPoorConnection;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiPoorConnection;->access$100(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    # getter for: Lcom/android/settings/wifi/WifiPoorConnection;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiPoorConnection;->access$100(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09050f

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiPoorConnection;->finish()V

    return-void

    :cond_2
    # getter for: Lcom/android/settings/wifi/WifiPoorConnection;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiPoorConnection;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiPoorConnection"

    const-string v2, "CANCEL BUTTON - CHECKBOX UNCHECKED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
