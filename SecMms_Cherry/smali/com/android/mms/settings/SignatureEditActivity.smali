.class public Lcom/android/mms/settings/SignatureEditActivity;
.super Lcom/android/mms/ui/EditTextActivity;
.source "SignatureEditActivity.java"


# static fields
.field private static MAX_SIGNATURE_KOR_LENGTH:I

.field private static MAX_SIGNATURE_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x28

    sput v0, Lcom/android/mms/settings/SignatureEditActivity;->MAX_SIGNATURE_LENGTH:I

    const/16 v0, 0x20

    sput v0, Lcom/android/mms/settings/SignatureEditActivity;->MAX_SIGNATURE_KOR_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/EditTextActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getOriginalString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b016f

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mOriginTextBody:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mOriginTextBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/settings/SignatureEditActivity;->getOriginalString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c039d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditTextActivity;->showToast(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->hideSip()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mOriginTextBody:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/settings/SignatureEditActivity;->getOriginalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mOriginTextBody:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/settings/SignatureEditActivity;->setChangedString(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b016e

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->hideSip()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setBaseContent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mOriginTextBody:Ljava/lang/String;

    return-void
.end method

.method public setChangedString(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSignatureString(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setMaxTextLength()V
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORRTSRejectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/mms/settings/SignatureEditActivity;->MAX_SIGNATURE_KOR_LENGTH:I

    iput v0, p0, Lcom/android/mms/ui/EditTextActivity;->mMaxTextLength:I

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/mms/settings/SignatureEditActivity;->MAX_SIGNATURE_LENGTH:I

    iput v0, p0, Lcom/android/mms/ui/EditTextActivity;->mMaxTextLength:I

    goto :goto_0
.end method
