.class public Lcom/android/mms/util/LengthFilterWithToast;
.super Landroid/text/InputFilter$LengthFilter;
.source "LengthFilterWithToast.java"


# instance fields
.field private final mMax:I

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iput p1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mMax:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    iget v1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/util/LengthFilterWithToast;->showToast()V

    :cond_0
    if-gtz v0, :cond_1

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/util/LengthFilterWithToast;->showToast()V

    :cond_3
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public showToast()V
    .locals 4

    const v3, 0x7f0c039a

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    :goto_2
    iget-object v1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method
