.class Lcom/android/mms/ui/MessagePickerDialog$3;
.super Ljava/lang/Object;
.source "MessagePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$500(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    move-result-object v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v2

    if-le v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # invokes: Lcom/android/mms/ui/MessagePickerDialog;->showMinLimitWarning()V
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$200(Lcom/android/mms/ui/MessagePickerDialog;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    :cond_3
    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result v2

    if-ge v2, v0, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # invokes: Lcom/android/mms/ui/MessagePickerDialog;->showMaxLimitWarning()V
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$400(Lcom/android/mms/ui/MessagePickerDialog;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$500(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;->onNumberSet(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
