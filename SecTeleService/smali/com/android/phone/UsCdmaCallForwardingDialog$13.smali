.class Lcom/android/phone/UsCdmaCallForwardingDialog$13;
.super Ljava/lang/Object;
.source "UsCdmaCallForwardingDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UsCdmaCallForwardingDialog;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$13;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v3, -0x1

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$13;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    iget-object v2, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$13;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    # getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->eNumberText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$700(Lcom/android/phone/UsCdmaCallForwardingDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/UsCdmaCallForwardingDialog;->isCFButtonEnabled(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$1000(Lcom/android/phone/UsCdmaCallForwardingDialog;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mCustomizeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$1100()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mCustomizeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$1100()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
