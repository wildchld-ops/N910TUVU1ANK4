.class Lcom/android/mms/ui/MessagePickerDialog$2;
.super Ljava/lang/Object;
.source "MessagePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # invokes: Lcom/android/mms/ui/MessagePickerDialog;->showMaxLimitWarning()V
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$400(Lcom/android/mms/ui/MessagePickerDialog;)V

    :cond_0
    const/4 v2, 0x0

    return v2
.end method
