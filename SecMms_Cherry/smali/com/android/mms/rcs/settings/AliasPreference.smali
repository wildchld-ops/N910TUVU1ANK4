.class public Lcom/android/mms/rcs/settings/AliasPreference;
.super Landroid/preference/EditTextPreference;
.source "AliasPreference.java"


# static fields
.field private static MAX_Alias_LENGTH:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Mms/AliasPreference"

.field static prefDialog:Landroid/app/AlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditRcs:Landroid/widget/EditText;

.field private mTextRcs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x28

    sput v0, Lcom/android/mms/rcs/settings/AliasPreference;->MAX_Alias_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mTextRcs:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mEditRcs:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mEditRcs:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mEditRcs:Landroid/widget/EditText;

    const v4, 0x7f0c035a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDialogAlertWhenTextInputForKor()Z

    move-result v3

    if-nez v3, :cond_1

    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/mms/util/LengthFilterWithToast;

    sget v4, Lcom/android/mms/rcs/settings/AliasPreference;->MAX_Alias_LENGTH:I

    invoke-direct {v3, v4}, Lcom/android/mms/util/LengthFilterWithToast;-><init>(I)V

    aput-object v3, v0, v7

    iget-object v3, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mEditRcs:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    iget-object v3, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mEditRcs:Landroid/widget/EditText;

    new-instance v4, Landroid/text/method/TextKeyListener;

    sget-object v5, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-direct {v4, v5, v6}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v3, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mEditRcs:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_key_alias_text"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mTextRcs:Ljava/lang/String;

    return-void

    :cond_1
    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/mms/util/LengthFilterWithDialog;

    iget-object v4, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mContext:Landroid/content/Context;

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5, v6}, Lcom/android/mms/util/LengthFilterWithDialog;-><init>(Landroid/content/Context;II)V

    aput-object v3, v1, v7

    iget-object v3, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mEditRcs:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public static disableOkButton(I)V
    .locals 3
    .param p0    # I

    sget-object v1, Lcom/android/mms/rcs/settings/AliasPreference;->prefDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/rcs/settings/AliasPreference;->prefDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private savePreferences(I)V
    .locals 10
    .param p1    # I

    const/4 v3, 0x0

    const-string v2, "Mms/AliasPreference"

    const-string v4, "savePreferences START"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mEditRcs:Landroid/widget/EditText;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mEditRcs:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mTextRcs:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v2, "pref_key_alias_text"

    iget-object v4, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mTextRcs:Ljava/lang/String;

    invoke-interface {v8, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mTextRcs:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_2
    iget-object v2, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.sec.ims.android.rcs/preferences/5"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "user_alias"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v6, 0x0

    if-eqz v7, :cond_3

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v6, :cond_4

    const-string v2, "Mms/AliasPreference"

    const-string v3, "cursor count is 0, return"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "user_alias"

    iget-object v4, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mTextRcs:Ljava/lang/String;

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v9, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "Mms/AliasPreference"

    const-string v3, "savePreferences END"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/rcs/settings/AliasPreference;->savePreferences(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 1

    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mTextRcs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    sput-object v0, Lcom/android/mms/rcs/settings/AliasPreference;->prefDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mTextRcs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mEditRcs:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/settings/AliasPreference;->mEditRcs:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/rcs/settings/AliasPreference;->disableOkButton(I)V

    :cond_0
    return-void
.end method
