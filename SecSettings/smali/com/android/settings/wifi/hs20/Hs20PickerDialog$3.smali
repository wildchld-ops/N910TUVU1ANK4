.class Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;
.super Ljava/lang/Object;
.source "Hs20PickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    iput-object p2, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->scanBtn:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->access$002(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    # getter for: Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->scanBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->access$000(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3$1;-><init>(Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    # getter for: Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->scanBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->access$000(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
