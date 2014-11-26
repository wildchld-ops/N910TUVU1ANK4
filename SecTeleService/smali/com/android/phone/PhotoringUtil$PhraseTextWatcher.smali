.class public Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;
.super Ljava/lang/Object;
.source "PhotoringUtil.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhotoringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhraseTextWatcher"
.end annotation


# instance fields
.field private MAX_BYTE:I

.field private WARNING_BYTE:I

.field private context:Landroid/content/Context;

.field private et:Landroid/widget/EditText;

.field private mIsShowWarningByteExceed:Z

.field private prevString:Ljava/lang/String;

.field private tvCnt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/widget/EditText;
    .param p3    # Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->WARNING_BYTE:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->MAX_BYTE:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->mIsShowWarningByteExceed:Z

    iput-object p1, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->tvCnt:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1    # Landroid/text/Editable;

    iget-object v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->et:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhotoringUtil;->getByteLength(Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->MAX_BYTE:I

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->et:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->prevString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->et:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->prevString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->context:Landroid/content/Context;

    const/16 v4, 0x2001

    invoke-static {v3, v4}, Lcom/android/phone/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->prevString:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->et:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhotoringUtil;->getByteLength(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->tvCnt:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/64"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->WARNING_BYTE:I

    if-le v1, v3, :cond_3

    iget-boolean v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->mIsShowWarningByteExceed:Z

    if-eqz v3, :cond_3

    const-string v3, "support_photo_ring"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->context:Landroid/content/Context;

    const/16 v4, 0x2002

    invoke-static {v3, v4}, Lcom/android/phone/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->mIsShowWarningByteExceed:Z

    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->prevString:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->WARNING_BYTE:I

    if-ge v1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->mIsShowWarningByteExceed:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;->mIsShowWarningByteExceed:Z

    goto :goto_1
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
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method
