.class Lcom/android/settings/wifi/WifiCaptiveActivity$1;
.super Ljava/lang/Object;
.source "WifiCaptiveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiCaptiveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiCaptiveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$1;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$1;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    # getter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$1100(Lcom/android/settings/wifi/WifiCaptiveActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$1;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
