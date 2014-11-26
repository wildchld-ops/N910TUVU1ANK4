.class public Lcom/android/settings/accessibility/LocalePreference;
.super Landroid/preference/ListPreference;
.source "LocalePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/util/Locale;
    .param p1    # [Ljava/lang/String;
    .param p2    # [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p2, v1

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 27
    .param p1    # Landroid/content/Context;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v22, 0x1070007

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    const v22, 0x1070008

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    const/4 v7, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v14, v0, [Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;

    const/4 v9, 0x0

    move v8, v7

    :goto_0
    move/from16 v0, v16

    if-ge v9, v0, :cond_5

    aget-object v15, v21, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v22, 0x5

    move/from16 v0, v22

    if-eq v13, v0, :cond_0

    move v7, v8

    :goto_1
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const/16 v22, 0x3

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/util/Locale;

    invoke-direct {v11, v12, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_1

    add-int/lit8 v7, v8, 0x1

    new-instance v22, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;

    invoke-virtual {v11, v11}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v14, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v22, v8, -0x1

    aget-object v17, v14, v22

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    const-string v23, "zz"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    add-int/lit8 v22, v8, -0x1

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/LocalePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->label:Ljava/lang/String;

    add-int/lit8 v7, v8, 0x1

    new-instance v22, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v11, v0, v1}, Lcom/android/settings/accessibility/LocalePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v14, v8

    goto/16 :goto_1

    :cond_2
    const-string v22, "zz_ZZ"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string v4, "[Developer] Accented English"

    :goto_2
    add-int/lit8 v7, v8, 0x1

    new-instance v22, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v11}, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v14, v8

    goto/16 :goto_1

    :cond_3
    const-string v22, "zz_ZY"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string v4, "[Developer] Fake Bi-Directional"

    goto :goto_2

    :cond_4
    invoke-virtual {v11, v11}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    add-int/lit8 v22, v8, 0x1

    move/from16 v0, v22

    new-array v5, v0, [Ljava/lang/CharSequence;

    add-int/lit8 v22, v8, 0x1

    move/from16 v0, v22

    new-array v6, v0, [Ljava/lang/CharSequence;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v14, v0, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    const/16 v22, 0x0

    const v23, 0x7f0909b0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    const/16 v22, 0x0

    const-string v23, ""

    aput-object v23, v6, v22

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_6

    aget-object v10, v14, v9

    add-int/lit8 v22, v9, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    add-int/lit8 v22, v9, 0x1

    iget-object v0, v10, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v22

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method
