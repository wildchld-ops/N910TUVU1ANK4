.class public Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;
.super Landroid/app/Fragment;
.source "FingerprintPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCheckSimplePassword:Z

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    const/high16 v0, 0x50000

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$1;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    const-string v4, "ChooseLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x1

    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x6

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v1, :cond_2

    const-string v5, "0123456789"

    add-int/lit8 v6, v0, 0x6

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "9876543210"

    add-int/lit8 v6, v0, 0x6

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x6

    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v6, v0, 0x6

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x6

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleNext()V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_3

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-direct {p0, v1, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$500()Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->setPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$600()I

    move-result v6

    if-lt v6, v9, :cond_4

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$600()I

    move-result v6

    const/16 v7, 0xa

    if-gt v6, v7, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fingerprint_fingerIndex"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$600()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->bFingerprintPassword:Z
    invoke-static {v9}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$702(Z)Z

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$800()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$800()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$800()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_7

    :cond_5
    const-string v6, "ChooseLockGeneric"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v6

    if-nez v6, :cond_6

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$100()Z

    move-result v6

    if-ne v6, v9, :cond_9

    :cond_6
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    const v8, 0x61000

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPassword(Ljava/lang/String;II)V

    :goto_2
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->savePersonalModeFingerPrintPassword(Ljava/lang/String;)V

    :cond_7
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "previousStage"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "enrollResult"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isenrolledFingerprint()Z

    move-result v6

    if-ne v6, v9, :cond_a

    const-string v6, "isenrolled"

    const-string v7, "true"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_8
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "is_smpw_key"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v11, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_9
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPassword(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v6, "isenrolled"

    const-string v7, "false"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "is_smpw_key"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_c
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0918e6

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0918ef

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    :cond_d
    sget-object v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v6, v5

    check-cast v6, Landroid/text/Spannable;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v6, v10, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1
.end method

.method private isenrolledFingerprint()Z
    .locals 4

    const/4 v0, 0x0

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$500()Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateUi()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_2

    if-lez v1, :cond_2

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v6, :cond_0

    const v6, 0x7f090271

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v6, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f090273

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string v6, "FingerprintSettings_changepassword"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0918d0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_4

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->alphaHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    iget-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    if-eqz v10, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const v10, 0x7f09119c

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_0
    return-object v10

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f09119b

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v10, v11, :cond_2

    const v10, 0x7f090271

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    if-le v10, v11, :cond_3

    const v10, 0x7f090275

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v10, 0x20

    if-lt v2, v10, :cond_4

    const/16 v10, 0x7f

    if-le v2, v10, :cond_5

    :cond_4
    const v10, 0x7f090279

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_5
    const/16 v10, 0x30

    if-lt v2, v10, :cond_6

    const/16 v10, 0x39

    if-gt v2, v10, :cond_6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/16 v10, 0x41

    if-lt v2, v10, :cond_7

    const/16 v10, 0x5a

    if-gt v2, v10, :cond_7

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    const/16 v10, 0x61

    if-lt v2, v10, :cond_8

    const/16 v10, 0x7a

    if-gt v2, v10, :cond_8

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    const/high16 v10, 0x20000

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_b

    if-gtz v4, :cond_a

    if-lez v8, :cond_b

    :cond_a
    const v10, 0x7f090277

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_b
    const/high16 v10, 0x60000

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_11

    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    if-ge v4, v10, :cond_c

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110001

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_c
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    if-ge v7, v10, :cond_d

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110004

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_d
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v5, v10, :cond_e

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110002

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_e
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v9, v10, :cond_f

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110003

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_f
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    if-ge v8, v10, :cond_10

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110005

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_10
    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v6, v10, :cond_16

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110006

    iget v12, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_11
    const/high16 v10, 0x40000

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_13

    const/4 v0, 0x1

    :goto_3
    const/high16 v10, 0x50000

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_14

    const/4 v1, 0x1

    :goto_4
    if-nez v0, :cond_12

    if-eqz v1, :cond_15

    :cond_12
    if-nez v4, :cond_15

    const v10, 0x7f09027a

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x0

    goto :goto_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_4

    :cond_15
    if-eqz v1, :cond_16

    if-nez v7, :cond_16

    const v10, 0x7f09027b

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_16
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    const v10, 0x7f09027e

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "FingerprintPasswordFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->handleNext()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "enrollResult"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00b0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x61000

    const/high16 v3, 0x50000

    const/4 v8, 0x1

    const/4 v4, 0x6

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    const-string v5, "ChooseLockPassword"

    const-string v6, "mCheckSimplePassword = false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/admin/DevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_0

    iput-boolean v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    const-string v5, "ChooseLockPassword"

    const-string v6, "mCheckSimplePassword = true"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/16 v5, 0x63

    if-le v2, v5, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "persona"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v2

    :cond_1
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {v6, v7, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {v5, v7, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v5, v4, :cond_2

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    :cond_2
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v5

    if-eq v5, v9, :cond_4

    :cond_3
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$100()Z

    move-result v5

    if-ne v5, v8, :cond_5

    :cond_4
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-ge v5, v3, :cond_6

    :goto_0
    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v3, v4, :cond_7

    move v3, v4

    :goto_1
    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    :cond_5
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    const-string v3, "lockscreen.password_min_letters"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    const-string v3, "lockscreen.password_min_uppercase"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    const-string v3, "lockscreen.password_min_lowercase"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    const-string v3, "lockscreen.password_min_numeric"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    const-string v3, "lockscreen.password_min_symbols"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    const-string v3, "lockscreen.password_min_nonletter"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void

    :cond_6
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const v8, 0x7f040043

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b00b0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0b00b1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    instance-of v8, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    const v8, 0x7f0b00cf

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const v8, 0x7f0b00cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v9, 0x2000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    const v8, 0x7f0b00ae

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez p3, :cond_3

    sget-object v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    :cond_1
    :goto_0
    instance-of v8, v0, Landroid/preference/PreferenceActivity;

    if-eqz v8, :cond_2

    move-object v3, v0

    check-cast v3, Landroid/preference/PreferenceActivity;

    const/4 v6, 0x0

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v8, "FingerprintSettings_changepassword"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const v6, 0x7f091b69

    :goto_1
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5, v5}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v9, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$2;

    invoke-direct {v9, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$2;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object v7

    :cond_3
    const-string v8, "first_pin"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    const-string v8, "ui_stage"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "FingerprintPasswordFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreateView : [mFirstPin] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " [state] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    goto :goto_0

    :cond_4
    const v6, 0x7f0918d3

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const-string v0, ""

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$202(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$602(I)I

    const-string v0, ""

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$802(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->handleNext()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$500()Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$500()Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
