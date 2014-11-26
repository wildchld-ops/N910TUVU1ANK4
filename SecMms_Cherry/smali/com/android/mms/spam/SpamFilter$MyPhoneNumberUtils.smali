.class Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;
.super Landroid/telephony/PhoneNumberUtils;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SpamFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPhoneNumberUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
.field private static final CCC_LENGTH:I

.field private static final COUNTRY_CALLING_CALL:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    sget-object v0, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->CCC_LENGTH:I

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    return-void
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt p2, p1, :cond_3

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_2

    if-eqz v0, :cond_0

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    :goto_0
    return v18

    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    invoke-static/range {p1 .. p2}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    iget v0, v6, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    const/16 v18, 0x0

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    const/4 v5, 0x1

    iget v10, v6, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    iget v11, v7, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    if-lt v4, v11, :cond_f

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v8}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7

    add-int/lit8 v3, v3, -0x1

    const/4 v14, 0x1

    :cond_7
    invoke-static {v9}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8

    add-int/lit8 v4, v4, -0x1

    const/4 v14, 0x1

    :cond_8
    if-nez v14, :cond_6

    if-eq v8, v9, :cond_e

    const/16 v18, 0x0

    goto :goto_0

    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    const/4 v13, 0x0

    goto :goto_1

    :cond_a
    if-eqz v6, :cond_c

    iget v10, v6, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    iget v11, v7, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    if-ltz v15, :cond_b

    move v10, v15

    const/16 v16, 0x1

    goto :goto_3

    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    if-ltz v15, :cond_5

    move v11, v15

    const/16 v17, 0x1

    goto :goto_1

    :cond_e
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_f
    if-eqz v13, :cond_17

    if-eqz v16, :cond_10

    if-le v10, v3, :cond_11

    :cond_10
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_13

    :cond_11
    if-eqz p2, :cond_12

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_13
    if-eqz v17, :cond_14

    if-le v11, v4, :cond_15

    :cond_14
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_1e

    :cond_15
    if-eqz p2, :cond_16

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_17
    if-nez v5, :cond_19

    const/4 v12, 0x1

    :goto_4
    if-lt v3, v10, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_18

    if-eqz v12, :cond_1a

    invoke-static {v8}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    const/4 v12, 0x0

    :cond_18
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_19
    const/4 v12, 0x0

    goto :goto_4

    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_1b
    :goto_5
    if-lt v4, v11, :cond_1e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    if-eqz v12, :cond_1d

    invoke-static {v9}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    const/4 v12, 0x0

    :cond_1c
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .param p0    # I

    if-lez p0, :cond_0

    sget v0, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0    # C

    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    return-object v6

    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_2

    const/4 v5, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-ne v1, v9, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    if-ne v1, v8, :cond_4

    if-eqz p1, :cond_0

    const/16 v5, 0x8

    goto :goto_2

    :cond_4
    const/16 v7, 0x38

    if-ne v1, v7, :cond_5

    if-eqz p1, :cond_0

    new-instance v6, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/4 v7, 0x7

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :pswitch_1
    if-ne v1, v9, :cond_6

    const/4 v5, 0x3

    goto :goto_2

    :cond_6
    if-ne v1, v8, :cond_7

    const/4 v5, 0x4

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :pswitch_2
    if-ne v1, v8, :cond_8

    const/4 v5, 0x5

    goto :goto_2

    :cond_8
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :pswitch_3
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-lez v4, :cond_d

    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    const/16 v7, 0x64

    if-ge v0, v7, :cond_9

    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    new-instance v6, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    :cond_a
    const/4 v7, 0x1

    if-eq v5, v7, :cond_b

    const/4 v7, 0x3

    if-eq v5, v7, :cond_b

    const/4 v7, 0x5

    if-ne v5, v7, :cond_c

    :cond_b
    const/4 v5, 0x6

    goto :goto_2

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_d
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :pswitch_4
    if-ne v1, v10, :cond_e

    const/16 v5, 0x9

    goto :goto_2

    :cond_e
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :pswitch_5
    if-ne v1, v10, :cond_0

    new-instance v6, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .param p0    # C

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # I

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_0

    :goto_1
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method
