.class public Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "LGTEditPhotoRingRejectScreen.java"


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field final MATCH_ENDS_WITH:I

.field final MATCH_EQUAL:I

.field final MATCH_INCLUDE:I

.field final MATCH_STARTS_WITH:I

.field final defaultIndex:I

.field editBox:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private isDialogCreated:Z

.field private mContentURI:Landroid/net/Uri;

.field mToast:Landroid/widget/Toast;

.field private match_MODE:I

.field private previous_NUM:Ljava/lang/String;

.field searchButton:Landroid/widget/Button;

.field private select_NUM:Ljava/lang/String;

.field private update_ID:I

.field private update_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "photoring_reject_number"

    aput-object v1, v0, v3

    const-string v1, "photoring_reject_checked"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->FROM:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->NUM_PROJECTION:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->MATCH_EQUAL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->MATCH_STARTS_WITH:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->MATCH_ENDS_WITH:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->MATCH_INCLUDE:I

    iput v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->defaultIndex:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->isDialogCreated:Z

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->mContentURI:Landroid/net/Uri;

    new-instance v0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$7;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$7;-><init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->isDialogCreated:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->isDialogCreated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->alertdialogSearch()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method private addPhotoRingRejectNumber(Ljava/lang/String;)J
    .locals 8
    .param p1    # Ljava/lang/String;

    const/4 v7, 0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "photoring_reject_number"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "photoring_reject_checked"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->mContentURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    const-wide/16 v1, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :cond_0
    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_0
.end method

.method private alertdialogSearch()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0902cd

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f08000c

    new-instance v3, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$8;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$8;-><init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$9;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$9;-><init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getPhotoRingRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, "EditAutoRejectScreen"

    const-string v5, "checkAlreadyInUse : cursor is null"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    move-object v2, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eq v1, v5, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    move v4, v1

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private getPhotoRingRejectNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private isAvaliableNumber(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updatePhotoRingRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Integer;
    .param p3    # I

    const/4 v5, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "photoring_reject_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "photoring_reject_checked"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->mContentURI:Landroid/net/Uri;

    int-to-long v3, p3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clickCancelBtn(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method

.method public clickSaveBtn(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f09038d

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->displayToast(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f0907ee

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->displayToast(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f0907ef

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->displayToast(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->update_MODE:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->update_ID:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->updatePhotoRingRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->addPhotoRingRejectNumber(Ljava/lang/String;)J

    goto :goto_1
.end method

.method isUnknownNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "-2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v9, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/16 v8, 0x64

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v7, ""

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$10;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$10;-><init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    const-string v0, "EditAutoRejectScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NUMBER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->isUnknownNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EditAutoRejectScreen"

    const-string v1, "unknwon number from log"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_3

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    const-string v0, "EditAutoRejectScreen"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_7

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_7
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const-string v0, "EditAutoRejectScreen"

    const-string v1, "onActivityResult: cancelled."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    const-string v0, "EditAutoRejectScreen"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "hardkeyboardhidden_no"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v5, 0x7f04001d

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(I)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const v5, 0x7f0a008c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v5, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$1;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$1;-><init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a008d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f090151

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    new-instance v5, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$2;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$2;-><init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const v9, 0x7f0902d5

    const v8, 0x7f0902d1

    const/4 v7, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "order_neg_pos_buttons"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    :goto_0
    const-string v5, "order_neg_pos_buttons"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    :goto_1
    const/4 v5, 0x4

    invoke-interface {p1, v3, v5, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_2

    move v5, v4

    :goto_2
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v5, 0x3

    invoke-interface {p1, v3, v5, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0201b1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v5, 0x2

    invoke-interface {p1, v3, v5, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_3

    move v5, v4

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3, v4, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0201b4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v3

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v7, 0x0

    const v3, 0x7f040013

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getActivity()Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    const v3, 0x7f0a0040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    if-nez v3, :cond_0

    const-string v3, "EditAutoRejectScreen"

    const-string v4, "onCreateView() - editBox is null !!"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    new-instance v4, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;-><init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$4;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$4;-><init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v3, 0x7f0a0041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->searchButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->searchButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$5;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$5;-><init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "UPDATE_MODE"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->update_MODE:Z

    iget-boolean v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->update_MODE:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "UPDATE_ID"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->update_ID:I

    const-string v3, "MATCH_MODE"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->match_MODE:I

    const-string v3, "SELECT_NUMBER"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->select_NUM:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->select_NUM:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->previous_NUM:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->select_NUM:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->select_NUM:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->select_NUM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->mContentURI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    const-string v0, "EditAutoRejectScreen"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    const-string v0, "EditAutoRejectScreen"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->clickSaveBtn(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->clickCancelBtn(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .param p1    # Landroid/view/Menu;

    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_0

    move v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_3

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_2

    move v4, v3

    :cond_2
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string v1, "EditAutoRejectScreen"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    iget-boolean v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->isDialogCreated:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$6;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$6;-><init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0902dd

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v1, 0x7f090789

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    return-void
.end method
