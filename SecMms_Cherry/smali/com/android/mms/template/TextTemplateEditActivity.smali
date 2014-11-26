.class public Lcom/android/mms/template/TextTemplateEditActivity;
.super Lcom/android/mms/ui/EditTextActivity;
.source "TextTemplateEditActivity.java"


# static fields
.field private static final MAX_TEMPLATE_LENGTH:I = 0xc8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/EditTextActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b016e

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->hideSip()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b016f

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0c021f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/EditTextActivity;->showToast(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->hideSip()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const v1, 0x7f0c0221

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/EditTextActivity;->showToast(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.TEMPLATE"

    iget-object v2, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->hideSip()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    invoke-static {p0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public setBaseContent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "android.intent.extra.TEMPLATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mOriginTextBody:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMaxTextLength()V
    .locals 1

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/mms/ui/EditTextActivity;->mMaxTextLength:I

    return-void
.end method
