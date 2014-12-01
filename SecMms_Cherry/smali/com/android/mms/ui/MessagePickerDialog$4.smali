.class Lcom/android/mms/ui/MessagePickerDialog$4;
.super Ljava/lang/Object;
.source "MessagePickerDialog.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog$4;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v0

    if-ne p3, v0, :cond_0

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v0

    if-eq p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog$4;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mOnkeyDown:Z
    invoke-static {v0}, Lcom/android/mms/ui/MessagePickerDialog;->access$600(Lcom/android/mms/ui/MessagePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v0

    if-ne p3, v0, :cond_2

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v0

    if-le p2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog$4;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # invokes: Lcom/android/mms/ui/MessagePickerDialog;->showMinLimitWarning()V
    invoke-static {v0}, Lcom/android/mms/ui/MessagePickerDialog;->access$200(Lcom/android/mms/ui/MessagePickerDialog;)V

    :cond_2
    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result v0

    if-ne p3, v0, :cond_3

    # getter for: Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog$4;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    # invokes: Lcom/android/mms/ui/MessagePickerDialog;->showMaxLimitWarning()V
    invoke-static {v0}, Lcom/android/mms/ui/MessagePickerDialog;->access$400(Lcom/android/mms/ui/MessagePickerDialog;)V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog$4;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/MessagePickerDialog;->mOnkeyDown:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagePickerDialog;->access$602(Lcom/android/mms/ui/MessagePickerDialog;Z)Z

    return-void
.end method
