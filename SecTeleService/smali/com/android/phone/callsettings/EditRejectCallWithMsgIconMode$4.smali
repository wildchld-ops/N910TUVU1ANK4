.class Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$4;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$4;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1    # Landroid/text/Editable;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$4;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$4;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$4;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$200(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$4;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$200(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$4;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$4;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$200(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
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
