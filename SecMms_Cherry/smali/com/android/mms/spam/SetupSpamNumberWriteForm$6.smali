.class Lcom/android/mms/spam/SetupSpamNumberWriteForm$6;
.super Ljava/lang/Object;
.source "SetupSpamNumberWriteForm.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamNumberWriteForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mLayoutDirection:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$400(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_0
.end method
