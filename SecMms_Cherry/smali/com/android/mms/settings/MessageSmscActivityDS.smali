.class public Lcom/android/mms/settings/MessageSmscActivityDS;
.super Landroid/app/Activity;
.source "MessageSmscActivityDS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/settings/MessageSmscActivityDS$TabFactory;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final DEBUG:Z = true

.field private static final SAVE:I = 0x1

.field private static final SIM1:Ljava/lang/String; = "SIM1"

.field private static final SIM2:Ljava/lang/String; = "SIM2"

.field private static final SMSC_URI:Landroid/net/Uri;

.field private static final SMSC_URI2:Landroid/net/Uri;

.field private static Smsc1:Ljava/lang/String; = null

.field private static Smsc2:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MessageSmscActivityDS"

.field private static final mInsertedSimNum:I

.field private static mtabState:I

.field private static simActive1:Z

.field private static simActive2:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarAddListCancelButton:Landroid/widget/TextView;

.field private mActionbarAddListDoneButton:Landroid/widget/TextView;

.field private mActionbarAddListLayout:Landroid/widget/LinearLayout;

.field private mCommonSoftkeyLayout:Landroid/widget/RelativeLayout;

.field private mIsLandscape:Z

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuSave:Landroid/view/MenuItem;

.field private mSmscEditor:Landroid/widget/EditText;

.field private mTabSpec1:Landroid/widget/TabHost$TabSpec;

.field private mTabSpec2:Landroid/widget/TabHost$TabSpec;

.field private mTabs:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/settings/MessageSmscActivityDS;->mtabState:I

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/settings/MessageSmscActivityDS;->mInsertedSimNum:I

    const-string v0, "content://sms/smsc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/settings/MessageSmscActivityDS;->SMSC_URI:Landroid/net/Uri;

    const-string v0, "content://sms/smsc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/settings/MessageSmscActivityDS;->SMSC_URI2:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mCommonSoftkeyLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuSave:Landroid/view/MenuItem;

    iput-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuCancel:Landroid/view/MenuItem;

    return-void
.end method

