.class Lcom/android/settings/wifi/mobileap/WpsApDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WpsApDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WpsApDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$1;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    # invokes: Lcom/android/settings/wifi/mobileap/WpsApDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$000(Lcom/android/settings/wifi/mobileap/WpsApDialog;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
