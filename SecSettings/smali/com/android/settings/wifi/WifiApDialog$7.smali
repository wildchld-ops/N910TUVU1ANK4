.class Lcom/android/settings/wifi/WifiApDialog$7;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApDialog;->showHideSsidWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$7;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$7;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # getter for: Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$2300(Lcom/android/settings/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method
