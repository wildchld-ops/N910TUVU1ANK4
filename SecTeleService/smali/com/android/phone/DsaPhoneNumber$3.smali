.class Lcom/android/phone/DsaPhoneNumber$3;
.super Ljava/lang/Object;
.source "DsaPhoneNumber.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DsaPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DsaPhoneNumber;


# direct methods
.method constructor <init>(Lcom/android/phone/DsaPhoneNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

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
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "DsaPhoneNumber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChanged [1] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/DsaPhoneNumber;->access$000(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [2] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/DsaPhoneNumber;->access$100(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$000(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$100(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$200(Lcom/android/phone/DsaPhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$300(Lcom/android/phone/DsaPhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$400(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$500(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mMenuOk:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$600(Lcom/android/phone/DsaPhoneNumber;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/phone/DsaPhoneNumber;->access$500(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$200(Lcom/android/phone/DsaPhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$300(Lcom/android/phone/DsaPhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$400(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$500(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mMenuOk:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/phone/DsaPhoneNumber;->access$600(Lcom/android/phone/DsaPhoneNumber;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber$3;->this$0:Lcom/android/phone/DsaPhoneNumber;

    # getter for: Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/phone/DsaPhoneNumber;->access$500(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
