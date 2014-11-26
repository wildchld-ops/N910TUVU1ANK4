.class Lcom/android/settings/wifi/WifiWarningDialog$4;
.super Ljava/lang/Object;
.source "WifiWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiWarningDialog;->getDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiWarningDialog$4;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const-string v1, "WifiWarningDialog"

    const-string v2, "Cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWarningDialog$4;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    const/4 v2, 0x0

    # invokes: Lcom/android/settings/wifi/WifiWarningDialog;->Sendmsg(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiWarningDialog;->access$200(Lcom/android/settings/wifi/WifiWarningDialog;I)V

    # getter for: Lcom/android/settings/wifi/WifiWarningDialog;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/WifiWarningDialog;->access$300()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f091ba7

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x46

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWarningDialog$4;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    # getter for: Lcom/android/settings/wifi/WifiWarningDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiWarningDialog;->access$400(Lcom/android/settings/wifi/WifiWarningDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWarningDialog$4;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
