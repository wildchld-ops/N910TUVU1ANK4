.class public Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
.super Landroid/app/Fragment;
.source "PersonalPageChooseLockAdditionalPin.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockAdditionalPinFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;
    }
.end annotation


# instance fields
.field private isFallback:Z

.field private isPersonalPageLockPatternAdditionalPin:Z

.field private isSetLockToSignature:Z

.field private isSignatureOwnAdditionalPin:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstLockQuality:I

.field private mFirstLockString:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockText:Landroid/widget/TextView;

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

.field private mPatternSavedString:Ljava/lang/String;

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x20000

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLetters:I

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinUpperCase:I

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLowerCase:I

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinSymbols:I

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinNumeric:I

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinNonLetter:I

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    iput-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;-><init>(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private handleNext()V
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_3

    invoke-direct {p0, v2}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    sget-object v5, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-direct {p0, v0, v5}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->showError(Ljava/lang/String;Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v6, :cond_4

    invoke-direct {p0, v2}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isPersonalPageLockPatternAdditionalPin:Z

    if-eqz v6, :cond_5

    invoke-direct {p0, v2}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveAdditionalPinForPersonalPageLockPattern(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v6

    if-nez v6, :cond_6

    move v1, v5

    :cond_6
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-boolean v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v1, :cond_7

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_8
    sget-object v5, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v5, v3

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v5, v1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1
.end method

.method private saveAdditionalPinForPersonalPageLockPattern(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->savePersonalModeLockPattern(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->savePersonalModeLockBackupPin(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveSignatureBackupPin(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetLockToSignature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockAsSignature(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateUi()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_2

    if-lez v1, :cond_2

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v1, v6, :cond_0

    const v6, 0x7f090272

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v6, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v5, v5, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f090273

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v7, v7, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->numericHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v7, v8, :cond_1

    const v6, 0x7f090272

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    if-le v7, v8, :cond_2

    const v6, 0x7f090276

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x20

    if-le v0, v7, :cond_3

    const/16 v7, 0x7f

    if-le v0, v7, :cond_4

    :cond_3
    const v6, 0x7f090279

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    const/16 v7, 0x30

    if-lt v0, v7, :cond_5

    const/16 v7, 0x39

    if-gt v0, v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/16 v7, 0x41

    if-lt v0, v7, :cond_6

    const/16 v7, 0x5a

    if-gt v0, v7, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const/16 v7, 0x61

    if-lt v0, v7, :cond_7

    const/16 v7, 0x7a

    if-gt v0, v7, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    const/high16 v7, 0x20000

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    if-ne v7, v8, :cond_a

    if-gtz v2, :cond_9

    if-lez v5, :cond_a

    :cond_9
    const v6, 0x7f090277

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_a
    const/high16 v7, 0x70000

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    if-ne v7, v8, :cond_c

    if-gtz v2, :cond_b

    if-lez v5, :cond_0

    :cond_b
    const v6, 0x7f090244

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v6, 0x7f090278

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "ChooseLockAdditionalPin"

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

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
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

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b00b0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/high16 v5, 0x10000

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "confirm_credentials"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    const-string v2, "lockscreen.password_type"

    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    const-string v2, "lockscreen.password_type"

    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    const-string v2, "firstlock"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    const-string v2, "lockscreen.password_min"

    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    const-string v2, "lockscreen.password_max"

    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "lockscreen.password_type"

    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const-string v2, "SignatureOwnAdditionalPin"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    const-string v2, "PersonalPagePatternOwnAdditionalPin"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isPersonalPageLockPatternAdditionalPin:Z

    iget-boolean v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isPersonalPageLockPatternAdditionalPin:Z

    if-eqz v2, :cond_1

    const-string v2, "PersonalPagePatternSaved"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v2, :cond_2

    const-string v2, "SignatureLockSetting"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetLockToSignature:Z

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    const/16 v2, 0x8

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    const v7, 0x7f04003f

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    instance-of v7, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v10, v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    const v7, 0x7f0b00b0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0b00b1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0b00cf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const v7, 0x7f0b00cd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setWritingBuddyEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v8, 0x2000000

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v7, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v9, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v7, v0, v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    const v7, 0x7f0b00ae

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0b00ce

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez p3, :cond_3

    sget-object v7, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    :cond_1
    :goto_0
    instance-of v7, v0, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_2

    move-object v3, v0

    check-cast v3, Landroid/preference/PreferenceActivity;

    const v1, 0x7f0913a5

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5, v5}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v8, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;

    invoke-direct {v8, p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;-><init>(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object v6

    :cond_3
    const-string v7, "first_pin"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    const-string v7, "ui_stage"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0913a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0913a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    return-void
.end method
