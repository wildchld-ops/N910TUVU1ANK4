.class Lcom/android/phone/callsettings/CallBarring$13$1;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring$13;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/CallBarring$13;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring$13;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$13$1;->this$1:Lcom/android/phone/callsettings/CallBarring$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1    # Landroid/text/Editable;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$13$1;->this$1:Lcom/android/phone/callsettings/CallBarring$13;

    iget-object v0, v0, Lcom/android/phone/callsettings/CallBarring$13;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$1400(Lcom/android/phone/callsettings/CallBarring;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method
