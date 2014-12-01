.class Lcom/android/settings/nfc/NfcSettings$7;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcSettings;->updateCuePosY(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcSettings;

.field final synthetic val$list:Landroid/widget/ListView;

.field final synthetic val$posApapter:I


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcSettings;Landroid/widget/ListView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings$7;->this$0:Lcom/android/settings/nfc/NfcSettings;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcSettings$7;->val$list:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/settings/nfc/NfcSettings$7;->val$posApapter:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    # getter for: Lcom/android/settings/nfc/NfcSettings;->sbeamNfcStatus:I
    invoke-static {}, Lcom/android/settings/nfc/NfcSettings;->access$200()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings$7;->val$list:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/nfc/NfcSettings$7;->val$posApapter:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings$7;->val$list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    const/16 v2, 0x14

    if-eq p2, v2, :cond_0

    const/16 v2, 0x13

    if-eq p2, v2, :cond_0

    const/16 v2, 0x16

    if-eq p2, v2, :cond_0

    const/16 v2, 0x15

    if-ne p2, v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    # getter for: Lcom/android/settings/nfc/NfcSettings;->sbeamNfcStatus:I
    invoke-static {}, Lcom/android/settings/nfc/NfcSettings;->access$200()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$7;->val$list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method