.method private final LoadInitData()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "pref_key_manage_smsc_address"

    const-string v3, "Not Set"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    sget v2, Lcom/android/mms/settings/MessageSmscActivityDS;->mInsertedSimNum:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const-string v2, "pref_key_manage_smsc_address_sim2"

    const-string v3, "Not Set"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    sget-boolean v2, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive2:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private final UpdateSmsc()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v1, "Mms/MessageSmscActivityDS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(UpdateSmsc)simActive1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simActive2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive2:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget v1, Lcom/android/mms/settings/MessageSmscActivityDS;->mInsertedSimNum:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    const-string v1, "+"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    :goto_0
    const-string v1, "-"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0c00fa

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v13

    const v1, 0x7f0c00fa

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    const-string v1, "+"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f0c00fa

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "smsc"

    move-object/from16 v0, v16

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->SMSC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    const/4 v1, 0x1

    if-ne v11, v1, :cond_4

    const-string v1, "pref_key_manage_smsc_address"

    move-object/from16 v0, v16

    invoke-interface {v14, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_4
    const v1, 0x7f0c00fb

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    sget v1, Lcom/android/mms/settings/MessageSmscActivityDS;->mInsertedSimNum:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_13

    sget-boolean v1, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    if-eqz v1, :cond_13

    sget-boolean v1, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive2:Z

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    const-string v1, "Mms/MessageSmscActivityDS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSmsc Tab1 SIM1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    :goto_3
    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    :goto_4
    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_6
    const v1, 0x7f0c00fa

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    const-string v1, "Mms/MessageSmscActivityDS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSmsc Tab2 SIM2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    goto :goto_4

    :cond_a
    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_b

    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_d

    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    const v1, 0x7f0c00fa

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_d
    const/4 v11, -0x1

    const/4 v12, -0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "smsc"

    sget-object v2, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "smsc"

    sget-object v2, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->SMSC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/mms/settings/MessageSmscActivityDS;->SMSC_URI2:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    const-string v1, "Mms/MessageSmscActivityDS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSmsc SIM1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Mms/MessageSmscActivityDS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSmsc SIM2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v11, v1, :cond_e

    const/4 v1, 0x1

    if-ne v12, v1, :cond_e

    const-string v1, "pref_key_manage_smsc_address"

    sget-object v2, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_key_manage_smsc_address_sim2"

    sget-object v2, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x1

    if-ne v11, v1, :cond_11

    const-string v1, "pref_key_manage_smsc_address"

    sget-object v2, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_f
    :goto_5
    const/4 v1, 0x1

    if-ne v11, v1, :cond_10

    const/4 v1, 0x1

    if-eq v12, v1, :cond_12

    :cond_10
    const v1, 0x7f0c00fb

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_11
    const/4 v1, 0x1

    if-ne v12, v1, :cond_f

    const-string v1, "pref_key_manage_smsc_address_sim2"

    sget-object v2, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_13
    sget v1, Lcom/android/mms/settings/MessageSmscActivityDS;->mInsertedSimNum:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget-boolean v1, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    if-eqz v1, :cond_14

    sget-boolean v1, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive2:Z

    if-nez v1, :cond_0

    :cond_14
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "smsc"

    move-object/from16 v0, v16

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "+"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    :goto_6
    const-string v1, "-"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const v1, 0x7f0c00fa

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_15
    :goto_7
    sget-boolean v1, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    if-eqz v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->SMSC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    const/4 v1, 0x1

    if-ne v11, v1, :cond_18

    const-string v1, "pref_key_manage_smsc_address"

    move-object/from16 v0, v16

    invoke-interface {v14, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_16
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    goto :goto_6

    :cond_17
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_15

    const-string v1, "+"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const v1, 0x7f0c00fa

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_7

    :cond_18
    const v1, 0x7f0c00fb

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_19
    sget-boolean v1, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive2:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/settings/MessageSmscActivityDS;->SMSC_URI2:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    const/4 v1, 0x1

    if-ne v11, v1, :cond_1a

    const-string v1, "pref_key_manage_smsc_address_sim2"

    move-object/from16 v0, v16

    invoke-interface {v14, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_1a
    const v1, 0x7f0c00fb

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/TabHost;
    .locals 1
    .param p0    # Lcom/android/mms/settings/MessageSmscActivityDS;

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;

    sput-object p0, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/mms/settings/MessageSmscActivityDS;

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;

    sput-object p0, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    return-object p0
.end method

.method private final cancel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateActionBar()V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040003

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b003d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b003a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mIsLandscape:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const v5, 0x7f0c001e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mIsLandscape:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const v5, 0x7f0c0183

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuSave:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mIsLandscape:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuSave:Landroid/view/MenuItem;

    const v4, 0x7f020007

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mIsLandscape:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuCancel:Landroid/view/MenuItem;

    const v4, 0x7f0202d2

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4
    :goto_3
    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mIsLandscape:Z

    invoke-direct {p0}, Lcom/android/mms/settings/MessageSmscActivityDS;->updateActionBar()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const v6, 0x7f0b0394

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mIsLandscape:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive2:Z

    const-string v1, "Mms/MessageSmscActivityDS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(onCreate)simActive1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simActive2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive2:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/mms/settings/MessageSmscActivityDS;->mInsertedSimNum:I

    if-le v1, v2, :cond_0

    sget-boolean v1, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive2:Z

    if-nez v1, :cond_2

    :cond_0
    const v1, 0x7f0400ac

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    const v1, 0x7f0b0395

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mCommonSoftkeyLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mCommonSoftkeyLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/settings/MessageSmscActivityDS;->LoadInitData()V

    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const v1, 0x7f0400ad

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v1, 0x7f0b037f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/mms/settings/MessageSmscActivityDS;->LoadInitData()V

    iget-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    const-string v4, "SIM1"

    invoke-virtual {v1, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {p0, v3}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {p0, v3, v7, v3}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    const-string v4, "SIM2"

    invoke-virtual {v1, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {p0, v2, v7, v3}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    const-string v2, "SIM1"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    new-instance v0, Lcom/android/mms/settings/MessageSmscActivityDS$TabFactory;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/settings/MessageSmscActivityDS$TabFactory;-><init>(Lcom/android/mms/settings/MessageSmscActivityDS;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    new-instance v2, Lcom/android/mms/settings/MessageSmscActivityDS$1;

    invoke-direct {v2, p0}, Lcom/android/mms/settings/MessageSmscActivityDS$1;-><init>(Lcom/android/mms/settings/MessageSmscActivityDS;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/Menu;

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x2

    const v1, 0x7f0c0183

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0c00e1

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/settings/MessageSmscActivityDS;->UpdateSmsc()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/mms/settings/MessageSmscActivityDS;->cancel()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/Menu;

    const/4 v3, 0x6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x2

    const v1, 0x7f0c0183

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x1

    const v1, 0x7f0c00e1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuSave:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f0202d2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mMenuSave:Landroid/view/MenuItem;

    const v1, 0x7f0202d3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive2:Z

    sget v0, Lcom/android/mms/settings/MessageSmscActivityDS;->mInsertedSimNum:I

    if-le v0, v2, :cond_1

    sget-boolean v0, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive2:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v1, Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    const-string v1, "SIM1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_1
    const-string v0, "Mms/MessageSmscActivityDS"

    const-string v1, "onRestoreInstanceState START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget v3, Lcom/android/mms/settings/MessageSmscActivityDS;->mInsertedSimNum:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    sget-boolean v3, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive1:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/mms/settings/MessageSmscActivityDS;->simActive2:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    sget v3, Lcom/android/mms/settings/MessageSmscActivityDS;->mInsertedSimNum:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {p0, v2, v4, v5}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
