.class public Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest;
.super Landroid/app/ListActivity;
.source "FullLocalePickerTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;",
            ">;"
        }
    .end annotation

    const v0, 0x7f0400d0

    const v1, 0x7f0b0257

    invoke-static {p0, v0, v1}, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 20
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;",
            ">;"
        }
    .end annotation

    const/16 v17, 0x44

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "en_GB"

    aput-object v18, v13, v17

    const/16 v17, 0x1

    const-string v18, "en_US"

    aput-object v18, v13, v17

    const/16 v17, 0x2

    const-string v18, "en_AU"

    aput-object v18, v13, v17

    const/16 v17, 0x3

    const-string v18, "en_IE"

    aput-object v18, v13, v17

    const/16 v17, 0x4

    const-string v18, "en_NZ"

    aput-object v18, v13, v17

    const/16 v17, 0x5

    const-string v18, "en_ZA"

    aput-object v18, v13, v17

    const/16 v17, 0x6

    const-string v18, "ko_KR"

    aput-object v18, v13, v17

    const/16 v17, 0x7

    const-string v18, "de_DE"

    aput-object v18, v13, v17

    const/16 v17, 0x8

    const-string v18, "de_AT"

    aput-object v18, v13, v17

    const/16 v17, 0x9

    const-string v18, "de_CH"

    aput-object v18, v13, v17

    const/16 v17, 0xa

    const-string v18, "fr_FR"

    aput-object v18, v13, v17

    const/16 v17, 0xb

    const-string v18, "fr_BE"

    aput-object v18, v13, v17

    const/16 v17, 0xc

    const-string v18, "fr_CH"

    aput-object v18, v13, v17

    const/16 v17, 0xd

    const-string v18, "bg_BG"

    aput-object v18, v13, v17

    const/16 v17, 0xe

    const-string v18, "cs_CZ"

    aput-object v18, v13, v17

    const/16 v17, 0xf

    const-string v18, "da_DK"

    aput-object v18, v13, v17

    const/16 v17, 0x10

    const-string v18, "el_GR"

    aput-object v18, v13, v17

    const/16 v17, 0x11

    const-string v18, "es_ES"

    aput-object v18, v13, v17

    const/16 v17, 0x12

    const-string v18, "et_EE"

    aput-object v18, v13, v17

    const/16 v17, 0x13

    const-string v18, "fi_FI"

    aput-object v18, v13, v17

    const/16 v17, 0x14

    const-string v18, "ga_IE"

    aput-object v18, v13, v17

    const/16 v17, 0x15

    const-string v18, "hr_HR"

    aput-object v18, v13, v17

    const/16 v17, 0x16

    const-string v18, "hu_HU"

    aput-object v18, v13, v17

    const/16 v17, 0x17

    const-string v18, "is_IS"

    aput-object v18, v13, v17

    const/16 v17, 0x18

    const-string v18, "it_IT"

    aput-object v18, v13, v17

    const/16 v17, 0x19

    const-string v18, "lt_LT"

    aput-object v18, v13, v17

    const/16 v17, 0x1a

    const-string v18, "lv_LV"

    aput-object v18, v13, v17

    const/16 v17, 0x1b

    const-string v18, "mk_MK"

    aput-object v18, v13, v17

    const/16 v17, 0x1c

    const-string v18, "nb_NO"

    aput-object v18, v13, v17

    const/16 v17, 0x1d

    const-string v18, "nl_NL"

    aput-object v18, v13, v17

    const/16 v17, 0x1e

    const-string v18, "nl_BE"

    aput-object v18, v13, v17

    const/16 v17, 0x1f

    const-string v18, "pl_PL"

    aput-object v18, v13, v17

    const/16 v17, 0x20

    const-string v18, "pt_PT"

    aput-object v18, v13, v17

    const/16 v17, 0x21

    const-string v18, "ro_RO"

    aput-object v18, v13, v17

    const/16 v17, 0x22

    const-string v18, "sr_RS"

    aput-object v18, v13, v17

    const/16 v17, 0x23

    const-string v18, "sv_SE"

    aput-object v18, v13, v17

    const/16 v17, 0x24

    const-string v18, "tr_TR"

    aput-object v18, v13, v17

    const/16 v17, 0x25

    const-string v18, "ca_ES"

    aput-object v18, v13, v17

    const/16 v17, 0x26

    const-string v18, "eu_ES"

    aput-object v18, v13, v17

    const/16 v17, 0x27

    const-string v18, "gl_ES"

    aput-object v18, v13, v17

    const/16 v17, 0x28

    const-string v18, "kk_KZ"

    aput-object v18, v13, v17

    const/16 v17, 0x29

    const-string v18, "ru_RU"

    aput-object v18, v13, v17

    const/16 v17, 0x2a

    const-string v18, "sk_SK"

    aput-object v18, v13, v17

    const/16 v17, 0x2b

    const-string v18, "sl_SI"

    aput-object v18, v13, v17

    const/16 v17, 0x2c

    const-string v18, "uk_UA"

    aput-object v18, v13, v17

    const/16 v17, 0x2d

    const-string v18, "uz_UZ"

    aput-object v18, v13, v17

    const/16 v17, 0x2e

    const-string v18, "az_AZ"

    aput-object v18, v13, v17

    const/16 v17, 0x2f

    const-string v18, "hy_AM"

    aput-object v18, v13, v17

    const/16 v17, 0x30

    const-string v18, "ka_GE"

    aput-object v18, v13, v17

    const/16 v17, 0x31

    const-string v18, "zh_CN"

    aput-object v18, v13, v17

    const/16 v17, 0x32

    const-string v18, "zh_HK"

    aput-object v18, v13, v17

    const/16 v17, 0x33

    const-string v18, "zh_TW"

    aput-object v18, v13, v17

    const/16 v17, 0x34

    const-string v18, "ja_JP"

    aput-object v18, v13, v17

    const/16 v17, 0x35

    const-string v18, "en_PH"

    aput-object v18, v13, v17

    const/16 v17, 0x36

    const-string v18, "in_ID"

    aput-object v18, v13, v17

    const/16 v17, 0x37

    const-string v18, "ms_MY"

    aput-object v18, v13, v17

    const/16 v17, 0x38

    const-string v18, "th_TH"

    aput-object v18, v13, v17

    const/16 v17, 0x39

    const-string v18, "vi_VN"

    aput-object v18, v13, v17

    const/16 v17, 0x3a

    const-string v18, "zh_SG"

    aput-object v18, v13, v17

    const/16 v17, 0x3b

    const-string v18, "ar_AE"

    aput-object v18, v13, v17

    const/16 v17, 0x3c

    const-string v18, "fa_FA"

    aput-object v18, v13, v17

    const/16 v17, 0x3d

    const-string v18, "ur_PK"

    aput-object v18, v13, v17

    const/16 v17, 0x3e

    const-string v18, "ar_IL"

    aput-object v18, v13, v17

    const/16 v17, 0x3f

    const-string v18, "iw_IL"

    aput-object v18, v13, v17

    const/16 v17, 0x40

    const-string v18, "es_US"

    aput-object v18, v13, v17

    const/16 v17, 0x41

    const-string v18, "pt_BR"

    aput-object v18, v13, v17

    const/16 v17, 0x42

    const-string v18, "en_CA"

    aput-object v18, v13, v17

    const/16 v17, 0x43

    const-string v18, "fr_CA"

    aput-object v18, v13, v17

    invoke-static {v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v14, v13

    new-array v15, v14, [Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    const/4 v6, 0x0

    const-string v17, "FullLocalePickerTest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " FullLocalePickerTest origSize"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    move v7, v6

    :goto_0
    if-ge v8, v14, :cond_2

    aget-object v16, v13, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v11, v0, :cond_4

    const/16 v17, 0x0

    const/16 v18, 0x2

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v17, 0x3

    const/16 v18, 0x5

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/util/Locale;

    invoke-direct {v9, v10, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_0

    const-string v17, "FullLocalePickerTest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adding initial "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v7, 0x1

    new-instance v17, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v17, v15, v7

    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    goto :goto_0

    :cond_0
    const-string v17, "zz_ZZ"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v5, "Pseudo..."

    :goto_2
    const-string v17, "FullLocalePickerTest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adding "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v7, 0x1

    new-instance v17, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v9}, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v17, v15, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    new-array v12, v7, [Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3

    aget-object v17, v15, v8

    aput-object v17, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v17, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-object v17

    :cond_4
    move v6, v7

    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 4
    .param p0    # Ljava/util/Locale;

    :try_start_0
    const-string v2, "FullLocalePickerTest"

    const-string v3, " FullLocalePickerTest updateLocale"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object p0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1    # Landroid/widget/ListView;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J

    const-string v1, "FullLocalePickerTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FullLocalePickerTest onListItemClick position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    iget-object v0, v1, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest;->updateLocale(Ljava/util/Locale;)V

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "FullLocalePickerTest"

    const-string v1, " FullLocalePickerTest onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
