.class Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3$1;
.super Ljava/lang/Object;
.source "Hs20PickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3$1;->this$1:Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3$1;->this$1:Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;

    iget-object v0, v0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->scanListner:Lcom/android/settings/wifi/hs20/Hs20PickerDialog$OnScanButtonPressed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3$1;->this$1:Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;

    iget-object v0, v0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->scanListner:Lcom/android/settings/wifi/hs20/Hs20PickerDialog$OnScanButtonPressed;

    invoke-interface {v0}, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$OnScanButtonPressed;->onScanPressed()V

    :cond_0
    return-void
.end method
