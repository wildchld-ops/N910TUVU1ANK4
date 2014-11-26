.class public Lcom/android/mms/settings/CallbackNumberEditActivity$toShowToastLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "CallbackNumberEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/settings/CallbackNumberEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "toShowToastLengthFilter"
.end annotation


# instance fields
.field private mMax:I

.field final synthetic this$0:Lcom/android/mms/settings/CallbackNumberEditActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/settings/CallbackNumberEditActivity;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity$toShowToastLengthFilter;->this$0:Lcom/android/mms/settings/CallbackNumberEditActivity;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iput p2, p0, Lcom/android/mms/settings/CallbackNumberEditActivity$toShowToastLengthFilter;->mMax:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/text/Spanned;
    .param p5    # I
    .param p6    # I

    iget v2, p0, Lcom/android/mms/settings/CallbackNumberEditActivity$toShowToastLengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/settings/CallbackNumberEditActivity$toShowToastLengthFilter;->this$0:Lcom/android/mms/settings/CallbackNumberEditActivity;

    # invokes: Lcom/android/mms/settings/CallbackNumberEditActivity;->showToast()V
    invoke-static {v2}, Lcom/android/mms/settings/CallbackNumberEditActivity;->access$200(Lcom/android/mms/settings/CallbackNumberEditActivity;)V

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    invoke-static {v1}, Lcom/android/mms/settings/CallbackNumberEditActivity;->disableOkButton(I)V

    if-gtz v0, :cond_3

    const-string v2, ""

    :goto_1
    return-object v2

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    if-ne v2, v3, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    goto :goto_0

    :cond_3
    sub-int v2, p3, p2

    if-lt v0, v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/settings/CallbackNumberEditActivity$toShowToastLengthFilter;->this$0:Lcom/android/mms/settings/CallbackNumberEditActivity;

    # invokes: Lcom/android/mms/settings/CallbackNumberEditActivity;->showToast()V
    invoke-static {v2}, Lcom/android/mms/settings/CallbackNumberEditActivity;->access$200(Lcom/android/mms/settings/CallbackNumberEditActivity;)V

    :cond_5
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method
