.class public Lcom/android/settings/cloud/NumberPickerDialog;
.super Landroid/app/AlertDialog;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cloud/NumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/settings/cloud/NumberPickerDialog$OnNumberSetListener;

.field private final mNumberPicker:Landroid/widget/NumberPicker;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/cloud/NumberPickerDialog;->mCallback:Lcom/android/settings/cloud/NumberPickerDialog$OnNumberSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    iget-object v0, p0, Lcom/android/settings/cloud/NumberPickerDialog;->mCallback:Lcom/android/settings/cloud/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/settings/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/cloud/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "number"

    iget-object v2, p0, Lcom/android/settings/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
