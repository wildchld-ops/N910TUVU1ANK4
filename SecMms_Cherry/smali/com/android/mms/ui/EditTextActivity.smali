.class public abstract Lcom/android/mms/ui/EditTextActivity;
.super Landroid/app/Activity;
.source "EditTextActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static mActionBar:Landroid/app/ActionBar;

.field protected static mCancelButton:Landroid/widget/Button;

.field protected static mSaveButton:Landroid/widget/Button;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field protected mCountTextView:Landroid/widget/TextView;

.field protected mEditId:I

.field protected mEditText:Landroid/widget/EditText;

.field private final mEditTextWatcher:Landroid/text/TextWatcher;

.field private mImeHandler:Landroid/os/Handler;

.field protected mInputFilter:[Landroid/text/InputFilter;

.field protected mLayoutViewId:I

.field protected mMaxTextLength:I

.field protected mOriginTextBody:Ljava/lang/String;

.field protected mTextCountId:I

.field protected mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mImeHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mOriginTextBody:Ljava/lang/String;

    new-instance v0, Lcom/android/mms/ui/EditTextActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditTextActivity$1;-><init>(Lcom/android/mms/ui/EditTextActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method


# virtual methods
.method public createInputFilter()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mInputFilter:[Landroid/text/InputFilter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mInputFilter:[Landroid/text/InputFilter;

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDialogAlertWhenTextInputForKor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mInputFilter:[Landroid/text/InputFilter;

    new-instance v1, Lcom/android/mms/util/LengthFilterWithDialog;

    iget v2, p0, Lcom/android/mms/ui/EditTextActivity;->mMaxTextLength:I

    const/4 v3, 0x4

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mms/util/LengthFilterWithDialog;-><init>(Landroid/content/Context;II)V

    aput-object v1, v0, v4

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mInputFilter:[Landroid/text/InputFilter;

    new-instance v1, Lcom/android/mms/util/LengthFilterWithToast;

    iget v2, p0, Lcom/android/mms/ui/EditTextActivity;->mMaxTextLength:I

    invoke-direct {v1, v2}, Lcom/android/mms/util/LengthFilterWithToast;-><init>(I)V

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method protected hideSip()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mImeHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mImeHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mImeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/EditTextActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/EditTextActivity$3;-><init>(Lcom/android/mms/ui/EditTextActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/EditTextActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/EditTextActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/EditTextActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/mms/ui/EditTextActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    sget-object v4, Lcom/android/mms/ui/EditTextActivity;->mActionBar:Landroid/app/ActionBar;

    const v5, 0x7f040044

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setCustomView(I)V

    sget-object v4, Lcom/android/mms/ui/EditTextActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/mms/ui/EditTextActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v4, 0x7f0b016e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    sput-object v4, Lcom/android/mms/ui/EditTextActivity;->mCancelButton:Landroid/widget/Button;

    sget-object v4, Lcom/android/mms/ui/EditTextActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b016f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    sput-object v4, Lcom/android/mms/ui/EditTextActivity;->mSaveButton:Landroid/widget/Button;

    sget-object v4, Lcom/android/mms/ui/EditTextActivity;->mSaveButton:Landroid/widget/Button;

    const v5, 0x7f0c00e1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    sget-object v4, Lcom/android/mms/ui/EditTextActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->setMaxTextLength()V

    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->setLayoutViewId()V

    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->setEditId()V

    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->setTextCountId()V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/EditTextActivity;->setBaseContent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->createInputFilter()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v4, p0, Lcom/android/mms/ui/EditTextActivity;->mLayoutViewId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget v4, p0, Lcom/android/mms/ui/EditTextActivity;->mEditId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/mms/ui/EditTextActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget v4, p0, Lcom/android/mms/ui/EditTextActivity;->mTextCountId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mms/ui/EditTextActivity;->mCountTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    iget v5, p0, Lcom/android/mms/ui/EditTextActivity;->mMaxTextLength:I

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

    iget-object v4, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/mms/ui/EditTextActivity;->mInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/mms/ui/EditTextActivity;->mOriginTextBody:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v4, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/EditTextActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/EditTextActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->hideSip()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->showSip()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/EditTextActivity;->hideSip()V

    goto :goto_0
.end method

.method public abstract setBaseContent(Landroid/content/Intent;)V
.end method

.method public setEditId()V
    .locals 1

    const v0, 0x7f0b017c

    iput v0, p0, Lcom/android/mms/ui/EditTextActivity;->mEditId:I

    return-void
.end method

.method public setLayoutViewId()V
    .locals 1

    const v0, 0x7f04004e

    iput v0, p0, Lcom/android/mms/ui/EditTextActivity;->mLayoutViewId:I

    return-void
.end method

.method public abstract setMaxTextLength()V
.end method

.method public setTextCountId()V
    .locals 1

    const v0, 0x7f0b017d

    iput v0, p0, Lcom/android/mms/ui/EditTextActivity;->mTextCountId:I

    return-void
.end method

.method protected showSip()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mImeHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mImeHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mImeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/EditTextActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/EditTextActivity$2;-><init>(Lcom/android/mms/ui/EditTextActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public showToast(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public updateTextCounter(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/EditTextActivity;->mCountTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/mms/ui/EditTextActivity;->mMaxTextLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/EditTextActivity;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
