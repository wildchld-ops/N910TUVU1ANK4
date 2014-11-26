.class Lcom/android/settings/wifi/WifiPoorConnection$5;
.super Ljava/lang/Object;
.source "WifiPoorConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPoorConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiPoorConnection$5;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection$5;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    # getter for: Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiPoorConnection;->access$400(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection$5;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    # getter for: Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiPoorConnection;->access$400(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
