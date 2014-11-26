.class Lcom/android/settings/wifi/FreeWifiScanPickerDialog$1;
.super Ljava/lang/Object;
.source "FreeWifiScanPickerDialog.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$1;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$1;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$1;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
