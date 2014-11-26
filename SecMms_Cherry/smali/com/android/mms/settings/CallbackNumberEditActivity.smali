.class public Lcom/android/mms/settings/CallbackNumberEditActivity;
.super Landroid/app/Activity;
.source "CallbackNumberEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/settings/CallbackNumberEditActivity$toShowToastLengthFilter;
    }
.end annotation


# static fields
.field private static final MAX_CALLBACK_LENGTH:I = 0x28

.field protected static mActionBar:Landroid/app/ActionBar;

.field protected static mCancelButton:Landroid/widget/Button;

.field protected static mSaveButton:Landroid/widget/Button;


# instance fields
.field private IMEHandler:Landroid/os/Handler;

.field mActivity:Landroid/app/Activity;

.field private final mCallbackSettingsWatcher:Landroid/text/TextWatcher;

.field mContext:Landroid/content/Context;

.field private mEditCallback:Landroid/widget/EditText;

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private mTextCallbackNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mTextCallbackNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->IMEHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/settings/CallbackNumberEditActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/CallbackNumberEditActivity$2;-><init>(Lcom/android/mms/settings/CallbackNumberEditActivity;)V

    iput-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mCallbackSettingsWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/settings/CallbackNumberEditActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/settings/CallbackNumberEditActivity;

    invoke-direct {p0}, Lcom/android/mms/settings/CallbackNumberEditActivity;->callbackSipHide()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/settings/CallbackNumberEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/mms/settings/CallbackNumberEditActivity;

    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/settings/CallbackNumberEditActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/settings/CallbackNumberEditActivity;

    invoke-direct {p0}, Lcom/android/mms/settings/CallbackNumberEditActivity;->showToast()V

    return-void
.end method

.method private callbackSipHide()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->IMEHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->IMEHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/settings/CallbackNumberEditActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/CallbackNumberEditActivity$3;-><init>(Lcom/android/mms/settings/CallbackNumberEditActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static disableOkButton(I)V
    .locals 2
    .param p0    # I

    sget-object v0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    sget-object v0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showToast()V
    .locals 3

    const v2, 0x7f0c039a

    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkEditCallback()V
    .locals 6

    const/16 v5, 0x28

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDialogAlertWhenTextInputForKor()Z

    move-result v2

    if-nez v2, :cond_0

    new-array v0, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/mms/settings/CallbackNumberEditActivity$toShowToastLengthFilter;

    invoke-direct {v2, p0, v5}, Lcom/android/mms/settings/CallbackNumberEditActivity$toShowToastLengthFilter;-><init>(Lcom/android/mms/settings/CallbackNumberEditActivity;I)V

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/mms/util/LengthFilterWithDialog;

    invoke-direct {v2, p0, v5, v3}, Lcom/android/mms/util/LengthFilterWithDialog;-><init>(Landroid/content/Context;II)V

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b016f

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/settings/CallbackNumberEditActivity;->save()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    sput-object v6, Lcom/android/mms/settings/CallbackNumberEditActivity;->mActionBar:Landroid/app/ActionBar;

    sget-object v6, Lcom/android/mms/settings/CallbackNumberEditActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    sget-object v6, Lcom/android/mms/settings/CallbackNumberEditActivity;->mActionBar:Landroid/app/ActionBar;

    const v7, 0x7f040044

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setCustomView(I)V

    sget-object v6, Lcom/android/mms/settings/CallbackNumberEditActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/mms/settings/CallbackNumberEditActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v6, 0x7f0b016e

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    sput-object v6, Lcom/android/mms/settings/CallbackNumberEditActivity;->mCancelButton:Landroid/widget/Button;

    sget-object v6, Lcom/android/mms/settings/CallbackNumberEditActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/mms/settings/CallbackNumberEditActivity$1;

    invoke-direct {v7, p0}, Lcom/android/mms/settings/CallbackNumberEditActivity$1;-><init>(Lcom/android/mms/settings/CallbackNumberEditActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b016f

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    sput-object v6, Lcom/android/mms/settings/CallbackNumberEditActivity;->mSaveButton:Landroid/widget/Button;

    sget-object v6, Lcom/android/mms/settings/CallbackNumberEditActivity;->mSaveButton:Landroid/widget/Button;

    const v7, 0x7f0c00e1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    sget-object v6, Lcom/android/mms/settings/CallbackNumberEditActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v6, 0x7f040029

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const v6, 0x7f0b00ae

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/mms/settings/CallbackNumberEditActivity;->checkEditCallback()V

    iget-object v6, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mCallbackSettingsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "pref_key_callback_text"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mTextCallbackNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mTextCallbackNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    iput-object v3, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mTextCallbackNumber:Ljava/lang/String;

    :cond_2
    const-string v6, "pref_key_enable_callback"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v6, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v6, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    :goto_0
    iget-object v6, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mTextCallbackNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
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
    iget-object v1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mCallbackSettingsWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mCallbackSettingsWatcher:Landroid/text/TextWatcher;

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

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public save()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mTextCallbackNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mTextCallbackNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mTextCallbackNumber:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/settings/CallbackNumberEditActivity;->mTextCallbackNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeCallbackString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
