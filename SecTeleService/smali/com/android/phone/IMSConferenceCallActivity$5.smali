.class Lcom/android/phone/IMSConferenceCallActivity$5;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IMSConferenceCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IMSConferenceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/IMSConferenceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1    # Landroid/text/Editable;

    const/16 v5, 0x20

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside afterTextChanged() : Editable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$1300(Lcom/android/phone/IMSConferenceCallActivity;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallActivity;->access$1400(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallActivity;->access$1500(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallActivity;->access$1500(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallActivity;->access$1400(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/phone/IMSConferenceCallActivity;->mBeforeText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$1602(Lcom/android/phone/IMSConferenceCallActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    const v1, 0x7f09072f

    # invokes: Lcom/android/phone/IMSConferenceCallActivity;->showToast(I)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$1700(Lcom/android/phone/IMSConferenceCallActivity;I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallActivity;->access$100(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mBeforeText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$1600(Lcom/android/phone/IMSConferenceCallActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallActivity;->access$100(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$100(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
