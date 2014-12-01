.class Lcom/android/mms/ui/EditTextActivity$1;
.super Ljava/lang/Object;
.source "EditTextActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditTextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditTextActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditTextActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EditTextActivity$1;->this$0:Lcom/android/mms/ui/EditTextActivity;

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

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity$1;->this$0:Lcom/android/mms/ui/EditTextActivity;

    iget-object v0, v0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity$1;->this$0:Lcom/android/mms/ui/EditTextActivity;

    iget-object v1, p0, Lcom/android/mms/ui/EditTextActivity$1;->this$0:Lcom/android/mms/ui/EditTextActivity;

    iget-object v1, v1, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/EditTextActivity;->updateTextCounter(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/mms/ui/EditTextActivity;->mSaveButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto :goto_0
.end method
