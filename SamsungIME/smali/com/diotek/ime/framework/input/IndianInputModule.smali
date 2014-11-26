.class public Lcom/diotek/ime/framework/input/IndianInputModule;
.super Ljava/lang/Object;
.source "IndianInputModule.java"


# static fields
.field public static final CONSONANT_KEYBOARD:Z = false

.field public static final HB_Script_Bengali:I = 0x2

.field public static final HB_Script_Devanagari:I = 0x1

.field public static final HB_Script_Gujarati:I = 0x7

.field public static final HB_Script_Gurmukhi:I = 0x6

.field public static final HB_Script_Kannada:I = 0x5

.field public static final HB_Script_Malayalam:I = 0x8

.field public static final HB_Script_Oriya:I = 0xa

.field public static final HB_Script_Sinhala:I = 0x9

.field public static final HB_Script_Tamil:I = 0x3

.field public static final HB_Script_Telugu:I = 0x4

.field public static IS_QVGA:Z = false

.field public static final MATRA_KEYBOARD:Z = true

.field public static final NORMAL_KEYBOARD:Z = false

.field public static final SHIFTED_KEYBOARD:Z = true

.field public static final VOWEL_ROW_1:I = 0x0

.field public static final VOWEL_ROW_2:I = 0x1

.field public static final VOWEL_ROW_3:I = 0x2

.field public static final VOWEL_ROW_4:I = 0x3

.field public static changeFromThirdMode:Z

.field public static instance:Lcom/diotek/ime/framework/input/IndianInputModule;

.field static multipleKeycode:Z


# instance fields
.field private c:Ljava/lang/CharSequence;

.field private ic:Landroid/view/inputmethod/InputConnection;

.field keyCombination:Z

.field private keyNumber:I

.field private keyboardState:Z

.field private langScriptId:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field mQwertyIndianInputModule:Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field mSwiftkeyQwertyIndianInputModule:Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

.field mXt9QwertyIndianInputModule:Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

.field private mXt9Version:I

.field private prevLangScriptId:I

.field primaryCode:I

.field vowelKeyShiftState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    sput-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    sput-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    new-instance v0, Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/IndianInputModule;->instance:Lcom/diotek/ime/framework/input/IndianInputModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mQwertyIndianInputModule:Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9QwertyIndianInputModule:Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mSwiftkeyQwertyIndianInputModule:Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    return-void
.end method

.method private checkCombination([I)Z
    .locals 4
    .param p1    # [I

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa30

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa39

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa35

    if-ne v2, v3, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa74

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method private getCurrentLangScriptId()I
    .locals 5

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_8
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_9
    const/16 v0, 0xa

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61730000 -> :sswitch_1
        0x626e0000 -> :sswitch_1
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x6b6e0000 -> :sswitch_3
        0x6d6c0000 -> :sswitch_4
        0x6d720000 -> :sswitch_0
        0x6e650000 -> :sswitch_0
        0x6f720000 -> :sswitch_9
        0x70610000 -> :sswitch_5
        0x73690000 -> :sswitch_6
        0x74610000 -> :sswitch_7
        0x74650000 -> :sswitch_8
    .end sparse-switch
.end method

.method public static getHBScrpt(I)I
    .locals 1
    .param p0    # I

    const/16 v0, 0x900

    if-lt p0, v0, :cond_0

    const/16 v0, 0x97f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x980

    if-lt p0, v0, :cond_1

    const/16 v0, 0x9ff

    if-gt p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v0, 0xb80

    if-lt p0, v0, :cond_2

    const/16 v0, 0xbff

    if-gt p0, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/16 v0, 0xc00

    if-lt p0, v0, :cond_3

    const/16 v0, 0xc7f

    if-gt p0, v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/16 v0, 0xc80

    if-lt p0, v0, :cond_4

    const/16 v0, 0xcff

    if-gt p0, v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const/16 v0, 0xa00

    if-lt p0, v0, :cond_5

    const/16 v0, 0xa7f

    if-gt p0, v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const/16 v0, 0xa80

    if-lt p0, v0, :cond_6

    const/16 v0, 0xaff

    if-gt p0, v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const/16 v0, 0xd00

    if-lt p0, v0, :cond_7

    const/16 v0, 0xd7f

    if-gt p0, v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const/16 v0, 0xd80

    if-lt p0, v0, :cond_8

    const/16 v0, 0xdff

    if-gt p0, v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xb00

    if-lt p0, v0, :cond_9

    const/16 v0, 0xb7f

    if-gt p0, v0, :cond_9

    const/16 v0, 0xa

    goto :goto_0

    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getHoldKeyCodeForSmallLcd(I)I
    .locals 10
    .param p1    # I

    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    move v1, p1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_1

    const/high16 v2, 0x68690000

    if-ne v0, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    const/16 v1, 0x915

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x924

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x91c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x936

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x95c

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x95d

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x95b

    goto :goto_0

    :pswitch_8
    const/16 v1, 0x95e

    goto :goto_0

    :pswitch_9
    const/16 v1, 0x915

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_a
    const/16 v1, 0x917

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_b
    const/16 v1, 0x919

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_c
    const/16 v1, 0x91f

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_d
    const/16 v1, 0x921

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_e
    const/16 v1, 0x926

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_f
    const/16 v1, 0x92c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_10
    const/16 v1, 0x926

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x14

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_2

    const/high16 v2, 0x6d720000

    if-ne v0, v2, :cond_2

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_11
    const/16 v1, 0x915

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_12
    const/16 v1, 0x91c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_13
    const/16 v1, 0x936

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x13

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_14
    const/16 v1, 0x936

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_15
    const/16 v1, 0x931

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_16
    const/16 v1, 0x924

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_17
    const/16 v1, 0x915

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_18
    const/16 v1, 0x917

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_19
    const/16 v1, 0x92a

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_1a
    const/16 v1, 0x92b

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_1b
    const/16 v1, 0x91f

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_1c
    const/16 v1, 0x921

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_1d
    const/16 v1, 0x926

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_1e
    const/16 v1, 0x92c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_1f
    const/16 v1, 0x92d

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_20
    const/16 v1, 0x926

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x14

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_21
    const/16 v1, 0x937

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x15

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_3

    const/high16 v2, 0x6e650000

    if-ne v0, v2, :cond_3

    packed-switch p1, :pswitch_data_2

    :pswitch_22
    goto/16 :goto_0

    :pswitch_23
    const/16 v1, 0x915

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_24
    const/16 v1, 0x91c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_25
    const/16 v1, 0x91e

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x12

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_26
    const/16 v1, 0x936

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x13

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_27
    const/16 v1, 0x936

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_28
    const/16 v1, 0x931

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_29
    const/16 v1, 0x95b

    goto/16 :goto_0

    :pswitch_2a
    const/16 v1, 0x95e

    goto/16 :goto_0

    :pswitch_2b
    const/16 v1, 0x915

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_2c
    const/16 v1, 0x917

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_2d
    const/16 v1, 0x919

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_2e
    const/16 v1, 0x91f

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_2f
    const/16 v1, 0x921

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_30
    const/16 v1, 0x926

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_31
    const/16 v1, 0x92c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_32
    const/16 v1, 0x926

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x14

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_4

    const/high16 v2, 0x626e0000

    if-ne v0, v2, :cond_4

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_33
    const/16 v1, 0x995

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_34
    const/16 v1, 0x9dc

    goto/16 :goto_0

    :pswitch_35
    const/16 v1, 0x9dd

    goto/16 :goto_0

    :pswitch_36
    const/16 v1, 0x9df

    goto/16 :goto_0

    :pswitch_37
    const/16 v1, 0x995

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_38
    const/16 v1, 0x997

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_39
    const/16 v1, 0x99f

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_3a
    const/16 v1, 0x9a4

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_3b
    const/16 v1, 0x9aa

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_3c
    const/16 v1, 0x9b6

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_3d
    const/16 v1, 0x9b8

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_3e
    const/16 v1, 0x9a8

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_3f
    const/16 v1, 0x9b7

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_40
    const/16 v1, 0x9b8

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_41
    const/16 v1, 0x9a6

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_42
    const/16 v1, 0x9a8

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v8, :cond_5

    packed-switch p1, :pswitch_data_4

    :pswitch_43
    goto/16 :goto_0

    :pswitch_44
    const/16 v1, 0xa95

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_45
    const/16 v1, 0xa9c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_46
    const/16 v1, 0xab6

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_47
    const/16 v1, 0xa95

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_48
    const/16 v1, 0xa97

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_49
    const/16 v1, 0xa9f

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_4a
    const/16 v1, 0xaa1

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_4b
    const/16 v1, 0xaa4

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_4c
    const/16 v1, 0xaa6

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_4d
    const/16 v1, 0xaa7

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_4e
    const/16 v1, 0xaaa

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_4f
    const/16 v1, 0xaac

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_50
    const/16 v1, 0xaad

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_51
    const/16 v1, 0xaa6

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_52
    const/16 v1, 0xaa6

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_53
    const/16 v1, 0xab6

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/16 v1, 0xa5c

    goto/16 :goto_0

    :sswitch_1
    const/16 v1, 0xa36

    goto/16 :goto_0

    :sswitch_2
    const/16 v1, 0xa59

    goto/16 :goto_0

    :sswitch_3
    const/16 v1, 0xa5b

    goto/16 :goto_0

    :sswitch_4
    const/16 v1, 0xa28

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_5
    const/16 v1, 0xa32

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_6
    const/16 v1, 0xa5c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_7
    const/16 v1, 0xa15

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_8
    const/16 v1, 0xa17

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_9
    const/16 v1, 0xa1f

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_a
    const/16 v1, 0xa21

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_b
    const/16 v1, 0xa24

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_c
    const/16 v1, 0xa26

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_d
    const/16 v1, 0xa2a

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_e
    const/16 v1, 0xa2b

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_f
    const/16 v1, 0xa36

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_10
    const/16 v1, 0xa38

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v7, :cond_7

    packed-switch p1, :pswitch_data_5

    :pswitch_54
    goto/16 :goto_0

    :pswitch_55
    const/16 v1, 0xbcd

    goto/16 :goto_0

    :pswitch_56
    const/16 v1, 0xbbe

    goto/16 :goto_0

    :pswitch_57
    const/16 v1, 0xbbf

    goto/16 :goto_0

    :pswitch_58
    const/16 v1, 0xbc0

    goto/16 :goto_0

    :pswitch_59
    const/16 v1, 0xbc1

    goto/16 :goto_0

    :pswitch_5a
    const/16 v1, 0xbc2

    goto/16 :goto_0

    :pswitch_5b
    const/16 v1, 0xbc6

    goto/16 :goto_0

    :pswitch_5c
    const/16 v1, 0xbc7

    goto/16 :goto_0

    :pswitch_5d
    const/16 v1, 0xbc8

    goto/16 :goto_0

    :pswitch_5e
    const/16 v1, 0xbca

    goto/16 :goto_0

    :pswitch_5f
    const/16 v1, 0xbcb

    goto/16 :goto_0

    :pswitch_60
    const/16 v1, 0xbcc

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    packed-switch p1, :pswitch_data_6

    :pswitch_61
    goto/16 :goto_0

    :pswitch_62
    const/16 v1, 0xc95

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_63
    const/16 v1, 0xca4

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_64
    const/16 v1, 0xc9c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_65
    const/16 v1, 0xc95

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_66
    const/16 v1, 0xc97

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_67
    const/16 v1, 0xcb9

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_68
    const/16 v1, 0xca6

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_69
    const/16 v1, 0xcb5

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_6a
    const/16 v1, 0xcaa

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_6b
    const/16 v1, 0xcac

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_6c
    const/16 v1, 0xca6

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_6d
    const/16 v1, 0xcad

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x17

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_6e
    const/16 v1, 0xc9f

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x18

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_6f
    const/16 v1, 0xca6

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_70
    const/16 v1, 0xc9e

    goto/16 :goto_0

    :pswitch_71
    const/16 v1, 0xc9c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v9, :cond_9

    packed-switch p1, :pswitch_data_7

    goto/16 :goto_0

    :pswitch_72
    const/16 v1, 0xd15

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x11

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_73
    const/16 v1, 0xd28

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x12

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_74
    const/16 v1, 0xd28

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x13

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_75
    const/16 v1, 0xd2e

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_76
    const/16 v1, 0xd23

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x14

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_77
    const/16 v1, 0xd15

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x15

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_78
    const/16 v1, 0xd17

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x16

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_79
    const/16 v1, 0xd18

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x17

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7a
    const/16 v1, 0xd1c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x18

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7b
    const/16 v1, 0xd1f

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x19

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7c
    const/16 v1, 0xd21

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x1a

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7d
    const/16 v1, 0xd24

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x1b

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7e
    const/16 v1, 0xd26

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x1c

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7f
    const/16 v1, 0xd2a

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x1d

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_80
    const/16 v1, 0xd90

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x1e

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_81
    const/16 v1, 0xd9a

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x1f

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_82
    const/16 v1, 0xd9c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x20

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_a

    const/high16 v2, 0x61730000

    if-ne v0, v2, :cond_a

    packed-switch p1, :pswitch_data_8

    goto/16 :goto_0

    :pswitch_83
    const/16 v1, 0x995

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_84
    const/16 v1, 0x9dc

    goto/16 :goto_0

    :pswitch_85
    const/16 v1, 0x9dd

    goto/16 :goto_0

    :pswitch_86
    const/16 v1, 0x995

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_87
    const/16 v1, 0x997

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_88
    const/16 v1, 0x99f

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_89
    const/16 v1, 0x9a4

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_8a
    const/16 v1, 0x9aa

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x23

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_8b
    const/16 v1, 0x9b6

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_8c
    const/16 v1, 0x9b8

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_8d
    const/16 v1, 0x9a8

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_8e
    const/16 v1, 0x9b7

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_8f
    const/16 v1, 0x9a8

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x22

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_90
    const/16 v1, 0x9a8

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x21

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_91
    const/16 v1, 0x9ae

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x20

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_92
    const/16 v1, 0x99c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x18

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_93
    const/16 v1, 0x99e

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x17

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_11
    const/16 v1, 0xb39

    goto/16 :goto_0

    :sswitch_12
    const/16 v1, 0xb15

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_13
    const/16 v1, 0xb5f

    goto/16 :goto_0

    :sswitch_14
    const/16 v1, 0xb71

    goto/16 :goto_0

    :sswitch_15
    const/16 v1, 0xb15

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_16
    const/16 v1, 0xb17

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_17
    const/16 v1, 0xb1f

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_18
    const/16 v1, 0xb26

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x11

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_19
    const/16 v1, 0xb27

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x12

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_1a
    const/16 v1, 0xb2a

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x13

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_1b
    const/16 v1, 0xb2c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x14

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_1c
    const/16 v1, 0xb2d

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x15

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_1d
    const/16 v1, 0xb36

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x16

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_1e
    const/16 v1, 0xb38

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x17

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_1f
    const/16 v1, 0xb28

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x18

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_20
    const/16 v1, 0xb28

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x19

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_c

    packed-switch p1, :pswitch_data_9

    :pswitch_94
    goto/16 :goto_0

    :pswitch_95
    const/16 v1, 0xda4

    goto/16 :goto_0

    :pswitch_96
    const/16 v1, 0xdbb

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_97
    const/16 v1, 0xdac

    goto/16 :goto_0

    :pswitch_98
    const/16 v1, 0xd9f

    goto/16 :goto_0

    :pswitch_99
    const/16 v1, 0xda5

    goto/16 :goto_0

    :pswitch_9a
    const/16 v1, 0xda6

    goto/16 :goto_0

    :pswitch_9b
    const/16 v1, 0xdb3

    goto/16 :goto_0

    :pswitch_9c
    const/16 v1, 0xdb9

    goto/16 :goto_0

    :pswitch_9d
    const/16 v1, 0xd9a

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_9e
    const/16 v1, 0xd9c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_9f
    const/16 v1, 0xdad

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_a0
    const/16 v1, 0xdaf

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_a1
    const/16 v1, 0xda7

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_a2
    const/16 v1, 0xdb5

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_a3
    const/16 v1, 0xdb4

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x11

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_a4
    const/16 v1, 0xdc1

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x12

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_a5
    const/16 v1, 0xdc3

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_c
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    packed-switch p1, :pswitch_data_a

    :pswitch_a6
    goto/16 :goto_0

    :pswitch_a7
    const/16 v1, 0xc15

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_a8
    const/16 v1, 0xc15

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_a9
    const/16 v1, 0xc16

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_aa
    const/16 v1, 0xc17

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_ab
    const/16 v1, 0xc18

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_ac
    const/16 v1, 0xc1f

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_ad
    const/16 v1, 0xc21

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_ae
    const/16 v1, 0xc24

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_af
    const/16 v1, 0xc26

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_b0
    const/16 v1, 0xc28

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_b1
    const/16 v1, 0xc2a

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_b2
    const/16 v1, 0xc2c

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_b3
    const/16 v1, 0xc2d

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_b4
    const/16 v1, 0xc35

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_b5
    const/16 v1, 0xc36

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_b6
    const/16 v1, 0xc38

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x915
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x915
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x915
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_22
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x995
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa95
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_43
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_43
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa05 -> :sswitch_0
        0xa15 -> :sswitch_5
        0xa16 -> :sswitch_6
        0xa17 -> :sswitch_7
        0xa18 -> :sswitch_8
        0xa19 -> :sswitch_9
        0xa1a -> :sswitch_a
        0xa1b -> :sswitch_b
        0xa1c -> :sswitch_c
        0xa1d -> :sswitch_d
        0xa1e -> :sswitch_e
        0xa1f -> :sswitch_f
        0xa20 -> :sswitch_10
        0xa38 -> :sswitch_3
        0xa39 -> :sswitch_4
        0xa72 -> :sswitch_2
        0xa73 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0xb85
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_54
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xc95
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_61
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_61
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xd15
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x995
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xb15 -> :sswitch_11
        0xb16 -> :sswitch_12
        0xb17 -> :sswitch_13
        0xb18 -> :sswitch_14
        0xb19 -> :sswitch_15
        0xb1a -> :sswitch_16
        0xb1b -> :sswitch_17
        0xb1c -> :sswitch_18
        0xb1d -> :sswitch_19
        0xb1e -> :sswitch_1a
        0xb1f -> :sswitch_1b
        0xb20 -> :sswitch_1c
        0xb23 -> :sswitch_1f
        0xb24 -> :sswitch_20
        0xb5c -> :sswitch_1d
        0xb5d -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0xd9a
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_94
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_94
        :pswitch_94
        :pswitch_94
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_94
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0xc15
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_a6
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_a6
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
    .end packed-switch
.end method

.method private getHoldKeyLabelForSmallLcd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p1    # Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move-object v2, p1

    iget-object v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e5553

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_1

    const/high16 v3, 0x68690000

    if-ne v1, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v2

    :pswitch_1
    const-string v2, "\u0915\u094d\u0937"

    goto :goto_0

    :pswitch_2
    const-string v2, "\u0924\u094d\u0930"

    goto :goto_0

    :pswitch_3
    const-string v2, "\u091c\u094d\u091e"

    goto :goto_0

    :pswitch_4
    const-string v2, "\u0936\u094d\u0930"

    goto :goto_0

    :pswitch_5
    const-string v2, "\u095c"

    goto :goto_0

    :pswitch_6
    const-string v2, "\u095d"

    goto :goto_0

    :pswitch_7
    const-string v2, "\u095b"

    goto :goto_0

    :pswitch_8
    const-string v2, "\u095e"

    goto :goto_0

    :pswitch_9
    const-string v2, "\u0915\u094d\u0930"

    goto :goto_0

    :pswitch_a
    const-string v2, "\u0917\u094d\u0930"

    goto :goto_0

    :pswitch_b
    const-string v2, "\u092a\u094d\u0930"

    goto :goto_0

    :pswitch_c
    const-string v2, "\u091f\u094d\u0930"

    goto :goto_0

    :pswitch_d
    const-string v2, "\u0921\u094d\u0930"

    goto :goto_0

    :pswitch_e
    const-string v2, "\u0926\u094d\u0930"

    goto :goto_0

    :pswitch_f
    const-string v2, "\u092c\u094d\u0930"

    goto :goto_0

    :pswitch_10
    const-string v2, "\u0926\u094d\u0927"

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_2

    const/high16 v3, 0x6d720000

    if-ne v1, v3, :cond_2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_11
    const-string v2, "\u0915\u094d\u0937"

    goto :goto_0

    :pswitch_12
    const-string v2, "\u091c\u094d\u091e"

    goto :goto_0

    :pswitch_13
    const-string v2, "\u0936\u094d\u0935"

    goto :goto_0

    :pswitch_14
    const-string v2, "\u0936\u094d\u0930"

    goto :goto_0

    :pswitch_15
    const-string v2, "\u0931\u094d\u092f"

    goto :goto_0

    :pswitch_16
    const-string v2, "\u0924\u094d\u0930"

    goto :goto_0

    :pswitch_17
    const-string v2, "\u0915\u094d\u0930"

    goto :goto_0

    :pswitch_18
    const-string v2, "\u0917\u094d\u0930"

    goto :goto_0

    :pswitch_19
    const-string v2, "\u092a\u094d\u0930"

    goto :goto_0

    :pswitch_1a
    const-string v2, "\u092b\u094d\u0930"

    goto :goto_0

    :pswitch_1b
    const-string v2, "\u091f\u094d\u0930"

    goto :goto_0

    :pswitch_1c
    const-string v2, "\u0921\u094d\u0930"

    goto :goto_0

    :pswitch_1d
    const-string v2, "\u0926\u094d\u0930"

    goto :goto_0

    :pswitch_1e
    const-string v2, "\u092c\u094d\u0930"

    goto :goto_0

    :pswitch_1f
    const-string v2, "\u092d\u094d\u0930"

    goto :goto_0

    :pswitch_20
    const-string v2, "\u0926\u094d\u0927"

    goto :goto_0

    :pswitch_21
    const-string v2, "\u0937\u094d\u091f\u094d\u0930"

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_3

    const/high16 v3, 0x6e650000

    if-ne v1, v3, :cond_3

    packed-switch v0, :pswitch_data_2

    :pswitch_22
    goto :goto_0

    :pswitch_23
    const-string v2, "\u0915\u094d\u0937"

    goto :goto_0

    :pswitch_24
    const-string v2, "\u091c\u094d\u091e"

    goto/16 :goto_0

    :pswitch_25
    const-string v2, "\u091e\u094d\u091c"

    goto/16 :goto_0

    :pswitch_26
    const-string v2, "\u0936\u094d\u0935"

    goto/16 :goto_0

    :pswitch_27
    const-string v2, "\u0936\u094d\u0930"

    goto/16 :goto_0

    :pswitch_28
    const-string v2, "\u0931\u094d\u092f"

    goto/16 :goto_0

    :pswitch_29
    const-string v2, "\u095b"

    goto/16 :goto_0

    :pswitch_2a
    const-string v2, "\u095e"

    goto/16 :goto_0

    :pswitch_2b
    const-string v2, "\u0915\u094d\u0930"

    goto/16 :goto_0

    :pswitch_2c
    const-string v2, "\u0917\u094d\u0930"

    goto/16 :goto_0

    :pswitch_2d
    const-string v2, "\u092a\u094d\u0930"

    goto/16 :goto_0

    :pswitch_2e
    const-string v2, "\u091f\u094d\u0930"

    goto/16 :goto_0

    :pswitch_2f
    const-string v2, "\u0921\u094d\u0930"

    goto/16 :goto_0

    :pswitch_30
    const-string v2, "\u0926\u094d\u0930"

    goto/16 :goto_0

    :pswitch_31
    const-string v2, "\u092c\u094d\u0930"

    goto/16 :goto_0

    :pswitch_32
    const-string v2, "\u0926\u094d\u0927"

    goto/16 :goto_0

    :cond_3
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v7, :cond_4

    const/high16 v3, 0x626e0000

    if-ne v1, v3, :cond_4

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_33
    const-string v2, "\u0995\u09cd\u09b7"

    goto/16 :goto_0

    :pswitch_34
    const-string v2, "\u09dc"

    goto/16 :goto_0

    :pswitch_35
    const-string v2, "\u09dd"

    goto/16 :goto_0

    :pswitch_36
    const-string v2, "\u09df"

    goto/16 :goto_0

    :pswitch_37
    const-string v2, "\u0995\u09cd\u09b0"

    goto/16 :goto_0

    :pswitch_38
    const-string v2, "\u0997\u09cd\u09b0"

    goto/16 :goto_0

    :pswitch_39
    const-string v2, "\u099f\u09cd\u09b0"

    goto/16 :goto_0

    :pswitch_3a
    const-string v2, "\u09a4\u09cd\u09b0"

    goto/16 :goto_0

    :pswitch_3b
    const-string v2, "\u09aa\u09cd\u09b0"

    goto/16 :goto_0

    :pswitch_3c
    const-string v2, "\u09b6\u09cd\u09b0"

    goto/16 :goto_0

    :pswitch_3d
    const-string v2, "\u09b8\u09cd\u09a4\u09cd\u09b0"

    goto/16 :goto_0

    :pswitch_3e
    const-string v2, "\u09a8\u09cd\u09a4\u09cd\u09b0"

    goto/16 :goto_0

    :pswitch_3f
    const-string v2, "\u09b7\u09cd\u099f\u09cd\u09b0"

    goto/16 :goto_0

    :pswitch_40
    const-string v2, "\u09b8\u09cd\u099f\u09cd\u09b0"

    goto/16 :goto_0

    :pswitch_41
    const-string v2, "\u09a6\u09cd\u09b0"

    goto/16 :goto_0

    :pswitch_42
    const-string v2, "\u09a8\u09cd\u09a6\u09cd\u09b0"

    goto/16 :goto_0

    :cond_4
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v7, :cond_5

    const/high16 v3, 0x61730000

    if-ne v1, v3, :cond_5

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_43
    const-string v2, "\u0995\u09cd\u09b7"

    goto/16 :goto_0

    :pswitch_44
    const-string v2, "\u09dc"

    goto/16 :goto_0

    :pswitch_45
    const-string v2, "\u09dd"

    goto/16 :goto_0

    :pswitch_46
    const-string v2, "\u0995\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_47
    const-string v2, "\u0997\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_48
    const-string v2, "\u099f\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_49
    const-string v2, "\u09a4\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_4a
    const-string v2, "\u09aa\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_4b
    const-string v2, "\u09b6\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_4c
    const-string v2, "\u09b8\u09cd\u09a4\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_4d
    const-string v2, "\u09a8\u09cd\u09a4\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_4e
    const-string v2, "\u09b7\u09cd\u099f\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_4f
    const-string v2, "\u09a8\u09cd\u09a6\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_50
    const-string v2, "\u09a8\u09cd\u09a7\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_51
    const-string v2, "\u09ae\u09cd\u09aa\u09cd\u09f0"

    goto/16 :goto_0

    :pswitch_52
    const-string v2, "\u099c\u09cd\u099e"

    goto/16 :goto_0

    :pswitch_53
    const-string v2, "\u099e\u09cd\u099c"

    goto/16 :goto_0

    :cond_5
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_6

    packed-switch v0, :pswitch_data_5

    :pswitch_54
    goto/16 :goto_0

    :pswitch_55
    const-string v2, "\u0a95\u0acd\u0ab7"

    goto/16 :goto_0

    :pswitch_56
    const-string v2, "\u0a9c\u0acd\u0a9e"

    goto/16 :goto_0

    :pswitch_57
    const-string v2, "\u0ab6\u0acd\u0ab0"

    goto/16 :goto_0

    :pswitch_58
    const-string v2, "\u0a95\u0acd\u0ab0"

    goto/16 :goto_0

    :pswitch_59
    const-string v2, "\u0a97\u0acd\u0ab0"

    goto/16 :goto_0

    :pswitch_5a
    const-string v2, "\u0a9f\u0acd\u0ab0"

    goto/16 :goto_0

    :pswitch_5b
    const-string v2, "\u0aa1\u0acd\u0ab0"

    goto/16 :goto_0

    :pswitch_5c
    const-string v2, "\u0aa4\u0acd\u0ab0"

    goto/16 :goto_0

    :pswitch_5d
    const-string v2, "\u0aa6\u0acd\u0ab0"

    goto/16 :goto_0

    :pswitch_5e
    const-string v2, "\u0aa7\u0acd\u0ab0"

    goto/16 :goto_0

    :pswitch_5f
    const-string v2, "\u0aaa\u0acd\u0ab0"

    goto/16 :goto_0

    :pswitch_60
    const-string v2, "\u0aac\u0acd\u0ab0"

    goto/16 :goto_0

    :pswitch_61
    const-string v2, "\u0aad\u0acd\u0ab0"

    goto/16 :goto_0

    :pswitch_62
    const-string v2, "\u0aa6\u0acd\u0aac"

    goto/16 :goto_0

    :pswitch_63
    const-string v2, "\u0aa6\u0acd\u0aa7"

    goto/16 :goto_0

    :pswitch_64
    const-string v2, "\u0ab6\u0acd\u0a9a"

    goto/16 :goto_0

    :cond_6
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "\u0a5c"

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "\u0a36"

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "\u0a59"

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "\u0a5b"

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "\u0a28\u0a4d\u0a39"

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "\u0a32\u0a4d\u0a39"

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "\u0a5c\u0a4d\u0a39"

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "\u0a15\u0a4d\u0a30"

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "\u0a17\u0a4d\u0a30"

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "\u0a1f\u0a4d\u0a30"

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "\u0a21\u0a4d\u0a30"

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "\u0a24\u0a4d\u0a30"

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "\u0a26\u0a4d\u0a30"

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "\u0a2a\u0a4d\u0a30"

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "\u0a2b\u0a4d\u0a30"

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "\u0a36\u0a4d\u0a30"

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "\u0a38\u0a4d\u0a30"

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    packed-switch v0, :pswitch_data_6

    :pswitch_65
    goto/16 :goto_0

    :pswitch_66
    const-string v2, "\u0bcd"

    goto/16 :goto_0

    :pswitch_67
    const-string v2, "\u0bbe"

    goto/16 :goto_0

    :pswitch_68
    const-string v2, "\u0bbf"

    goto/16 :goto_0

    :pswitch_69
    const-string v2, "\u0bc0"

    goto/16 :goto_0

    :pswitch_6a
    const-string v2, "\u0bc1"

    goto/16 :goto_0

    :pswitch_6b
    const-string v2, "\u0bc2"

    goto/16 :goto_0

    :pswitch_6c
    const-string v2, "\u0bc6"

    goto/16 :goto_0

    :pswitch_6d
    const-string v2, "\u0bc7"

    goto/16 :goto_0

    :pswitch_6e
    const-string v2, "\u0bc8"

    goto/16 :goto_0

    :pswitch_6f
    const-string v2, "\u0bca"

    goto/16 :goto_0

    :pswitch_70
    const-string v2, "\u0bcb"

    goto/16 :goto_0

    :pswitch_71
    const-string v2, "\u0bcc"

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    packed-switch v0, :pswitch_data_7

    :pswitch_72
    goto/16 :goto_0

    :pswitch_73
    const-string v2, "\u0c95\u0ccd\u0cb7"

    goto/16 :goto_0

    :pswitch_74
    const-string v2, "\u0ca4\u0ccd\u0cb0"

    goto/16 :goto_0

    :pswitch_75
    const-string v2, "\u0c9c\u0ccd\u0c9e"

    goto/16 :goto_0

    :pswitch_76
    const-string v2, "\u0c95\u0cc3"

    goto/16 :goto_0

    :pswitch_77
    const-string v2, "\u0c97\u0cc3"

    goto/16 :goto_0

    :pswitch_78
    const-string v2, "\u0cb9\u0cc3"

    goto/16 :goto_0

    :pswitch_79
    const-string v2, "\u0ca6\u0cc3"

    goto/16 :goto_0

    :pswitch_7a
    const-string v2, "\u0ca6\u0cc3"

    goto/16 :goto_0

    :pswitch_7b
    const-string v2, "\u0caa\u0ccd\u0cb0"

    goto/16 :goto_0

    :pswitch_7c
    const-string v2, "\u0cac\u0ccd\u0cb0"

    goto/16 :goto_0

    :pswitch_7d
    const-string v2, "\u0ca6\u0ccd\u0cb0"

    goto/16 :goto_0

    :pswitch_7e
    const-string v2, "\u0c9f\u0ccd\u0cb0"

    goto/16 :goto_0

    :pswitch_7f
    const-string v2, "\u0cad\u0ccd\u0cb0"

    goto/16 :goto_0

    :pswitch_80
    const-string v2, "\u0ca6\u0ccd\u0ca7"

    goto/16 :goto_0

    :pswitch_81
    const-string v2, "\u0c9e"

    goto/16 :goto_0

    :pswitch_82
    const-string v2, "\u0c9c\u0cbc"

    goto/16 :goto_0

    :cond_9
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_a

    packed-switch v0, :pswitch_data_8

    goto/16 :goto_0

    :pswitch_83
    const-string v2, "\u0d15\u0d4d\u0d37"

    goto/16 :goto_0

    :pswitch_84
    const-string v2, "\u0d28\u0d4d\u0d26"

    goto/16 :goto_0

    :pswitch_85
    const-string v2, "\u0d28\u0d4d\u0d24"

    goto/16 :goto_0

    :pswitch_86
    const-string v2, "\u0d2e\u0d4d\u0d2a"

    goto/16 :goto_0

    :pswitch_87
    const-string v2, "\u0d23\u0d4d\u0d21"

    goto/16 :goto_0

    :pswitch_88
    const-string v2, "\u0d15\u0d4d\u0d30"

    goto/16 :goto_0

    :pswitch_89
    const-string v2, "\u0d17\u0d4d\u0d30"

    goto/16 :goto_0

    :pswitch_8a
    const-string v2, "\u0d18\u0d4d\u0d30"

    goto/16 :goto_0

    :pswitch_8b
    const-string v2, "\u0d1c\u0d4d\u0d30"

    goto/16 :goto_0

    :pswitch_8c
    const-string v2, "\u0d1f\u0d4d\u0d30"

    goto/16 :goto_0

    :pswitch_8d
    const-string v2, "\u0d21\u0d4d\u0d30"

    goto/16 :goto_0

    :pswitch_8e
    const-string v2, "\u0d24\u0d4d\u0d30"

    goto/16 :goto_0

    :pswitch_8f
    const-string v2, "\u0d26\u0d4d\u0d30"

    goto/16 :goto_0

    :pswitch_90
    const-string v2, "\u0d2a\u0d4d\u0d30"

    goto/16 :goto_0

    :pswitch_91
    const-string v2, "\u0d2c\u0d4d\u0d30"

    goto/16 :goto_0

    :pswitch_92
    const-string v2, "\u0d36\u0d4d\u0d30"

    goto/16 :goto_0

    :pswitch_93
    const-string v2, "\u0d38\u0d4d\u0d30"

    goto/16 :goto_0

    :cond_a
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    packed-switch v0, :pswitch_data_9

    :pswitch_94
    goto/16 :goto_0

    :pswitch_95
    const-string v2, "\u0c15\u0c4d\u0c37"

    goto/16 :goto_0

    :pswitch_96
    const-string v2, "\u0c15\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_97
    const-string v2, "\u0c16\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_98
    const-string v2, "\u0c17\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_99
    const-string v2, "\u0c18\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_9a
    const-string v2, "\u0c1f\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_9b
    const-string v2, "\u0c21\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_9c
    const-string v2, "\u0c24\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_9d
    const-string v2, "\u0c26\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_9e
    const-string v2, "\u0c28\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_9f
    const-string v2, "\u0c2a\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_a0
    const-string v2, "\u0c2c\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_a1
    const-string v2, "\u0c2d\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_a2
    const-string v2, "\u0c35\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_a3
    const-string v2, "\u0c36\u0c4d\u0c30"

    goto/16 :goto_0

    :pswitch_a4
    const-string v2, "\u0c38\u0c4d\u0c30"

    goto/16 :goto_0

    :cond_b
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_c

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "\u0b39"

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "\u0b15\u0b4d\u0b37"

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "\u0b5f"

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "\u0b71"

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "\u0b15\u0b4d\u0b30"

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "\u0b17\u0b4d\u0b30"

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "\u0b1f\u0b4d\u0b30"

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "\u0b26\u0b4d\u0b30"

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "\u0b27\u0b4d\u0b30"

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "\u0b2a\u0b4d\u0b30"

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "\u0b2c\u0b4d\u0b30"

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "\u0b2d\u0b4d\u0b30"

    goto/16 :goto_0

    :sswitch_1d
    const-string v2, "\u0b36\u0b4d\u0b30"

    goto/16 :goto_0

    :sswitch_1e
    const-string v2, "\u0b38\u0b4d\u0b30"

    goto/16 :goto_0

    :sswitch_1f
    const-string v2, "\u0b28\u0b4d\u0b24"

    goto/16 :goto_0

    :sswitch_20
    const-string v2, "\u0b28\u0b4d\u0b26"

    goto/16 :goto_0

    :cond_c
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    packed-switch v0, :pswitch_data_a

    :pswitch_a5
    goto/16 :goto_0

    :pswitch_a6
    const-string v2, "\u0da4"

    goto/16 :goto_0

    :pswitch_a7
    const-string v2, "\u0dbb\u0dca"

    goto/16 :goto_0

    :pswitch_a8
    const-string v2, "\u0dac"

    goto/16 :goto_0

    :pswitch_a9
    const-string v2, "\u0d9f"

    goto/16 :goto_0

    :pswitch_aa
    const-string v2, "\u0da5"

    goto/16 :goto_0

    :pswitch_ab
    const-string v2, "\u0da6"

    goto/16 :goto_0

    :pswitch_ac
    const-string v2, "\u0db3"

    goto/16 :goto_0

    :pswitch_ad
    const-string v2, "\u0db9"

    goto/16 :goto_0

    :pswitch_ae
    const-string v2, "\u0d9a\u0dca\u200d\u0dbb"

    goto/16 :goto_0

    :pswitch_af
    const-string v2, "\u0d9c\u0dca\u200d\u0dbb"

    goto/16 :goto_0

    :pswitch_b0
    const-string v2, "\u0dad\u0dca\u200d\u0dbb"

    goto/16 :goto_0

    :pswitch_b1
    const-string v2, "\u0daf\u0dca\u200d\u0dbb"

    goto/16 :goto_0

    :pswitch_b2
    const-string v2, "\u0da7\u0dca\u200d\u0dbb"

    goto/16 :goto_0

    :pswitch_b3
    const-string v2, "\u0db5\u0dca\u200d\u0dbb"

    goto/16 :goto_0

    :pswitch_b4
    const-string v2, "\u0db4\u0dca\u200d\u0dbb"

    goto/16 :goto_0

    :pswitch_b5
    const-string v2, "\u0dc1\u0dca\u200d\u0dbb"

    goto/16 :goto_0

    :pswitch_b6
    const-string v2, "\u0dc3\u0dca\u200d\u0dbb"

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x915
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x915
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x915
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_22
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x995
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x995
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa95
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_54
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_54
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa05 -> :sswitch_0
        0xa15 -> :sswitch_5
        0xa16 -> :sswitch_6
        0xa17 -> :sswitch_7
        0xa18 -> :sswitch_8
        0xa19 -> :sswitch_9
        0xa1a -> :sswitch_a
        0xa1b -> :sswitch_b
        0xa1c -> :sswitch_c
        0xa1d -> :sswitch_d
        0xa1e -> :sswitch_e
        0xa1f -> :sswitch_f
        0xa20 -> :sswitch_10
        0xa38 -> :sswitch_3
        0xa39 -> :sswitch_4
        0xa72 -> :sswitch_2
        0xa73 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0xb85
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_65
        :pswitch_6f
        :pswitch_70
        :pswitch_71
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc95
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_72
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_72
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xd15
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xc15
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_94
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_94
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xb15 -> :sswitch_11
        0xb16 -> :sswitch_12
        0xb17 -> :sswitch_13
        0xb18 -> :sswitch_14
        0xb19 -> :sswitch_15
        0xb1a -> :sswitch_16
        0xb1b -> :sswitch_17
        0xb1c -> :sswitch_18
        0xb1d -> :sswitch_19
        0xb1e -> :sswitch_1a
        0xb1f -> :sswitch_1b
        0xb20 -> :sswitch_1c
        0xb23 -> :sswitch_1f
        0xb24 -> :sswitch_20
        0xb5c -> :sswitch_1d
        0xb5d -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0xd9a
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_a5
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_a5
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
    .end packed-switch
.end method

.method public static getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/input/IndianInputModule;->instance:Lcom/diotek/ime/framework/input/IndianInputModule;

    return-object v0
.end method

.method private getMultipleKeyCodes()[I
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/high16 v2, 0x6d720000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x68690000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x6e650000

    if-ne v1, v2, :cond_2

    :cond_0
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    return-object v0

    :pswitch_0
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    goto :goto_0

    :pswitch_1
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    goto :goto_0

    :pswitch_2
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    goto :goto_0

    :pswitch_3
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    goto :goto_0

    :pswitch_4
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    goto :goto_0

    :pswitch_5
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    goto :goto_0

    :pswitch_6
    new-array v0, v5, [I

    fill-array-data v0, :array_6

    goto :goto_0

    :pswitch_7
    new-array v0, v5, [I

    fill-array-data v0, :array_7

    goto :goto_0

    :pswitch_8
    new-array v0, v5, [I

    fill-array-data v0, :array_8

    goto :goto_0

    :pswitch_9
    new-array v0, v5, [I

    fill-array-data v0, :array_9

    goto :goto_0

    :pswitch_a
    new-array v0, v5, [I

    fill-array-data v0, :array_a

    goto :goto_0

    :pswitch_b
    new-array v0, v5, [I

    fill-array-data v0, :array_b

    goto :goto_0

    :pswitch_c
    new-array v0, v5, [I

    fill-array-data v0, :array_c

    goto :goto_0

    :pswitch_d
    new-array v0, v5, [I

    fill-array-data v0, :array_d

    goto :goto_0

    :pswitch_e
    new-array v0, v5, [I

    fill-array-data v0, :array_e

    goto :goto_0

    :pswitch_f
    new-array v0, v6, [I

    fill-array-data v0, :array_f

    goto :goto_0

    :pswitch_10
    new-array v0, v6, [I

    fill-array-data v0, :array_10

    goto :goto_0

    :pswitch_11
    new-array v0, v5, [I

    fill-array-data v0, :array_11

    goto :goto_0

    :pswitch_12
    new-array v0, v5, [I

    fill-array-data v0, :array_12

    goto :goto_0

    :pswitch_13
    new-array v0, v5, [I

    fill-array-data v0, :array_13

    goto :goto_0

    :pswitch_14
    new-array v0, v7, [I

    fill-array-data v0, :array_14

    goto/16 :goto_0

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_4

    const/high16 v2, 0x626e0000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x61730000

    if-ne v1, v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_15
    new-array v0, v5, [I

    fill-array-data v0, :array_15

    goto/16 :goto_0

    :pswitch_16
    new-array v0, v5, [I

    fill-array-data v0, :array_16

    goto/16 :goto_0

    :pswitch_17
    new-array v0, v5, [I

    fill-array-data v0, :array_17

    goto/16 :goto_0

    :pswitch_18
    new-array v0, v5, [I

    fill-array-data v0, :array_18

    goto/16 :goto_0

    :pswitch_19
    new-array v0, v5, [I

    fill-array-data v0, :array_19

    goto/16 :goto_0

    :pswitch_1a
    new-array v0, v5, [I

    fill-array-data v0, :array_1a

    goto/16 :goto_0

    :pswitch_1b
    new-array v0, v5, [I

    fill-array-data v0, :array_1b

    goto/16 :goto_0

    :pswitch_1c
    new-array v0, v7, [I

    fill-array-data v0, :array_1c

    goto/16 :goto_0

    :pswitch_1d
    new-array v0, v7, [I

    fill-array-data v0, :array_1d

    goto/16 :goto_0

    :pswitch_1e
    new-array v0, v7, [I

    fill-array-data v0, :array_1e

    goto/16 :goto_0

    :pswitch_1f
    new-array v0, v7, [I

    fill-array-data v0, :array_1f

    goto/16 :goto_0

    :pswitch_20
    new-array v0, v5, [I

    fill-array-data v0, :array_20

    goto/16 :goto_0

    :pswitch_21
    new-array v0, v7, [I

    fill-array-data v0, :array_21

    goto/16 :goto_0

    :pswitch_22
    new-array v0, v6, [I

    fill-array-data v0, :array_22

    goto/16 :goto_0

    :pswitch_23
    new-array v0, v6, [I

    fill-array-data v0, :array_23

    goto/16 :goto_0

    :pswitch_24
    new-array v0, v6, [I

    fill-array-data v0, :array_24

    goto/16 :goto_0

    :pswitch_25
    new-array v0, v6, [I

    fill-array-data v0, :array_25

    goto/16 :goto_0

    :pswitch_26
    new-array v0, v6, [I

    fill-array-data v0, :array_26

    goto/16 :goto_0

    :pswitch_27
    new-array v0, v6, [I

    fill-array-data v0, :array_27

    goto/16 :goto_0

    :pswitch_28
    new-array v0, v6, [I

    fill-array-data v0, :array_28

    goto/16 :goto_0

    :pswitch_29
    new-array v0, v5, [I

    fill-array-data v0, :array_29

    goto/16 :goto_0

    :pswitch_2a
    new-array v0, v5, [I

    fill-array-data v0, :array_2a

    goto/16 :goto_0

    :pswitch_2b
    new-array v0, v5, [I

    fill-array-data v0, :array_2b

    goto/16 :goto_0

    :pswitch_2c
    new-array v0, v5, [I

    fill-array-data v0, :array_2c

    goto/16 :goto_0

    :pswitch_2d
    new-array v0, v7, [I

    fill-array-data v0, :array_2d

    goto/16 :goto_0

    :pswitch_2e
    new-array v0, v5, [I

    fill-array-data v0, :array_2e

    goto/16 :goto_0

    :pswitch_2f
    new-array v0, v5, [I

    fill-array-data v0, :array_2f

    goto/16 :goto_0

    :pswitch_30
    new-array v0, v5, [I

    fill-array-data v0, :array_30

    goto/16 :goto_0

    :pswitch_31
    new-array v0, v5, [I

    fill-array-data v0, :array_31

    goto/16 :goto_0

    :pswitch_32
    new-array v0, v5, [I

    fill-array-data v0, :array_32

    goto/16 :goto_0

    :pswitch_33
    new-array v0, v7, [I

    fill-array-data v0, :array_33

    goto/16 :goto_0

    :pswitch_34
    new-array v0, v7, [I

    fill-array-data v0, :array_34

    goto/16 :goto_0

    :pswitch_35
    new-array v0, v7, [I

    fill-array-data v0, :array_35

    goto/16 :goto_0

    :pswitch_36
    new-array v0, v7, [I

    fill-array-data v0, :array_36

    goto/16 :goto_0

    :pswitch_37
    new-array v0, v5, [I

    fill-array-data v0, :array_37

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_38
    new-array v0, v5, [I

    fill-array-data v0, :array_38

    goto/16 :goto_0

    :pswitch_39
    new-array v0, v5, [I

    fill-array-data v0, :array_39

    goto/16 :goto_0

    :pswitch_3a
    new-array v0, v5, [I

    fill-array-data v0, :array_3a

    goto/16 :goto_0

    :pswitch_3b
    new-array v0, v5, [I

    fill-array-data v0, :array_3b

    goto/16 :goto_0

    :pswitch_3c
    new-array v0, v5, [I

    fill-array-data v0, :array_3c

    goto/16 :goto_0

    :pswitch_3d
    new-array v0, v5, [I

    fill-array-data v0, :array_3d

    goto/16 :goto_0

    :pswitch_3e
    new-array v0, v5, [I

    fill-array-data v0, :array_3e

    goto/16 :goto_0

    :pswitch_3f
    new-array v0, v5, [I

    fill-array-data v0, :array_3f

    goto/16 :goto_0

    :pswitch_40
    new-array v0, v5, [I

    fill-array-data v0, :array_40

    goto/16 :goto_0

    :pswitch_41
    new-array v0, v5, [I

    fill-array-data v0, :array_41

    goto/16 :goto_0

    :pswitch_42
    new-array v0, v5, [I

    fill-array-data v0, :array_42

    goto/16 :goto_0

    :pswitch_43
    new-array v0, v5, [I

    fill-array-data v0, :array_43

    goto/16 :goto_0

    :pswitch_44
    new-array v0, v5, [I

    fill-array-data v0, :array_44

    goto/16 :goto_0

    :pswitch_45
    new-array v0, v5, [I

    fill-array-data v0, :array_45

    goto/16 :goto_0

    :pswitch_46
    new-array v0, v5, [I

    fill-array-data v0, :array_46

    goto/16 :goto_0

    :pswitch_47
    new-array v0, v5, [I

    fill-array-data v0, :array_47

    goto/16 :goto_0

    :pswitch_48
    new-array v0, v6, [I

    fill-array-data v0, :array_48

    goto/16 :goto_0

    :pswitch_49
    new-array v0, v6, [I

    fill-array-data v0, :array_49

    goto/16 :goto_0

    :pswitch_4a
    new-array v0, v6, [I

    fill-array-data v0, :array_4a

    goto/16 :goto_0

    :pswitch_4b
    new-array v0, v6, [I

    fill-array-data v0, :array_4b

    goto/16 :goto_0

    :pswitch_4c
    new-array v0, v5, [I

    fill-array-data v0, :array_4c

    goto/16 :goto_0

    :pswitch_4d
    new-array v0, v5, [I

    fill-array-data v0, :array_4d

    goto/16 :goto_0

    :pswitch_4e
    new-array v0, v5, [I

    fill-array-data v0, :array_4e

    goto/16 :goto_0

    :pswitch_4f
    new-array v0, v5, [I

    fill-array-data v0, :array_4f

    goto/16 :goto_0

    :pswitch_50
    new-array v0, v5, [I

    fill-array-data v0, :array_50

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v7, :cond_6

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_51
    new-array v0, v5, [I

    fill-array-data v0, :array_51

    goto/16 :goto_0

    :pswitch_52
    new-array v0, v5, [I

    fill-array-data v0, :array_52

    goto/16 :goto_0

    :pswitch_53
    new-array v0, v5, [I

    fill-array-data v0, :array_53

    goto/16 :goto_0

    :pswitch_54
    new-array v0, v6, [I

    fill-array-data v0, :array_54

    goto/16 :goto_0

    :pswitch_55
    new-array v0, v6, [I

    fill-array-data v0, :array_55

    goto/16 :goto_0

    :pswitch_56
    new-array v0, v6, [I

    fill-array-data v0, :array_56

    goto/16 :goto_0

    :pswitch_57
    new-array v0, v6, [I

    fill-array-data v0, :array_57

    goto/16 :goto_0

    :pswitch_58
    new-array v0, v6, [I

    fill-array-data v0, :array_58

    goto/16 :goto_0

    :pswitch_59
    new-array v0, v6, [I

    fill-array-data v0, :array_59

    goto/16 :goto_0

    :pswitch_5a
    new-array v0, v5, [I

    fill-array-data v0, :array_5a

    goto/16 :goto_0

    :pswitch_5b
    new-array v0, v5, [I

    fill-array-data v0, :array_5b

    goto/16 :goto_0

    :pswitch_5c
    new-array v0, v5, [I

    fill-array-data v0, :array_5c

    goto/16 :goto_0

    :pswitch_5d
    new-array v0, v5, [I

    fill-array-data v0, :array_5d

    goto/16 :goto_0

    :pswitch_5e
    new-array v0, v8, [I

    fill-array-data v0, :array_5e

    goto/16 :goto_0

    :pswitch_5f
    new-array v0, v6, [I

    fill-array-data v0, :array_5f

    goto/16 :goto_0

    :pswitch_60
    new-array v0, v6, [I

    fill-array-data v0, :array_60

    goto/16 :goto_0

    :pswitch_61
    new-array v0, v5, [I

    fill-array-data v0, :array_61

    goto/16 :goto_0

    :pswitch_62
    new-array v0, v6, [I

    fill-array-data v0, :array_62

    goto/16 :goto_0

    :pswitch_63
    new-array v0, v6, [I

    fill-array-data v0, :array_63

    goto/16 :goto_0

    :pswitch_64
    new-array v0, v5, [I

    fill-array-data v0, :array_64

    goto/16 :goto_0

    :pswitch_65
    new-array v0, v6, [I

    fill-array-data v0, :array_65

    goto/16 :goto_0

    :pswitch_66
    new-array v0, v5, [I

    fill-array-data v0, :array_66

    goto/16 :goto_0

    :pswitch_67
    new-array v0, v5, [I

    fill-array-data v0, :array_67

    goto/16 :goto_0

    :pswitch_68
    new-array v0, v5, [I

    fill-array-data v0, :array_68

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_69
    new-array v0, v5, [I

    fill-array-data v0, :array_69

    goto/16 :goto_0

    :pswitch_6a
    new-array v0, v5, [I

    fill-array-data v0, :array_6a

    goto/16 :goto_0

    :pswitch_6b
    new-array v0, v5, [I

    fill-array-data v0, :array_6b

    goto/16 :goto_0

    :pswitch_6c
    new-array v0, v5, [I

    fill-array-data v0, :array_6c

    goto/16 :goto_0

    :pswitch_6d
    new-array v0, v5, [I

    fill-array-data v0, :array_6d

    goto/16 :goto_0

    :pswitch_6e
    new-array v0, v5, [I

    fill-array-data v0, :array_6e

    goto/16 :goto_0

    :pswitch_6f
    new-array v0, v5, [I

    fill-array-data v0, :array_6f

    goto/16 :goto_0

    :pswitch_70
    new-array v0, v5, [I

    fill-array-data v0, :array_70

    goto/16 :goto_0

    :pswitch_71
    new-array v0, v5, [I

    fill-array-data v0, :array_71

    goto/16 :goto_0

    :pswitch_72
    new-array v0, v5, [I

    fill-array-data v0, :array_72

    goto/16 :goto_0

    :pswitch_73
    new-array v0, v6, [I

    fill-array-data v0, :array_73

    goto/16 :goto_0

    :pswitch_74
    new-array v0, v5, [I

    fill-array-data v0, :array_74

    goto/16 :goto_0

    :pswitch_75
    new-array v0, v5, [I

    fill-array-data v0, :array_75

    goto/16 :goto_0

    :pswitch_76
    new-array v0, v5, [I

    fill-array-data v0, :array_76

    goto/16 :goto_0

    :pswitch_77
    new-array v0, v5, [I

    fill-array-data v0, :array_77

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_78
    new-array v0, v6, [I

    fill-array-data v0, :array_78

    goto/16 :goto_0

    :pswitch_79
    new-array v0, v6, [I

    fill-array-data v0, :array_79

    goto/16 :goto_0

    :pswitch_7a
    new-array v0, v6, [I

    fill-array-data v0, :array_7a

    goto/16 :goto_0

    :pswitch_7b
    new-array v0, v6, [I

    fill-array-data v0, :array_7b

    goto/16 :goto_0

    :pswitch_7c
    new-array v0, v6, [I

    fill-array-data v0, :array_7c

    goto/16 :goto_0

    :pswitch_7d
    new-array v0, v6, [I

    fill-array-data v0, :array_7d

    goto/16 :goto_0

    :pswitch_7e
    new-array v0, v6, [I

    fill-array-data v0, :array_7e

    goto/16 :goto_0

    :pswitch_7f
    new-array v0, v6, [I

    fill-array-data v0, :array_7f

    goto/16 :goto_0

    :pswitch_80
    new-array v0, v6, [I

    fill-array-data v0, :array_80

    goto/16 :goto_0

    :pswitch_81
    new-array v0, v6, [I

    fill-array-data v0, :array_81

    goto/16 :goto_0

    :pswitch_82
    new-array v0, v6, [I

    fill-array-data v0, :array_82

    goto/16 :goto_0

    :pswitch_83
    new-array v0, v6, [I

    fill-array-data v0, :array_83

    goto/16 :goto_0

    :pswitch_84
    new-array v0, v6, [I

    fill-array-data v0, :array_84

    goto/16 :goto_0

    :pswitch_85
    new-array v0, v5, [I

    fill-array-data v0, :array_85

    goto/16 :goto_0

    :pswitch_86
    new-array v0, v5, [I

    fill-array-data v0, :array_86

    goto/16 :goto_0

    :pswitch_87
    new-array v0, v5, [I

    fill-array-data v0, :array_87

    goto/16 :goto_0

    :pswitch_88
    new-array v0, v5, [I

    fill-array-data v0, :array_88

    goto/16 :goto_0

    :pswitch_89
    new-array v0, v5, [I

    fill-array-data v0, :array_89

    goto/16 :goto_0

    :pswitch_8a
    new-array v0, v5, [I

    fill-array-data v0, :array_8a

    goto/16 :goto_0

    :pswitch_8b
    new-array v0, v5, [I

    fill-array-data v0, :array_8b

    goto/16 :goto_0

    :pswitch_8c
    new-array v0, v5, [I

    fill-array-data v0, :array_8c

    goto/16 :goto_0

    :pswitch_8d
    new-array v0, v5, [I

    fill-array-data v0, :array_8d

    goto/16 :goto_0

    :pswitch_8e
    new-array v0, v5, [I

    fill-array-data v0, :array_8e

    goto/16 :goto_0

    :pswitch_8f
    new-array v0, v5, [I

    fill-array-data v0, :array_8f

    goto/16 :goto_0

    :pswitch_90
    new-array v0, v5, [I

    fill-array-data v0, :array_90

    goto/16 :goto_0

    :pswitch_91
    new-array v0, v5, [I

    fill-array-data v0, :array_91

    goto/16 :goto_0

    :pswitch_92
    new-array v0, v5, [I

    fill-array-data v0, :array_92

    goto/16 :goto_0

    :pswitch_93
    new-array v0, v5, [I

    fill-array-data v0, :array_93

    goto/16 :goto_0

    :pswitch_94
    new-array v0, v5, [I

    fill-array-data v0, :array_94

    goto/16 :goto_0

    :pswitch_95
    new-array v0, v5, [I

    fill-array-data v0, :array_95

    goto/16 :goto_0

    :pswitch_96
    new-array v0, v5, [I

    fill-array-data v0, :array_96

    goto/16 :goto_0

    :pswitch_97
    new-array v0, v5, [I

    fill-array-data v0, :array_97

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_9

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_6

    goto/16 :goto_0

    :pswitch_98
    new-array v0, v5, [I

    fill-array-data v0, :array_98

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v8, :cond_a

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_7

    goto/16 :goto_0

    :pswitch_99
    new-array v0, v5, [I

    fill-array-data v0, :array_99

    goto/16 :goto_0

    :pswitch_9a
    new-array v0, v5, [I

    fill-array-data v0, :array_9a

    goto/16 :goto_0

    :pswitch_9b
    new-array v0, v5, [I

    fill-array-data v0, :array_9b

    goto/16 :goto_0

    :pswitch_9c
    new-array v0, v5, [I

    fill-array-data v0, :array_9c

    goto/16 :goto_0

    :pswitch_9d
    new-array v0, v5, [I

    fill-array-data v0, :array_9d

    goto/16 :goto_0

    :pswitch_9e
    new-array v0, v5, [I

    fill-array-data v0, :array_9e

    goto/16 :goto_0

    :pswitch_9f
    new-array v0, v5, [I

    fill-array-data v0, :array_9f

    goto/16 :goto_0

    :pswitch_a0
    new-array v0, v5, [I

    fill-array-data v0, :array_a0

    goto/16 :goto_0

    :pswitch_a1
    new-array v0, v5, [I

    fill-array-data v0, :array_a1

    goto/16 :goto_0

    :pswitch_a2
    new-array v0, v5, [I

    fill-array-data v0, :array_a2

    goto/16 :goto_0

    :pswitch_a3
    new-array v0, v5, [I

    fill-array-data v0, :array_a3

    goto/16 :goto_0

    :pswitch_a4
    new-array v0, v5, [I

    fill-array-data v0, :array_a4

    goto/16 :goto_0

    :pswitch_a5
    new-array v0, v5, [I

    fill-array-data v0, :array_a5

    goto/16 :goto_0

    :pswitch_a6
    new-array v0, v5, [I

    fill-array-data v0, :array_a6

    goto/16 :goto_0

    :pswitch_a7
    new-array v0, v5, [I

    fill-array-data v0, :array_a7

    goto/16 :goto_0

    :pswitch_a8
    new-array v0, v5, [I

    fill-array-data v0, :array_a8

    goto/16 :goto_0

    :pswitch_a9
    new-array v0, v6, [I

    fill-array-data v0, :array_a9

    goto/16 :goto_0

    :pswitch_aa
    new-array v0, v6, [I

    fill-array-data v0, :array_aa

    goto/16 :goto_0

    :pswitch_ab
    new-array v0, v5, [I

    fill-array-data v0, :array_ab

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_8

    goto/16 :goto_0

    :pswitch_ac
    new-array v0, v5, [I

    fill-array-data v0, :array_ac

    goto/16 :goto_0

    :pswitch_ad
    new-array v0, v5, [I

    fill-array-data v0, :array_ad

    goto/16 :goto_0

    :pswitch_ae
    new-array v0, v5, [I

    fill-array-data v0, :array_ae

    goto/16 :goto_0

    :pswitch_af
    new-array v0, v5, [I

    fill-array-data v0, :array_af

    goto/16 :goto_0

    :pswitch_b0
    new-array v0, v5, [I

    fill-array-data v0, :array_b0

    goto/16 :goto_0

    :pswitch_b1
    new-array v0, v5, [I

    fill-array-data v0, :array_b1

    goto/16 :goto_0

    :pswitch_b2
    new-array v0, v5, [I

    fill-array-data v0, :array_b2

    goto/16 :goto_0

    :pswitch_b3
    new-array v0, v5, [I

    fill-array-data v0, :array_b3

    goto/16 :goto_0

    :pswitch_b4
    new-array v0, v5, [I

    fill-array-data v0, :array_b4

    goto/16 :goto_0

    :pswitch_b5
    new-array v0, v5, [I

    fill-array-data v0, :array_b5

    goto/16 :goto_0

    :pswitch_b6
    new-array v0, v5, [I

    fill-array-data v0, :array_b6

    goto/16 :goto_0

    :pswitch_b7
    new-array v0, v5, [I

    fill-array-data v0, :array_b7

    goto/16 :goto_0

    :pswitch_b8
    new-array v0, v5, [I

    fill-array-data v0, :array_b8

    goto/16 :goto_0

    :pswitch_b9
    new-array v0, v5, [I

    fill-array-data v0, :array_b9

    goto/16 :goto_0

    :pswitch_ba
    new-array v0, v5, [I

    fill-array-data v0, :array_ba

    goto/16 :goto_0

    :pswitch_bb
    new-array v0, v5, [I

    fill-array-data v0, :array_bb

    goto/16 :goto_0

    :pswitch_bc
    new-array v0, v5, [I

    fill-array-data v0, :array_bc

    goto/16 :goto_0

    :pswitch_bd
    new-array v0, v5, [I

    fill-array-data v0, :array_bd

    goto/16 :goto_0

    :pswitch_be
    new-array v0, v5, [I

    fill-array-data v0, :array_be

    goto/16 :goto_0

    :pswitch_bf
    new-array v0, v5, [I

    fill-array-data v0, :array_bf

    goto/16 :goto_0

    :pswitch_c0
    new-array v0, v5, [I

    fill-array-data v0, :array_c0

    goto/16 :goto_0

    :pswitch_c1
    new-array v0, v5, [I

    fill-array-data v0, :array_c1

    goto/16 :goto_0

    :pswitch_c2
    new-array v0, v5, [I

    fill-array-data v0, :array_c2

    goto/16 :goto_0

    :pswitch_c3
    new-array v0, v5, [I

    fill-array-data v0, :array_c3

    goto/16 :goto_0

    :pswitch_c4
    new-array v0, v5, [I

    fill-array-data v0, :array_c4

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_9

    goto/16 :goto_0

    :pswitch_c5
    new-array v0, v6, [I

    fill-array-data v0, :array_c5

    goto/16 :goto_0

    :pswitch_c6
    new-array v0, v5, [I

    fill-array-data v0, :array_c6

    goto/16 :goto_0

    :pswitch_c7
    new-array v0, v5, [I

    fill-array-data v0, :array_c7

    goto/16 :goto_0

    :pswitch_c8
    new-array v0, v5, [I

    fill-array-data v0, :array_c8

    goto/16 :goto_0

    :pswitch_c9
    new-array v0, v5, [I

    fill-array-data v0, :array_c9

    goto/16 :goto_0

    :pswitch_ca
    new-array v0, v5, [I

    fill-array-data v0, :array_ca

    goto/16 :goto_0

    :pswitch_cb
    new-array v0, v5, [I

    fill-array-data v0, :array_cb

    goto/16 :goto_0

    :pswitch_cc
    new-array v0, v5, [I

    fill-array-data v0, :array_cc

    goto/16 :goto_0

    :pswitch_cd
    new-array v0, v5, [I

    fill-array-data v0, :array_cd

    goto/16 :goto_0

    :pswitch_ce
    new-array v0, v5, [I

    fill-array-data v0, :array_ce

    goto/16 :goto_0

    :pswitch_cf
    new-array v0, v8, [I

    fill-array-data v0, :array_cf

    goto/16 :goto_0

    :pswitch_d0
    new-array v0, v8, [I

    fill-array-data v0, :array_d0

    goto/16 :goto_0

    :pswitch_d1
    new-array v0, v8, [I

    fill-array-data v0, :array_d1

    goto/16 :goto_0

    :pswitch_d2
    new-array v0, v8, [I

    fill-array-data v0, :array_d2

    goto/16 :goto_0

    :pswitch_d3
    new-array v0, v8, [I

    fill-array-data v0, :array_d3

    goto/16 :goto_0

    :pswitch_d4
    new-array v0, v8, [I

    fill-array-data v0, :array_d4

    goto/16 :goto_0

    :pswitch_d5
    new-array v0, v8, [I

    fill-array-data v0, :array_d5

    goto/16 :goto_0

    :pswitch_d6
    new-array v0, v8, [I

    fill-array-data v0, :array_d6

    goto/16 :goto_0

    :pswitch_d7
    new-array v0, v8, [I

    fill-array-data v0, :array_d7

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :array_0
    .array-data 4
        0x915
        0x94d
        0x937
    .end array-data

    :array_1
    .array-data 4
        0x91c
        0x94d
        0x91e
    .end array-data

    :array_2
    .array-data 4
        0x936
        0x94d
        0x930
    .end array-data

    :array_3
    .array-data 4
        0x91c
        0x94d
        0x92f
    .end array-data

    :array_4
    .array-data 4
        0x924
        0x94d
        0x930
    .end array-data

    :array_5
    .array-data 4
        0x915
        0x94d
        0x930
    .end array-data

    :array_6
    .array-data 4
        0x917
        0x94d
        0x930
    .end array-data

    :array_7
    .array-data 4
        0x92a
        0x94d
        0x930
    .end array-data

    :array_8
    .array-data 4
        0x92b
        0x94d
        0x930
    .end array-data

    :array_9
    .array-data 4
        0x91f
        0x94d
        0x930
    .end array-data

    :array_a
    .array-data 4
        0x921
        0x94d
        0x930
    .end array-data

    :array_b
    .array-data 4
        0x926
        0x94d
        0x930
    .end array-data

    :array_c
    .array-data 4
        0x92c
        0x94d
        0x930
    .end array-data

    :array_d
    .array-data 4
        0x92d
        0x94d
        0x930
    .end array-data

    :array_e
    .array-data 4
        0x926
        0x94d
        0x927
    .end array-data

    :array_f
    .array-data 4
        0x94d
        0x930
    .end array-data

    :array_10
    .array-data 4
        0x930
        0x94d
    .end array-data

    :array_11
    .array-data 4
        0x91e
        0x94d
        0x91c
    .end array-data

    :array_12
    .array-data 4
        0x936
        0x94d
        0x935
    .end array-data

    :array_13
    .array-data 4
        0x926
        0x94d
        0x927
    .end array-data

    :array_14
    .array-data 4
        0x937
        0x94d
        0x91f
        0x94d
        0x930
    .end array-data

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
    .end packed-switch

    :array_15
    .array-data 4
        0x995
        0x9cd
        0x9b7
    .end array-data

    :array_16
    .array-data 4
        0x995
        0x9cd
        0x9b0
    .end array-data

    :array_17
    .array-data 4
        0x997
        0x9cd
        0x9b0
    .end array-data

    :array_18
    .array-data 4
        0x99f
        0x9cd
        0x9b0
    .end array-data

    :array_19
    .array-data 4
        0x9a4
        0x9cd
        0x9b0
    .end array-data

    :array_1a
    .array-data 4
        0x9aa
        0x9cd
        0x9b0
    .end array-data

    :array_1b
    .array-data 4
        0x9b6
        0x9cd
        0x9b0
    .end array-data

    :array_1c
    .array-data 4
        0x9b8
        0x9cd
        0x9a4
        0x9cd
        0x9b0
    .end array-data

    :array_1d
    .array-data 4
        0x9a8
        0x9cd
        0x9a4
        0x9cd
        0x9b0
    .end array-data

    :array_1e
    .array-data 4
        0x9b7
        0x9cd
        0x99f
        0x9cd
        0x9b0
    .end array-data

    :array_1f
    .array-data 4
        0x9b8
        0x9cd
        0x99f
        0x9cd
        0x9b0
    .end array-data

    :array_20
    .array-data 4
        0x9a6
        0x9cd
        0x9b0
    .end array-data

    :array_21
    .array-data 4
        0x9a8
        0x9cd
        0x9a6
        0x9cd
        0x9b0
    .end array-data

    :array_22
    .array-data 4
        0x9cd
        0x9b0
    .end array-data

    :array_23
    .array-data 4
        0x9b0
        0x9cd
    .end array-data

    :array_24
    .array-data 4
        0x9cd
        0x9af
    .end array-data

    :array_25
    .array-data 4
        0x985
        0x982
    .end array-data

    :array_26
    .array-data 4
        0x985
        0x981
    .end array-data

    :array_27
    .array-data 4
        0x993
        0x981
    .end array-data

    :array_28
    .array-data 4
        0x987
        0x982
    .end array-data

    :array_29
    .array-data 4
        0x986
        0x9af
        0x9be
    .end array-data

    :array_2a
    .array-data 4
        0x9b8
        0x9cd
        0x995
    .end array-data

    :array_2b
    .array-data 4
        0x99e
        0x9cd
        0x99c
    .end array-data

    :array_2c
    .array-data 4
        0x99c
        0x9cd
        0x99e
    .end array-data

    :array_2d
    .array-data 4
        0x9b8
        0x9cd
        0x995
        0x9cd
        0x9b0
    .end array-data

    :array_2e
    .array-data 4
        0x995
        0x9cd
        0x99f
    .end array-data

    :array_2f
    .array-data 4
        0x995
        0x9cd
        0x9a4
    .end array-data

    :array_30
    .array-data 4
        0x995
        0x9cd
        0x9b2
    .end array-data

    :array_31
    .array-data 4
        0x995
        0x9cd
        0x9b8
    .end array-data

    :array_32
    .array-data 4
        0x997
        0x9cd
        0x9a7
    .end array-data

    :array_33
    .array-data 4
        0x9b8
        0x9cd
        0x995
        0x9cd
        0x9f0
    .end array-data

    :array_34
    .array-data 4
        0x9ae
        0x9cd
        0x9aa
        0x9cd
        0x9f0
    .end array-data

    :array_35
    .array-data 4
        0x9a8
        0x9cd
        0x9a7
        0x9cd
        0x9f0
    .end array-data

    :array_36
    .array-data 4
        0x9a8
        0x9cd
        0x9a6
        0x9cd
        0x9f0
    .end array-data

    :array_37
    .array-data 4
        0x9aa
        0x9cd
        0x9f0
    .end array-data

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
    .end packed-switch

    :array_38
    .array-data 4
        0xa95
        0xacd
        0xab7
    .end array-data

    :array_39
    .array-data 4
        0xa9c
        0xacd
        0xa9e
    .end array-data

    :array_3a
    .array-data 4
        0xab6
        0xacd
        0xab0
    .end array-data

    :array_3b
    .array-data 4
        0xa95
        0xacd
        0xab0
    .end array-data

    :array_3c
    .array-data 4
        0xa97
        0xacd
        0xab0
    .end array-data

    :array_3d
    .array-data 4
        0xa9f
        0xacd
        0xab0
    .end array-data

    :array_3e
    .array-data 4
        0xaa1
        0xacd
        0xab0
    .end array-data

    :array_3f
    .array-data 4
        0xaa4
        0xacd
        0xab0
    .end array-data

    :array_40
    .array-data 4
        0xaa6
        0xacd
        0xab0
    .end array-data

    :array_41
    .array-data 4
        0xaa7
        0xacd
        0xab0
    .end array-data

    :array_42
    .array-data 4
        0xaaa
        0xacd
        0xab0
    .end array-data

    :array_43
    .array-data 4
        0xaac
        0xacd
        0xab0
    .end array-data

    :array_44
    .array-data 4
        0xaad
        0xacd
        0xab0
    .end array-data

    :array_45
    .array-data 4
        0xaa6
        0xacd
        0xaac
    .end array-data

    :array_46
    .array-data 4
        0xaa6
        0xacd
        0xaa7
    .end array-data

    :array_47
    .array-data 4
        0xab6
        0xacd
        0xa9a
    .end array-data

    :array_48
    .array-data 4
        0xacd
        0xab0
    .end array-data

    :array_49
    .array-data 4
        0xab0
        0xacd
    .end array-data

    :array_4a
    .array-data 4
        0xa85
        0xa82
    .end array-data

    :array_4b
    .array-data 4
        0xa85
        0xa83
    .end array-data

    :array_4c
    .array-data 4
        0xaa4
        0xacd
        0xab0
    .end array-data

    :array_4d
    .array-data 4
        0xaa6
        0xacd
        0xaae
    .end array-data

    :array_4e
    .array-data 4
        0xaa6
        0xacd
        0xaaf
    .end array-data

    :array_4f
    .array-data 4
        0xaa4
        0xacd
        0xaa4
    .end array-data

    :array_50
    .array-data 4
        0xaa4
        0xacd
        0xa95
    .end array-data

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
    .end packed-switch

    :array_51
    .array-data 4
        0xc95
        0xccd
        0xcb7
    .end array-data

    :array_52
    .array-data 4
        0xca4
        0xccd
        0xcb0
    .end array-data

    :array_53
    .array-data 4
        0xc9c
        0xccd
        0xc9e
    .end array-data

    :array_54
    .array-data 4
        0xc9c
        0xcbc
    .end array-data

    :array_55
    .array-data 4
        0xc95
        0xcc3
    .end array-data

    :array_56
    .array-data 4
        0xc97
        0xcc3
    .end array-data

    :array_57
    .array-data 4
        0xcb9
        0xcc3
    .end array-data

    :array_58
    .array-data 4
        0xca6
        0xcc3
    .end array-data

    :array_59
    .array-data 4
        0xcb5
        0xcc3
    .end array-data

    :array_5a
    .array-data 4
        0xcaa
        0xccd
        0xcb0
    .end array-data

    :array_5b
    .array-data 4
        0xcac
        0xccd
        0xcb0
    .end array-data

    :array_5c
    .array-data 4
        0xca6
        0xccd
        0xcb0
    .end array-data

    :array_5d
    .array-data 4
        0xca6
        0xccd
        0xca7
    .end array-data

    :array_5e
    .array-data 4
        0xcb6
        0xccd
        0xcb0
        0xcc0
    .end array-data

    :array_5f
    .array-data 4
        0xc85
        0xc82
    .end array-data

    :array_60
    .array-data 4
        0xc85
        0xc83
    .end array-data

    :array_61
    .array-data 4
        0xc9c
        0xccd
        0xc9e
    .end array-data

    :array_62
    .array-data 4
        0xc93
        0xce6
    .end array-data

    :array_63
    .array-data 4
        0xcb0
        0xccd
    .end array-data

    :array_64
    .array-data 4
        0xc9c
        0xcbc
        0xccd
    .end array-data

    :array_65
    .array-data 4
        0xcb3
        0xccd
    .end array-data

    :array_66
    .array-data 4
        0xc9c
        0xccd
        0xcbc
    .end array-data

    :array_67
    .array-data 4
        0xc9f
        0xccd
        0xcb0
    .end array-data

    :array_68
    .array-data 4
        0xcad
        0xccd
        0xcb0
    .end array-data

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
    .end packed-switch

    :array_69
    .array-data 4
        0xa28
        0xa4d
        0xa39
    .end array-data

    :array_6a
    .array-data 4
        0xa32
        0xa4d
        0xa39
    .end array-data

    :array_6b
    .array-data 4
        0xa5c
        0xa4d
        0xa39
    .end array-data

    :array_6c
    .array-data 4
        0xa38
        0xa4d
        0xa30
    .end array-data

    :array_6d
    .array-data 4
        0xa15
        0xa4d
        0xa30
    .end array-data

    :array_6e
    .array-data 4
        0xa17
        0xa4d
        0xa30
    .end array-data

    :array_6f
    .array-data 4
        0xa24
        0xa4d
        0xa30
    .end array-data

    :array_70
    .array-data 4
        0xa26
        0xa4d
        0xa30
    .end array-data

    :array_71
    .array-data 4
        0xa2a
        0xa4d
        0xa30
    .end array-data

    :array_72
    .array-data 4
        0xa2e
        0xa4d
        0xa30
    .end array-data

    :array_73
    .array-data 4
        0xa05
        0xa70
    .end array-data

    :array_74
    .array-data 4
        0xa1f
        0xa4d
        0xa30
    .end array-data

    :array_75
    .array-data 4
        0xa21
        0xa4d
        0xa30
    .end array-data

    :array_76
    .array-data 4
        0xa2b
        0xa4d
        0xa30
    .end array-data

    :array_77
    .array-data 4
        0xa36
        0xa4d
        0xa30
    .end array-data

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
    .end packed-switch

    :array_78
    .array-data 4
        0xd15
        0xd37
    .end array-data

    :array_79
    .array-data 4
        0xd15
        0xd30
    .end array-data

    :array_7a
    .array-data 4
        0xd17
        0xd30
    .end array-data

    :array_7b
    .array-data 4
        0xd18
        0xd30
    .end array-data

    :array_7c
    .array-data 4
        0xd1c
        0xd30
    .end array-data

    :array_7d
    .array-data 4
        0xd1f
        0xd30
    .end array-data

    :array_7e
    .array-data 4
        0xd21
        0xd30
    .end array-data

    :array_7f
    .array-data 4
        0xd24
        0xd30
    .end array-data

    :array_80
    .array-data 4
        0xd26
        0xd30
    .end array-data

    :array_81
    .array-data 4
        0xd2a
        0xd30
    .end array-data

    :array_82
    .array-data 4
        0xd2c
        0xd30
    .end array-data

    :array_83
    .array-data 4
        0xd36
        0xd30
    .end array-data

    :array_84
    .array-data 4
        0xd38
        0xd30
    .end array-data

    :array_85
    .array-data 4
        0xd31
        0xd4d
        0xd31
    .end array-data

    :array_86
    .array-data 4
        0xd19
        0xd4d
        0xd15
    .end array-data

    :array_87
    .array-data 4
        0xd2e
        0xd4d
        0xd2a
    .end array-data

    :array_88
    .array-data 4
        0xd15
        0xd4d
        0xd37
    .end array-data

    :array_89
    .array-data 4
        0xd28
        0xd4d
        0xd26
    .end array-data

    :array_8a
    .array-data 4
        0xd28
        0xd4d
        0xd24
    .end array-data

    :array_8b
    .array-data 4
        0xd23
        0xd4d
        0xd21
    .end array-data

    :array_8c
    .array-data 4
        0xd15
        0xd4d
        0xd30
    .end array-data

    :array_8d
    .array-data 4
        0xd17
        0xd4d
        0xd30
    .end array-data

    :array_8e
    .array-data 4
        0xd18
        0xd4d
        0xd30
    .end array-data

    :array_8f
    .array-data 4
        0xd1c
        0xd4d
        0xd30
    .end array-data

    :array_90
    .array-data 4
        0xd1f
        0xd4d
        0xd30
    .end array-data

    :array_91
    .array-data 4
        0xd21
        0xd4d
        0xd30
    .end array-data

    :array_92
    .array-data 4
        0xd24
        0xd4d
        0xd30
    .end array-data

    :array_93
    .array-data 4
        0xd26
        0xd4d
        0xd30
    .end array-data

    :array_94
    .array-data 4
        0xd2a
        0xd4d
        0xd30
    .end array-data

    :array_95
    .array-data 4
        0xd2c
        0xd4d
        0xd30
    .end array-data

    :array_96
    .array-data 4
        0xd36
        0xd4d
        0xd30
    .end array-data

    :array_97
    .array-data 4
        0xd38
        0xd4d
        0xd30
    .end array-data

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_98
    .end packed-switch

    :array_98
    .array-data 4
        0xb95
        0xbcd
        0xbb7
    .end array-data

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
    .end packed-switch

    :array_99
    .array-data 4
        0xc15
        0xc4d
        0xc37
    .end array-data

    :array_9a
    .array-data 4
        0xc15
        0xc4d
        0xc30
    .end array-data

    :array_9b
    .array-data 4
        0xc16
        0xc4d
        0xc30
    .end array-data

    :array_9c
    .array-data 4
        0xc17
        0xc4d
        0xc30
    .end array-data

    :array_9d
    .array-data 4
        0xc18
        0xc4d
        0xc30
    .end array-data

    :array_9e
    .array-data 4
        0xc1f
        0xc4d
        0xc30
    .end array-data

    :array_9f
    .array-data 4
        0xc21
        0xc4d
        0xc30
    .end array-data

    :array_a0
    .array-data 4
        0xc24
        0xc4d
        0xc30
    .end array-data

    :array_a1
    .array-data 4
        0xc26
        0xc4d
        0xc30
    .end array-data

    :array_a2
    .array-data 4
        0xc28
        0xc4d
        0xc30
    .end array-data

    :array_a3
    .array-data 4
        0xc2a
        0xc4d
        0xc30
    .end array-data

    :array_a4
    .array-data 4
        0xc2c
        0xc4d
        0xc30
    .end array-data

    :array_a5
    .array-data 4
        0xc2d
        0xc4d
        0xc30
    .end array-data

    :array_a6
    .array-data 4
        0xc35
        0xc4d
        0xc30
    .end array-data

    :array_a7
    .array-data 4
        0xc36
        0xc4d
        0xc30
    .end array-data

    :array_a8
    .array-data 4
        0xc38
        0xc4d
        0xc30
    .end array-data

    :array_a9
    .array-data 4
        0xc05
        0xc01
    .end array-data

    :array_aa
    .array-data 4
        0xc05
        0xc03
    .end array-data

    :array_ab
    .array-data 4
        0xc15
        0xc4d
        0xc37
    .end array-data

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b9
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_c4
    .end packed-switch

    :array_ac
    .array-data 4
        0xb15
        0xb4d
        0xb24
    .end array-data

    :array_ad
    .array-data 4
        0xb15
        0xb4d
        0xb30
    .end array-data

    :array_ae
    .array-data 4
        0xb15
        0xb4d
        0xb37
    .end array-data

    :array_af
    .array-data 4
        0xb17
        0xb4d
        0xb27
    .end array-data

    :array_b0
    .array-data 4
        0xb17
        0xb4d
        0xb28
    .end array-data

    :array_b1
    .array-data 4
        0xb17
        0xb4d
        0xb2e
    .end array-data

    :array_b2
    .array-data 4
        0xb17
        0xb4d
        0xb33
    .end array-data

    :array_b3
    .array-data 4
        0xb18
        0xb4d
        0xb28
    .end array-data

    :array_b4
    .array-data 4
        0xb19
        0xb4d
        0xb15
    .end array-data

    :array_b5
    .array-data 4
        0xb19
        0xb4d
        0xb16
    .end array-data

    :array_b6
    .array-data 4
        0xb19
        0xb4d
        0xb17
    .end array-data

    :array_b7
    .array-data 4
        0xb19
        0xb4d
        0xb18
    .end array-data

    :array_b8
    .array-data 4
        0xb1a
        0xb4d
        0xb1a
    .end array-data

    :array_b9
    .array-data 4
        0xb1a
        0xb4d
        0xb1b
    .end array-data

    :array_ba
    .array-data 4
        0xb17
        0xb4d
        0xb30
    .end array-data

    :array_bb
    .array-data 4
        0xb1f
        0xb4d
        0xb30
    .end array-data

    :array_bc
    .array-data 4
        0xb26
        0xb4d
        0xb30
    .end array-data

    :array_bd
    .array-data 4
        0xb27
        0xb4d
        0xb30
    .end array-data

    :array_be
    .array-data 4
        0xb2a
        0xb4d
        0xb30
    .end array-data

    :array_bf
    .array-data 4
        0xb2c
        0xb4d
        0xb30
    .end array-data

    :array_c0
    .array-data 4
        0xb2d
        0xb4d
        0xb30
    .end array-data

    :array_c1
    .array-data 4
        0xb36
        0xb4d
        0xb30
    .end array-data

    :array_c2
    .array-data 4
        0xb38
        0xb4d
        0xb30
    .end array-data

    :array_c3
    .array-data 4
        0xb28
        0xb4d
        0xb24
    .end array-data

    :array_c4
    .array-data 4
        0xb28
        0xb4d
        0xb26
    .end array-data

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_d1
        :pswitch_d2
        :pswitch_d3
        :pswitch_d4
        :pswitch_d5
        :pswitch_d6
        :pswitch_d7
    .end packed-switch

    :array_c5
    .array-data 4
        0xdbb
        0xdca
    .end array-data

    :array_c6
    .array-data 4
        0xd9a
        0xdca
        0xdbb
    .end array-data

    :array_c7
    .array-data 4
        0xd9c
        0xdca
        0xdbb
    .end array-data

    :array_c8
    .array-data 4
        0xdad
        0xdca
        0xdbb
    .end array-data

    :array_c9
    .array-data 4
        0xdaf
        0xdca
        0xdbb
    .end array-data

    :array_ca
    .array-data 4
        0xda7
        0xdca
        0xdbb
    .end array-data

    :array_cb
    .array-data 4
        0xdb5
        0xdca
        0xdbb
    .end array-data

    :array_cc
    .array-data 4
        0xdb4
        0xdca
        0xdbb
    .end array-data

    :array_cd
    .array-data 4
        0xdc1
        0xdca
        0xdbb
    .end array-data

    :array_ce
    .array-data 4
        0xdc3
        0xdca
        0xdbb
    .end array-data

    :array_cf
    .array-data 4
        0xd9a
        0xdca
        0x200d
        0xdbb
    .end array-data

    :array_d0
    .array-data 4
        0xd9c
        0xdca
        0x200d
        0xdbb
    .end array-data

    :array_d1
    .array-data 4
        0xdad
        0xdca
        0x200d
        0xdbb
    .end array-data

    :array_d2
    .array-data 4
        0xdaf
        0xdca
        0x200d
        0xdbb
    .end array-data

    :array_d3
    .array-data 4
        0xda7
        0xdca
        0x200d
        0xdbb
    .end array-data

    :array_d4
    .array-data 4
        0xdb5
        0xdca
        0x200d
        0xdbb
    .end array-data

    :array_d5
    .array-data 4
        0xdb4
        0xdca
        0x200d
        0xdbb
    .end array-data

    :array_d6
    .array-data 4
        0xdc1
        0xdca
        0x200d
        0xdbb
    .end array-data

    :array_d7
    .array-data 4
        0xdc3
        0xdca
        0x200d
        0xdbb
    .end array-data
.end method

.method private getToggledKeyCodeForSmallLcd(I)I
    .locals 7
    .param p1    # I

    const/4 v6, 0x2

    const/4 v5, 0x1

    move v1, p1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHoldKeyCodeForSmallLcd(I)I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_2

    const/high16 v2, 0x68690000

    if-ne v0, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v1, 0x926

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x927

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x928

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x92a

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x92b

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x92c

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x92d

    goto :goto_0

    :pswitch_8
    const/16 v1, 0x92e

    goto :goto_0

    :pswitch_9
    const/16 v1, 0x92f

    goto :goto_0

    :pswitch_a
    const/16 v1, 0x930

    goto :goto_0

    :pswitch_b
    const/16 v1, 0x932

    goto :goto_0

    :pswitch_c
    const/16 v1, 0x935

    goto :goto_0

    :pswitch_d
    const/16 v1, 0x936

    goto :goto_0

    :pswitch_e
    const/16 v1, 0x937

    goto :goto_0

    :pswitch_f
    const/16 v1, 0x938

    goto :goto_0

    :pswitch_10
    const/16 v1, 0x939

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_3

    const/high16 v2, 0x6e650000

    if-ne v0, v2, :cond_3

    packed-switch p1, :pswitch_data_1

    :pswitch_11
    goto :goto_0

    :pswitch_12
    const/16 v1, 0x926

    goto :goto_0

    :pswitch_13
    const/16 v1, 0x927

    goto :goto_0

    :pswitch_14
    const/16 v1, 0x928

    goto :goto_0

    :pswitch_15
    const/16 v1, 0x92a

    goto :goto_0

    :pswitch_16
    const/16 v1, 0x92b

    goto :goto_0

    :pswitch_17
    const/16 v1, 0x92c

    goto :goto_0

    :pswitch_18
    const/16 v1, 0x92d

    goto :goto_0

    :pswitch_19
    const/16 v1, 0x92e

    goto :goto_0

    :pswitch_1a
    const/16 v1, 0x92f

    goto :goto_0

    :pswitch_1b
    const/16 v1, 0x930

    goto :goto_0

    :pswitch_1c
    const/16 v1, 0x932

    goto :goto_0

    :pswitch_1d
    const/16 v1, 0x935

    goto :goto_0

    :pswitch_1e
    const/16 v1, 0x936

    goto :goto_0

    :pswitch_1f
    const/16 v1, 0x937

    goto :goto_0

    :pswitch_20
    const/16 v1, 0x938

    goto :goto_0

    :pswitch_21
    const/16 v1, 0x939

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_4

    const/high16 v2, 0x6d720000

    if-ne v0, v2, :cond_4

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_22
    const/16 v1, 0x926

    goto/16 :goto_0

    :pswitch_23
    const/16 v1, 0x927

    goto/16 :goto_0

    :pswitch_24
    const/16 v1, 0x928

    goto/16 :goto_0

    :pswitch_25
    const/16 v1, 0x92a

    goto/16 :goto_0

    :pswitch_26
    const/16 v1, 0x92b

    goto/16 :goto_0

    :pswitch_27
    const/16 v1, 0x92c

    goto/16 :goto_0

    :pswitch_28
    const/16 v1, 0x92d

    goto/16 :goto_0

    :pswitch_29
    const/16 v1, 0x92e

    goto/16 :goto_0

    :pswitch_2a
    const/16 v1, 0x92f

    goto/16 :goto_0

    :pswitch_2b
    const/16 v1, 0x930

    goto/16 :goto_0

    :pswitch_2c
    const/16 v1, 0x932

    goto/16 :goto_0

    :pswitch_2d
    const/16 v1, 0x933

    goto/16 :goto_0

    :pswitch_2e
    const/16 v1, 0x935

    goto/16 :goto_0

    :pswitch_2f
    const/16 v1, 0x936

    goto/16 :goto_0

    :pswitch_30
    const/16 v1, 0x937

    goto/16 :goto_0

    :pswitch_31
    const/16 v1, 0x938

    goto/16 :goto_0

    :pswitch_32
    const/16 v1, 0x939

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_5

    const/high16 v2, 0x626e0000

    if-ne v0, v2, :cond_5

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_33
    const/16 v1, 0x9a5

    goto/16 :goto_0

    :pswitch_34
    const/16 v1, 0x9a6

    goto/16 :goto_0

    :pswitch_35
    const/16 v1, 0x9a7

    goto/16 :goto_0

    :pswitch_36
    const/16 v1, 0x9a8

    goto/16 :goto_0

    :pswitch_37
    const/16 v1, 0x9aa

    goto/16 :goto_0

    :pswitch_38
    const/16 v1, 0x9ab

    goto/16 :goto_0

    :pswitch_39
    const/16 v1, 0x9ac

    goto/16 :goto_0

    :pswitch_3a
    const/16 v1, 0x9ad

    goto/16 :goto_0

    :pswitch_3b
    const/16 v1, 0x9ae

    goto/16 :goto_0

    :pswitch_3c
    const/16 v1, 0x9af

    goto/16 :goto_0

    :pswitch_3d
    const/16 v1, 0x9b0

    goto/16 :goto_0

    :pswitch_3e
    const/16 v1, 0x9b2

    goto/16 :goto_0

    :pswitch_3f
    const/16 v1, 0x9b6

    goto/16 :goto_0

    :pswitch_40
    const/16 v1, 0x9b7

    goto/16 :goto_0

    :pswitch_41
    const/16 v1, 0x9b8

    goto/16 :goto_0

    :pswitch_42
    const/16 v1, 0x9b9

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    packed-switch p1, :pswitch_data_4

    :pswitch_43
    goto/16 :goto_0

    :pswitch_44
    const/16 v1, 0xaa7

    goto/16 :goto_0

    :pswitch_45
    const/16 v1, 0xaa8

    goto/16 :goto_0

    :pswitch_46
    const/16 v1, 0xaaa

    goto/16 :goto_0

    :pswitch_47
    const/16 v1, 0xaab

    goto/16 :goto_0

    :pswitch_48
    const/16 v1, 0xaac

    goto/16 :goto_0

    :pswitch_49
    const/16 v1, 0xaad

    goto/16 :goto_0

    :pswitch_4a
    const/16 v1, 0xaae

    goto/16 :goto_0

    :pswitch_4b
    const/16 v1, 0xaaf

    goto/16 :goto_0

    :pswitch_4c
    const/16 v1, 0xab0

    goto/16 :goto_0

    :pswitch_4d
    const/16 v1, 0xab2

    goto/16 :goto_0

    :pswitch_4e
    const/16 v1, 0xab5

    goto/16 :goto_0

    :pswitch_4f
    const/16 v1, 0xab6

    goto/16 :goto_0

    :pswitch_50
    const/16 v1, 0xab7

    goto/16 :goto_0

    :pswitch_51
    const/16 v1, 0xab8

    goto/16 :goto_0

    :pswitch_52
    const/16 v1, 0xab9

    goto/16 :goto_0

    :pswitch_53
    const/16 v1, 0xab3

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/16 v1, 0xa22

    goto/16 :goto_0

    :sswitch_1
    const/16 v1, 0xa21

    goto/16 :goto_0

    :sswitch_2
    const/16 v1, 0xa23

    goto/16 :goto_0

    :sswitch_3
    const/16 v1, 0xa24

    goto/16 :goto_0

    :sswitch_4
    const/16 v1, 0xa25

    goto/16 :goto_0

    :sswitch_5
    const/16 v1, 0xa26

    goto/16 :goto_0

    :sswitch_6
    const/16 v1, 0xa27

    goto/16 :goto_0

    :sswitch_7
    const/16 v1, 0xa28

    goto/16 :goto_0

    :sswitch_8
    const/16 v1, 0xa2a

    goto/16 :goto_0

    :sswitch_9
    const/16 v1, 0xa2b

    goto/16 :goto_0

    :sswitch_a
    const/16 v1, 0xa2c

    goto/16 :goto_0

    :sswitch_b
    const/16 v1, 0xa2d

    goto/16 :goto_0

    :sswitch_c
    const/16 v1, 0xa2e

    goto/16 :goto_0

    :sswitch_d
    const/16 v1, 0xa2f

    goto/16 :goto_0

    :sswitch_e
    const/16 v1, 0xa30

    goto/16 :goto_0

    :sswitch_f
    const/16 v1, 0xa32

    goto/16 :goto_0

    :sswitch_10
    const/16 v1, 0xa35

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    packed-switch p1, :pswitch_data_5

    :pswitch_54
    goto/16 :goto_0

    :pswitch_55
    const/16 v1, 0xbb2

    goto/16 :goto_0

    :pswitch_56
    const/16 v1, 0xbb5

    goto/16 :goto_0

    :pswitch_57
    const/16 v1, 0xbb4

    goto/16 :goto_0

    :pswitch_58
    const/16 v1, 0xbb3

    goto/16 :goto_0

    :pswitch_59
    const/16 v1, 0xbb1

    goto/16 :goto_0

    :pswitch_5a
    const/16 v1, 0xba9

    goto/16 :goto_0

    :pswitch_5b
    const/16 v1, 0xb9c

    goto/16 :goto_0

    :pswitch_5c
    const/16 v1, 0xbb7

    goto/16 :goto_0

    :pswitch_5d
    const/16 v1, 0xb95

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_5e
    const/16 v1, 0xbb9

    goto/16 :goto_0

    :pswitch_5f
    const/16 v1, 0xbb8

    goto/16 :goto_0

    :pswitch_60
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_9

    packed-switch p1, :pswitch_data_6

    :pswitch_61
    goto/16 :goto_0

    :pswitch_62
    const/16 v1, 0xca7

    goto/16 :goto_0

    :pswitch_63
    const/16 v1, 0xca8

    goto/16 :goto_0

    :pswitch_64
    const/16 v1, 0xcaa

    goto/16 :goto_0

    :pswitch_65
    const/16 v1, 0xcab

    goto/16 :goto_0

    :pswitch_66
    const/16 v1, 0xcac

    goto/16 :goto_0

    :pswitch_67
    const/16 v1, 0xcad

    goto/16 :goto_0

    :pswitch_68
    const/16 v1, 0xcae

    goto/16 :goto_0

    :pswitch_69
    const/16 v1, 0xcaf

    goto/16 :goto_0

    :pswitch_6a
    const/16 v1, 0xcb0

    goto/16 :goto_0

    :pswitch_6b
    const/16 v1, 0xcb2

    goto/16 :goto_0

    :pswitch_6c
    const/16 v1, 0xcb5

    goto/16 :goto_0

    :pswitch_6d
    const/16 v1, 0xcb6

    goto/16 :goto_0

    :pswitch_6e
    const/16 v1, 0xcb7

    goto/16 :goto_0

    :pswitch_6f
    const/16 v1, 0xcb8

    goto/16 :goto_0

    :pswitch_70
    const/16 v1, 0xcb9

    goto/16 :goto_0

    :pswitch_71
    const/16 v1, 0xcb3

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    packed-switch p1, :pswitch_data_7

    goto/16 :goto_0

    :pswitch_72
    const/16 v1, 0xd26

    goto/16 :goto_0

    :pswitch_73
    const/16 v1, 0xd27

    goto/16 :goto_0

    :pswitch_74
    const/16 v1, 0xd28

    goto/16 :goto_0

    :pswitch_75
    const/16 v1, 0xd2a

    goto/16 :goto_0

    :pswitch_76
    const/16 v1, 0xd2b

    goto/16 :goto_0

    :pswitch_77
    const/16 v1, 0xd2c

    goto/16 :goto_0

    :pswitch_78
    const/16 v1, 0xd2d

    goto/16 :goto_0

    :pswitch_79
    const/16 v1, 0xd2e

    goto/16 :goto_0

    :pswitch_7a
    const/16 v1, 0xd2f

    goto/16 :goto_0

    :pswitch_7b
    const/16 v1, 0xd30

    goto/16 :goto_0

    :pswitch_7c
    const/16 v1, 0xd32

    goto/16 :goto_0

    :pswitch_7d
    const/16 v1, 0xd33

    goto/16 :goto_0

    :pswitch_7e
    const/16 v1, 0xd35

    goto/16 :goto_0

    :pswitch_7f
    const/16 v1, 0xd36

    goto/16 :goto_0

    :pswitch_80
    const/16 v1, 0xd37

    goto/16 :goto_0

    :pswitch_81
    const/16 v1, 0xd38

    goto/16 :goto_0

    :pswitch_82
    const/16 v1, 0xd39

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    packed-switch p1, :pswitch_data_8

    :pswitch_83
    goto/16 :goto_0

    :pswitch_84
    const/16 v1, 0xc27

    goto/16 :goto_0

    :pswitch_85
    const/16 v1, 0xc28

    goto/16 :goto_0

    :pswitch_86
    const/16 v1, 0xc2a

    goto/16 :goto_0

    :pswitch_87
    const/16 v1, 0xc2b

    goto/16 :goto_0

    :pswitch_88
    const/16 v1, 0xc2c

    goto/16 :goto_0

    :pswitch_89
    const/16 v1, 0xc2d

    goto/16 :goto_0

    :pswitch_8a
    const/16 v1, 0xc2e

    goto/16 :goto_0

    :pswitch_8b
    const/16 v1, 0xc2f

    goto/16 :goto_0

    :pswitch_8c
    const/16 v1, 0xc30

    goto/16 :goto_0

    :pswitch_8d
    const/16 v1, 0xc32

    goto/16 :goto_0

    :pswitch_8e
    const/16 v1, 0xc33

    goto/16 :goto_0

    :pswitch_8f
    const/16 v1, 0xc35

    goto/16 :goto_0

    :pswitch_90
    const/16 v1, 0xc36

    goto/16 :goto_0

    :pswitch_91
    const/16 v1, 0xc37

    goto/16 :goto_0

    :pswitch_92
    const/16 v1, 0xc38

    goto/16 :goto_0

    :pswitch_93
    const/16 v1, 0xc39

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_c

    const/high16 v2, 0x61730000

    if-ne v0, v2, :cond_c

    packed-switch p1, :pswitch_data_9

    goto/16 :goto_0

    :pswitch_94
    const/16 v1, 0x9a6

    goto/16 :goto_0

    :pswitch_95
    const/16 v1, 0x9a7

    goto/16 :goto_0

    :pswitch_96
    const/16 v1, 0x9a8

    goto/16 :goto_0

    :pswitch_97
    const/16 v1, 0x9aa

    goto/16 :goto_0

    :pswitch_98
    const/16 v1, 0x9ab

    goto/16 :goto_0

    :pswitch_99
    const/16 v1, 0x9ac

    goto/16 :goto_0

    :pswitch_9a
    const/16 v1, 0x9ad

    goto/16 :goto_0

    :pswitch_9b
    const/16 v1, 0x9ae

    goto/16 :goto_0

    :pswitch_9c
    const/16 v1, 0x9af

    goto/16 :goto_0

    :pswitch_9d
    const/16 v1, 0x9f0

    goto/16 :goto_0

    :pswitch_9e
    const/16 v1, 0x9b2

    goto/16 :goto_0

    :pswitch_9f
    const/16 v1, 0x9f1

    goto/16 :goto_0

    :pswitch_a0
    const/16 v1, 0x9b6

    goto/16 :goto_0

    :pswitch_a1
    const/16 v1, 0x9b7

    goto/16 :goto_0

    :pswitch_a2
    const/16 v1, 0x9b8

    goto/16 :goto_0

    :pswitch_a3
    const/16 v1, 0x9b9

    goto/16 :goto_0

    :pswitch_a4
    const/16 v1, 0x9df

    goto/16 :goto_0

    :cond_c
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_11
    const/16 v1, 0xb25

    goto/16 :goto_0

    :sswitch_12
    const/16 v1, 0xb26

    goto/16 :goto_0

    :sswitch_13
    const/16 v1, 0xb27

    goto/16 :goto_0

    :sswitch_14
    const/16 v1, 0xb28

    goto/16 :goto_0

    :sswitch_15
    const/16 v1, 0xb2a

    goto/16 :goto_0

    :sswitch_16
    const/16 v1, 0xb2b

    goto/16 :goto_0

    :sswitch_17
    const/16 v1, 0xb2c

    goto/16 :goto_0

    :sswitch_18
    const/16 v1, 0xb2d

    goto/16 :goto_0

    :sswitch_19
    const/16 v1, 0xb2e

    goto/16 :goto_0

    :sswitch_1a
    const/16 v1, 0xb2f

    goto/16 :goto_0

    :sswitch_1b
    const/16 v1, 0xb30

    goto/16 :goto_0

    :sswitch_1c
    const/16 v1, 0xb33

    goto/16 :goto_0

    :sswitch_1d
    const/16 v1, 0xb32

    goto/16 :goto_0

    :sswitch_1e
    const/16 v1, 0xb36

    goto/16 :goto_0

    :sswitch_1f
    const/16 v1, 0xb37

    goto/16 :goto_0

    :sswitch_20
    const/16 v1, 0xb38

    goto/16 :goto_0

    :cond_d
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    packed-switch p1, :pswitch_data_a

    :pswitch_a5
    goto/16 :goto_0

    :pswitch_a6
    const/16 v1, 0xdb0

    goto/16 :goto_0

    :pswitch_a7
    const/16 v1, 0xdb1

    goto/16 :goto_0

    :pswitch_a8
    const/16 v1, 0xdb4

    goto/16 :goto_0

    :pswitch_a9
    const/16 v1, 0xdb5

    goto/16 :goto_0

    :pswitch_aa
    const/16 v1, 0xdb6

    goto/16 :goto_0

    :pswitch_ab
    const/16 v1, 0xdb7

    goto/16 :goto_0

    :pswitch_ac
    const/16 v1, 0xdb8

    goto/16 :goto_0

    :pswitch_ad
    const/16 v1, 0xdba

    goto/16 :goto_0

    :pswitch_ae
    const/16 v1, 0xdbb

    goto/16 :goto_0

    :pswitch_af
    const/16 v1, 0xdbd

    goto/16 :goto_0

    :pswitch_b0
    const/16 v1, 0xdc0

    goto/16 :goto_0

    :pswitch_b1
    const/16 v1, 0xdc1

    goto/16 :goto_0

    :pswitch_b2
    const/16 v1, 0xdc2

    goto/16 :goto_0

    :pswitch_b3
    const/16 v1, 0xdc3

    goto/16 :goto_0

    :pswitch_b4
    const/16 v1, 0xdc4

    goto/16 :goto_0

    :pswitch_b5
    const/16 v1, 0xdc5

    goto/16 :goto_0

    :pswitch_b6
    const/16 v1, 0xdc6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x915
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x915
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_11
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x915
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x995
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa95
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_43
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_43
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa05 -> :sswitch_0
        0xa15 -> :sswitch_5
        0xa16 -> :sswitch_6
        0xa17 -> :sswitch_7
        0xa18 -> :sswitch_8
        0xa19 -> :sswitch_9
        0xa1a -> :sswitch_a
        0xa1b -> :sswitch_b
        0xa1c -> :sswitch_c
        0xa1d -> :sswitch_d
        0xa1e -> :sswitch_e
        0xa1f -> :sswitch_f
        0xa20 -> :sswitch_10
        0xa38 -> :sswitch_3
        0xa39 -> :sswitch_4
        0xa72 -> :sswitch_2
        0xa73 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0xb95
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_56
        :pswitch_57
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_58
        :pswitch_59
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5a
        :pswitch_5b
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5c
        :pswitch_54
        :pswitch_5d
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xc95
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_61
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_61
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xd15
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xc15
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_83
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_83
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x995
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xb15 -> :sswitch_11
        0xb16 -> :sswitch_12
        0xb17 -> :sswitch_13
        0xb18 -> :sswitch_14
        0xb19 -> :sswitch_15
        0xb1a -> :sswitch_16
        0xb1b -> :sswitch_17
        0xb1c -> :sswitch_18
        0xb1d -> :sswitch_19
        0xb1e -> :sswitch_1a
        0xb1f -> :sswitch_1b
        0xb20 -> :sswitch_1c
        0xb23 -> :sswitch_1f
        0xb24 -> :sswitch_20
        0xb5c -> :sswitch_1d
        0xb5d -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0xd9a
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_a5
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_a5
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
    .end packed-switch
.end method

.method private getToggledKeyLabelForSmallLcd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p1    # Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move-object v2, p1

    iget-object v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e5553

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHoldKeyLabelForSmallLcd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_2

    const/high16 v3, 0x68690000

    if-ne v1, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_3

    const/high16 v3, 0x6e650000

    if-ne v1, v3, :cond_3

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const-string v2, "\u0926"

    goto :goto_0

    :pswitch_3
    const-string v2, "\u0926"

    goto :goto_1

    :pswitch_4
    const-string v2, "\u0927"

    goto :goto_1

    :pswitch_5
    const-string v2, "\u0928"

    goto :goto_1

    :pswitch_6
    const-string v2, "\u092a"

    goto :goto_1

    :pswitch_7
    const-string v2, "\u092b"

    goto :goto_1

    :pswitch_8
    const-string v2, "\u092c"

    goto :goto_1

    :pswitch_9
    const-string v2, "\u092d"

    goto :goto_1

    :pswitch_a
    const-string v2, "\u092e"

    goto :goto_1

    :pswitch_b
    const-string v2, "\u092f"

    goto :goto_1

    :pswitch_c
    const-string v2, "\u0930"

    goto :goto_1

    :pswitch_d
    const-string v2, "\u0932"

    goto :goto_1

    :pswitch_e
    const-string v2, "\u0935"

    goto :goto_1

    :pswitch_f
    const-string v2, "\u0936"

    goto :goto_1

    :pswitch_10
    const-string v2, "\u0937"

    goto :goto_1

    :pswitch_11
    const-string v2, "\u0938"

    goto :goto_1

    :pswitch_12
    const-string v2, "\u0939"

    goto :goto_1

    :pswitch_13
    const-string v2, "\u0927"

    goto :goto_0

    :pswitch_14
    const-string v2, "\u0928"

    goto :goto_0

    :pswitch_15
    const-string v2, "\u092a"

    goto :goto_0

    :pswitch_16
    const-string v2, "\u092b"

    goto :goto_0

    :pswitch_17
    const-string v2, "\u092c"

    goto :goto_0

    :pswitch_18
    const-string v2, "\u092d"

    goto :goto_0

    :pswitch_19
    const-string v2, "\u092e"

    goto :goto_0

    :pswitch_1a
    const-string v2, "\u092f"

    goto :goto_0

    :pswitch_1b
    const-string v2, "\u0930"

    goto :goto_0

    :pswitch_1c
    const-string v2, "\u0932"

    goto :goto_0

    :pswitch_1d
    const-string v2, "\u0935"

    goto :goto_0

    :pswitch_1e
    const-string v2, "\u0936"

    goto :goto_0

    :pswitch_1f
    const-string v2, "\u0937"

    goto :goto_0

    :pswitch_20
    const-string v2, "\u0938"

    goto :goto_0

    :pswitch_21
    const-string v2, "\u0939"

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_4

    const/high16 v3, 0x6d720000

    if-ne v1, v3, :cond_4

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_22
    const-string v2, "\u0926"

    goto/16 :goto_0

    :pswitch_23
    const-string v2, "\u0927"

    goto/16 :goto_0

    :pswitch_24
    const-string v2, "\u0928"

    goto/16 :goto_0

    :pswitch_25
    const-string v2, "\u092a"

    goto/16 :goto_0

    :pswitch_26
    const-string v2, "\u092b"

    goto/16 :goto_0

    :pswitch_27
    const-string v2, "\u092c"

    goto/16 :goto_0

    :pswitch_28
    const-string v2, "\u092d"

    goto/16 :goto_0

    :pswitch_29
    const-string v2, "\u092e"

    goto/16 :goto_0

    :pswitch_2a
    const-string v2, "\u092f"

    goto/16 :goto_0

    :pswitch_2b
    const-string v2, "\u0930"

    goto/16 :goto_0

    :pswitch_2c
    const-string v2, "\u0932"

    goto/16 :goto_0

    :pswitch_2d
    const-string v2, "\u0933"

    goto/16 :goto_0

    :pswitch_2e
    const-string v2, "\u0935"

    goto/16 :goto_0

    :pswitch_2f
    const-string v2, "\u0936"

    goto/16 :goto_0

    :pswitch_30
    const-string v2, "\u0937"

    goto/16 :goto_0

    :pswitch_31
    const-string v2, "\u0938"

    goto/16 :goto_0

    :pswitch_32
    const-string v2, "\u0939"

    goto/16 :goto_0

    :cond_4
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v7, :cond_5

    const/high16 v3, 0x626e0000

    if-ne v1, v3, :cond_5

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_33
    const-string v2, "\u09a5"

    goto/16 :goto_0

    :pswitch_34
    const-string v2, "\u09a6"

    goto/16 :goto_0

    :pswitch_35
    const-string v2, "\u09a7"

    goto/16 :goto_0

    :pswitch_36
    const-string v2, "\u09a8"

    goto/16 :goto_0

    :pswitch_37
    const-string v2, "\u09aa"

    goto/16 :goto_0

    :pswitch_38
    const-string v2, "\u09ab"

    goto/16 :goto_0

    :pswitch_39
    const-string v2, "\u09ac"

    goto/16 :goto_0

    :pswitch_3a
    const-string v2, "\u09ad"

    goto/16 :goto_0

    :pswitch_3b
    const-string v2, "\u09ae"

    goto/16 :goto_0

    :pswitch_3c
    const-string v2, "\u09af"

    goto/16 :goto_0

    :pswitch_3d
    const-string v2, "\u09b0"

    goto/16 :goto_0

    :pswitch_3e
    const-string v2, "\u09b2"

    goto/16 :goto_0

    :pswitch_3f
    const-string v2, "\u09b6"

    goto/16 :goto_0

    :pswitch_40
    const-string v2, "\u09b7"

    goto/16 :goto_0

    :pswitch_41
    const-string v2, "\u09b8"

    goto/16 :goto_0

    :pswitch_42
    const-string v2, "\u09b9"

    goto/16 :goto_0

    :cond_5
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_6

    packed-switch v0, :pswitch_data_4

    :pswitch_43
    goto/16 :goto_0

    :pswitch_44
    const-string v2, "\u0aa7"

    goto/16 :goto_0

    :pswitch_45
    const-string v2, "\u0aa8"

    goto/16 :goto_0

    :pswitch_46
    const-string v2, "\u0aaa"

    goto/16 :goto_0

    :pswitch_47
    const-string v2, "\u0aab"

    goto/16 :goto_0

    :pswitch_48
    const-string v2, "\u0aac"

    goto/16 :goto_0

    :pswitch_49
    const-string v2, "\u0aad"

    goto/16 :goto_0

    :pswitch_4a
    const-string v2, "\u0aae"

    goto/16 :goto_0

    :pswitch_4b
    const-string v2, "\u0aaf"

    goto/16 :goto_0

    :pswitch_4c
    const-string v2, "\u0ab0"

    goto/16 :goto_0

    :pswitch_4d
    const-string v2, "\u0ab2"

    goto/16 :goto_0

    :pswitch_4e
    const-string v2, "\u0ab5"

    goto/16 :goto_0

    :pswitch_4f
    const-string v2, "\u0ab6"

    goto/16 :goto_0

    :pswitch_50
    const-string v2, "\u0ab7"

    goto/16 :goto_0

    :pswitch_51
    const-string v2, "\u0ab8"

    goto/16 :goto_0

    :pswitch_52
    const-string v2, "\u0ab9"

    goto/16 :goto_0

    :pswitch_53
    const-string v2, "\u0ab3"

    goto/16 :goto_0

    :cond_6
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "\u0a22"

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "\u0a21"

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "\u0a23"

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "\u0a24"

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "\u0a25"

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "\u0a26"

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "\u0a27"

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "\u0a28"

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "\u0a2a"

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "\u0a2b"

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "\u0a2c"

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "\u0a2d"

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "\u0a2e"

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "\u0a2f"

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "\u0a30"

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "\u0a32"

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "\u0a35"

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    packed-switch v0, :pswitch_data_5

    :pswitch_54
    goto/16 :goto_0

    :pswitch_55
    const-string v2, "\u0bb2"

    goto/16 :goto_0

    :pswitch_56
    const-string v2, "\u0bb5"

    goto/16 :goto_0

    :pswitch_57
    const-string v2, "\u0bb4"

    goto/16 :goto_0

    :pswitch_58
    const-string v2, "\u0bb3"

    goto/16 :goto_0

    :pswitch_59
    const-string v2, "\u0bb1"

    goto/16 :goto_0

    :pswitch_5a
    const-string v2, "\u0ba9"

    goto/16 :goto_0

    :pswitch_5b
    const-string v2, "\u0b9c"

    goto/16 :goto_0

    :pswitch_5c
    const-string v2, "\u0bb7"

    goto/16 :goto_0

    :pswitch_5d
    const-string v2, "\u0b95\u0bb7"

    goto/16 :goto_0

    :pswitch_5e
    const-string v2, "\u0bb9"

    goto/16 :goto_0

    :pswitch_5f
    const-string v2, "\u0bb8"

    goto/16 :goto_0

    :pswitch_60
    const-string v2, ""

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    packed-switch v0, :pswitch_data_6

    :pswitch_61
    goto/16 :goto_0

    :pswitch_62
    const-string v2, "\u0ca7"

    goto/16 :goto_0

    :pswitch_63
    const-string v2, "\u0ca8"

    goto/16 :goto_0

    :pswitch_64
    const-string v2, "\u0caa"

    goto/16 :goto_0

    :pswitch_65
    const-string v2, "\u0cab"

    goto/16 :goto_0

    :pswitch_66
    const-string v2, "\u0cac"

    goto/16 :goto_0

    :pswitch_67
    const-string v2, "\u0cad"

    goto/16 :goto_0

    :pswitch_68
    const-string v2, "\u0cae"

    goto/16 :goto_0

    :pswitch_69
    const-string v2, "\u0caf"

    goto/16 :goto_0

    :pswitch_6a
    const-string v2, "\u0cb0"

    goto/16 :goto_0

    :pswitch_6b
    const-string v2, "\u0cb2"

    goto/16 :goto_0

    :pswitch_6c
    const-string v2, "\u0cb5"

    goto/16 :goto_0

    :pswitch_6d
    const-string v2, "\u0cb6"

    goto/16 :goto_0

    :pswitch_6e
    const-string v2, "\u0cb7"

    goto/16 :goto_0

    :pswitch_6f
    const-string v2, "\u0cb8"

    goto/16 :goto_0

    :pswitch_70
    const-string v2, "\u0cb9"

    goto/16 :goto_0

    :pswitch_71
    const-string v2, "\u0cb3"

    goto/16 :goto_0

    :cond_9
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_a

    packed-switch v0, :pswitch_data_7

    goto/16 :goto_0

    :pswitch_72
    const-string v2, "\u0d26"

    goto/16 :goto_0

    :pswitch_73
    const-string v2, "\u0d27"

    goto/16 :goto_0

    :pswitch_74
    const-string v2, "\u0d28"

    goto/16 :goto_0

    :pswitch_75
    const-string v2, "\u0d2a"

    goto/16 :goto_0

    :pswitch_76
    const-string v2, "\u0d2b"

    goto/16 :goto_0

    :pswitch_77
    const-string v2, "\u0d2c"

    goto/16 :goto_0

    :pswitch_78
    const-string v2, "\u0d2d"

    goto/16 :goto_0

    :pswitch_79
    const-string v2, "\u0d2e"

    goto/16 :goto_0

    :pswitch_7a
    const-string v2, "\u0d2f"

    goto/16 :goto_0

    :pswitch_7b
    const-string v2, "\u0d30"

    goto/16 :goto_0

    :pswitch_7c
    const-string v2, "\u0d32"

    goto/16 :goto_0

    :pswitch_7d
    const-string v2, "\u0d33"

    goto/16 :goto_0

    :pswitch_7e
    const-string v2, "\u0d35"

    goto/16 :goto_0

    :pswitch_7f
    const-string v2, "\u0d36"

    goto/16 :goto_0

    :pswitch_80
    const-string v2, "\u0d37"

    goto/16 :goto_0

    :pswitch_81
    const-string v2, "\u0d38"

    goto/16 :goto_0

    :pswitch_82
    const-string v2, "\u0d39"

    goto/16 :goto_0

    :cond_a
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    packed-switch v0, :pswitch_data_8

    :pswitch_83
    goto/16 :goto_0

    :pswitch_84
    const-string v2, "\u0c27"

    goto/16 :goto_0

    :pswitch_85
    const-string v2, "\u0c28"

    goto/16 :goto_0

    :pswitch_86
    const-string v2, "\u0c2a"

    goto/16 :goto_0

    :pswitch_87
    const-string v2, "\u0c2b"

    goto/16 :goto_0

    :pswitch_88
    const-string v2, "\u0c2c"

    goto/16 :goto_0

    :pswitch_89
    const-string v2, "\u0c2d"

    goto/16 :goto_0

    :pswitch_8a
    const-string v2, "\u0c2e"

    goto/16 :goto_0

    :pswitch_8b
    const-string v2, "\u0c2f"

    goto/16 :goto_0

    :pswitch_8c
    const-string v2, "\u0c30"

    goto/16 :goto_0

    :pswitch_8d
    const-string v2, "\u0c32"

    goto/16 :goto_0

    :pswitch_8e
    const-string v2, "\u0c33"

    goto/16 :goto_0

    :pswitch_8f
    const-string v2, "\u0c35"

    goto/16 :goto_0

    :pswitch_90
    const-string v2, "\u0c36"

    goto/16 :goto_0

    :pswitch_91
    const-string v2, "\u0c37"

    goto/16 :goto_0

    :pswitch_92
    const-string v2, "\u0c38"

    goto/16 :goto_0

    :pswitch_93
    const-string v2, "\u0c39"

    goto/16 :goto_0

    :cond_b
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v7, :cond_c

    const/high16 v3, 0x61730000

    if-ne v1, v3, :cond_c

    packed-switch v0, :pswitch_data_9

    goto/16 :goto_0

    :pswitch_94
    const-string v2, "\u09a6"

    goto/16 :goto_0

    :pswitch_95
    const-string v2, "\u09a7"

    goto/16 :goto_0

    :pswitch_96
    const-string v2, "\u09a8"

    goto/16 :goto_0

    :pswitch_97
    const-string v2, "\u09aa"

    goto/16 :goto_0

    :pswitch_98
    const-string v2, "\u09ab"

    goto/16 :goto_0

    :pswitch_99
    const-string v2, "\u09ac"

    goto/16 :goto_0

    :pswitch_9a
    const-string v2, "\u09ad"

    goto/16 :goto_0

    :pswitch_9b
    const-string v2, "\u09ae"

    goto/16 :goto_0

    :pswitch_9c
    const-string v2, "\u09af"

    goto/16 :goto_0

    :pswitch_9d
    const-string v2, "\u09f0"

    goto/16 :goto_0

    :pswitch_9e
    const-string v2, "\u09b2"

    goto/16 :goto_0

    :pswitch_9f
    const-string v2, "\u09f1"

    goto/16 :goto_0

    :pswitch_a0
    const-string v2, "\u09b6"

    goto/16 :goto_0

    :pswitch_a1
    const-string v2, "\u09b7"

    goto/16 :goto_0

    :pswitch_a2
    const-string v2, "\u09b8"

    goto/16 :goto_0

    :pswitch_a3
    const-string v2, "\u09b9"

    goto/16 :goto_0

    :pswitch_a4
    const-string v2, "\u09df"

    goto/16 :goto_0

    :cond_c
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_d

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "\u0b25"

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "\u0b26"

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "\u0b27"

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "\u0b28"

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "\u0b2a"

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "\u0b2b"

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "\u0b2c"

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "\u0b2d"

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "\u0b2e"

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "\u0b2f"

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "\u0b30"

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "\u0b33"

    goto/16 :goto_0

    :sswitch_1d
    const-string v2, "\u0b32"

    goto/16 :goto_0

    :sswitch_1e
    const-string v2, "\u0b36"

    goto/16 :goto_0

    :sswitch_1f
    const-string v2, "\u0b37"

    goto/16 :goto_0

    :sswitch_20
    const-string v2, "\u0b38"

    goto/16 :goto_0

    :cond_d
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    packed-switch v0, :pswitch_data_a

    :pswitch_a5
    goto/16 :goto_0

    :pswitch_a6
    const-string v2, "\u0db0"

    goto/16 :goto_0

    :pswitch_a7
    const-string v2, "\u0db1"

    goto/16 :goto_0

    :pswitch_a8
    const-string v2, "\u0db4"

    goto/16 :goto_0

    :pswitch_a9
    const-string v2, "\u0db5"

    goto/16 :goto_0

    :pswitch_aa
    const-string v2, "\u0db6"

    goto/16 :goto_0

    :pswitch_ab
    const-string v2, "\u0db7"

    goto/16 :goto_0

    :pswitch_ac
    const-string v2, "\u0db8"

    goto/16 :goto_0

    :pswitch_ad
    const-string v2, "\u0dba"

    goto/16 :goto_0

    :pswitch_ae
    const-string v2, "\u0dbb"

    goto/16 :goto_0

    :pswitch_af
    const-string v2, "\u0dbd"

    goto/16 :goto_0

    :pswitch_b0
    const-string v2, "\u0dc0"

    goto/16 :goto_0

    :pswitch_b1
    const-string v2, "\u0dc1"

    goto/16 :goto_0

    :pswitch_b2
    const-string v2, "\u0dc2"

    goto/16 :goto_0

    :pswitch_b3
    const-string v2, "\u0dc3"

    goto/16 :goto_0

    :pswitch_b4
    const-string v2, "\u0dc4"

    goto/16 :goto_0

    :pswitch_b5
    const-string v2, "\u0dc5"

    goto/16 :goto_0

    :pswitch_b6
    const-string v2, "\u0dc6"

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x915
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x915
        :pswitch_2
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_1
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x915
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x995
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa95
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_43
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_43
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa05 -> :sswitch_0
        0xa15 -> :sswitch_5
        0xa16 -> :sswitch_6
        0xa17 -> :sswitch_7
        0xa18 -> :sswitch_8
        0xa19 -> :sswitch_9
        0xa1a -> :sswitch_a
        0xa1b -> :sswitch_b
        0xa1c -> :sswitch_c
        0xa1d -> :sswitch_d
        0xa1e -> :sswitch_e
        0xa1f -> :sswitch_f
        0xa20 -> :sswitch_10
        0xa38 -> :sswitch_3
        0xa39 -> :sswitch_4
        0xa72 -> :sswitch_2
        0xa73 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0xb95
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_56
        :pswitch_57
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_58
        :pswitch_59
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5a
        :pswitch_5b
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5c
        :pswitch_54
        :pswitch_5d
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xc95
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_61
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_61
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xd15
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xc15
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_83
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_83
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x995
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xb15 -> :sswitch_11
        0xb16 -> :sswitch_12
        0xb17 -> :sswitch_13
        0xb18 -> :sswitch_14
        0xb19 -> :sswitch_15
        0xb1a -> :sswitch_16
        0xb1b -> :sswitch_17
        0xb1c -> :sswitch_18
        0xb1d -> :sswitch_19
        0xb1e -> :sswitch_1a
        0xb1f -> :sswitch_1b
        0xb20 -> :sswitch_1c
        0xb23 -> :sswitch_1f
        0xb24 -> :sswitch_20
        0xb5c -> :sswitch_1d
        0xb5d -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0xd9a
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_a5
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_a5
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
    .end packed-switch
.end method


# virtual methods
.method public drawKeyboardView()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    return-void
.end method

.method public getLangScriptId()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    return v0
.end method

.method public getPrevLangScriptId()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    return v0
.end method

.method public getThirdModeKeyCode(I)I
    .locals 11
    .param p1    # I

    const/4 v10, 0x4

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    move v2, p1

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e5553

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v2, 0x954

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x915

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x924

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x91c

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x936

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x933

    goto :goto_0

    :pswitch_7
    const/16 v2, 0x930

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x11

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_8
    const/16 v2, 0x901

    goto :goto_0

    :pswitch_9
    const/16 v2, 0x93c

    goto :goto_0

    :pswitch_a
    const/16 v2, 0x94b

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x10

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_b
    const/16 v2, 0x953

    goto :goto_0

    :pswitch_c
    const/16 v2, 0x946

    goto :goto_0

    :pswitch_d
    const/16 v2, 0x965

    goto :goto_0

    :pswitch_e
    const/16 v2, 0x93d

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v7, :cond_3

    const/high16 v3, 0x626e0000

    if-ne v1, v3, :cond_3

    packed-switch p1, :pswitch_data_1

    :pswitch_f
    goto :goto_0

    :pswitch_10
    const/16 v2, 0x997

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x1e

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_11
    const/16 v2, 0x9dc

    goto :goto_0

    :pswitch_12
    const/16 v2, 0x9dd

    goto :goto_0

    :pswitch_13
    const/16 v2, 0x9df

    goto :goto_0

    :pswitch_14
    const/16 v2, 0x9ce

    goto :goto_0

    :pswitch_15
    const/16 v2, 0x9b8

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x16

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    :pswitch_16
    const/16 v2, 0x99e

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x17

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_17
    const/16 v2, 0x99c

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x18

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_18
    const/16 v2, 0x9b8

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x19

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_19
    const/16 v2, 0x995

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x1a

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_1a
    const/16 v2, 0x995

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x1b

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_1b
    const/16 v2, 0x995

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_1c
    const/16 v2, 0x995

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x1c

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_1d
    const/16 v2, 0x995

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x1d

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_3
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v7, :cond_4

    const/high16 v3, 0x61730000

    if-ne v1, v3, :cond_4

    packed-switch p1, :pswitch_data_2

    :pswitch_1e
    goto/16 :goto_0

    :pswitch_1f
    const/16 v2, 0x997

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x1e

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_20
    const/16 v2, 0x9dc

    goto/16 :goto_0

    :pswitch_21
    const/16 v2, 0x9dd

    goto/16 :goto_0

    :pswitch_22
    const/16 v2, 0x9df

    goto/16 :goto_0

    :pswitch_23
    const/16 v2, 0x9ce

    goto/16 :goto_0

    :pswitch_24
    const/16 v2, 0x9b8

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x16

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_25
    const/16 v2, 0x99e

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x17

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_26
    const/16 v2, 0x99c

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x18

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_27
    const/16 v2, 0x9b8

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x1f

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_28
    const/16 v2, 0x995

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x1a

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_29
    const/16 v2, 0x995

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x1b

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_2a
    const/16 v2, 0x995

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_2b
    const/16 v2, 0x995

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x1c

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_2c
    const/16 v2, 0x995

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x1d

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :cond_4
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/16 v2, 0xa81

    goto/16 :goto_0

    :sswitch_1
    const/16 v2, 0xa95

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_2
    const/16 v2, 0xaa4

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x15

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_3
    const/16 v2, 0xa9c

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_4
    const/16 v2, 0xab6

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_5
    const/16 v2, 0xaa6

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x16

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_6
    const/16 v2, 0xaa6

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x17

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_7
    const/16 v2, 0xaa4

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x18

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_8
    const/16 v2, 0xab3

    goto/16 :goto_0

    :sswitch_9
    const/16 v2, 0xaa4

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x19

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_a
    const/16 v2, 0xab0

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x12

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :sswitch_b
    const/16 v2, 0xabc

    goto/16 :goto_0

    :sswitch_c
    const/16 v2, 0xac4

    goto/16 :goto_0

    :sswitch_d
    const/16 v2, 0xae2

    goto/16 :goto_0

    :cond_5
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    packed-switch p1, :pswitch_data_3

    :pswitch_2d
    goto/16 :goto_0

    :pswitch_2e
    const/16 v2, 0xa36

    goto/16 :goto_0

    :pswitch_2f
    const/16 v2, 0xa59

    goto/16 :goto_0

    :pswitch_30
    const/16 v2, 0xa5a

    goto/16 :goto_0

    :pswitch_31
    const/16 v2, 0xa5b

    goto/16 :goto_0

    :pswitch_32
    const/16 v2, 0xa5e

    goto/16 :goto_0

    :pswitch_33
    const/16 v2, 0xa33

    goto/16 :goto_0

    :pswitch_34
    const/16 v2, 0xa74

    goto/16 :goto_0

    :pswitch_35
    const/16 v2, 0xa71

    goto/16 :goto_0

    :pswitch_36
    const/16 v2, 0xa4d

    goto/16 :goto_0

    :cond_6
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-eq v3, v8, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v9, :cond_7

    packed-switch p1, :pswitch_data_4

    :pswitch_37
    goto/16 :goto_0

    :pswitch_38
    const/16 v2, 0xcb3

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x15

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_39
    const/16 v2, 0xcb3

    goto/16 :goto_0

    :pswitch_3a
    const/16 v2, 0xc95

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_3b
    const/16 v2, 0xc9c

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x11

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_3c
    const/16 v2, 0xcb6

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0xe

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_3d
    const/16 v2, 0xc93

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x12

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_3e
    const/16 v2, 0xc8c

    goto/16 :goto_0

    :pswitch_3f
    const/16 v2, 0xcb1

    goto/16 :goto_0

    :pswitch_40
    const/16 v2, 0xc83

    goto/16 :goto_0

    :pswitch_41
    const/16 v2, 0xcd5

    goto/16 :goto_0

    :pswitch_42
    const/16 v2, 0xcb0

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x13

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_43
    const/16 v2, 0xc95

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_44
    const/16 v2, 0xc9c

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x14

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_45
    const/16 v2, 0xce2

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_8

    packed-switch p1, :pswitch_data_5

    :pswitch_46
    goto/16 :goto_0

    :pswitch_47
    const/16 v2, 0xd3d

    goto/16 :goto_0

    :pswitch_48
    const/16 v2, 0xd7a

    goto/16 :goto_0

    :pswitch_49
    const/16 v2, 0xd7b

    goto/16 :goto_0

    :pswitch_4a
    const/16 v2, 0xd7c

    goto/16 :goto_0

    :pswitch_4b
    const/16 v2, 0xd7d

    goto/16 :goto_0

    :pswitch_4c
    const/16 v2, 0xd7e

    goto/16 :goto_0

    :pswitch_4d
    const/16 v2, 0xd33

    goto/16 :goto_0

    :pswitch_4e
    const/16 v2, 0xd34

    goto/16 :goto_0

    :pswitch_4f
    const/16 v2, 0xd31

    goto/16 :goto_0

    :pswitch_50
    const/16 v2, 0xd31

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0xe

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_51
    const/16 v2, 0xd19

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0xf

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_52
    const/16 v2, 0xd2e

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x10

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_53
    const/16 v2, 0xd4c

    goto/16 :goto_0

    :pswitch_54
    const/16 v2, 0xd03

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_9

    packed-switch p1, :pswitch_data_6

    :pswitch_55
    goto/16 :goto_0

    :pswitch_56
    const/16 v2, 0xdf2

    goto/16 :goto_0

    :pswitch_57
    const/16 v2, 0xd9f

    goto/16 :goto_0

    :pswitch_58
    const/16 v2, 0xda5

    goto/16 :goto_0

    :pswitch_59
    const/16 v2, 0xdac

    goto/16 :goto_0

    :pswitch_5a
    const/16 v2, 0xdb3

    goto/16 :goto_0

    :pswitch_5b
    const/16 v2, 0xdb9

    goto/16 :goto_0

    :pswitch_5c
    const/16 v2, 0xdc5

    goto/16 :goto_0

    :pswitch_5d
    const/16 v2, 0xda6

    goto/16 :goto_0

    :pswitch_5e
    const/16 v2, 0xdc6

    goto/16 :goto_0

    :pswitch_5f
    const/16 v2, 0xd93

    goto/16 :goto_0

    :pswitch_60
    const/16 v2, 0xddb

    goto/16 :goto_0

    :pswitch_61
    const/16 v2, 0xd8d

    goto/16 :goto_0

    :pswitch_62
    const/16 v2, 0xd8e

    goto/16 :goto_0

    :pswitch_63
    const/16 v2, 0xdd8

    goto/16 :goto_0

    :cond_9
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v10, :cond_a

    packed-switch p1, :pswitch_data_7

    :pswitch_64
    goto/16 :goto_0

    :pswitch_65
    const/16 v2, 0xc44

    goto/16 :goto_0

    :pswitch_66
    const/16 v2, 0xc60

    goto/16 :goto_0

    :pswitch_67
    const/16 v2, 0xc33

    goto/16 :goto_0

    :pswitch_68
    const/16 v2, 0xc15

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_69
    const/16 v2, 0xc31

    goto/16 :goto_0

    :pswitch_6a
    const/16 v2, 0xc15

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_6b
    const/16 v2, 0xc16

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_6c
    const/16 v2, 0xc17

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v10, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_6d
    const/16 v2, 0xc18

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_6e
    const/16 v2, 0xc1f

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v3, 0x6

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_6f
    const/16 v2, 0xc21

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v3, 0x7

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_70
    const/16 v2, 0xc24

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x8

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_71
    const/16 v2, 0xc03

    goto/16 :goto_0

    :pswitch_72
    const/16 v2, 0xc01

    goto/16 :goto_0

    :cond_a
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    packed-switch p1, :pswitch_data_8

    :pswitch_73
    goto/16 :goto_0

    :pswitch_74
    const/16 v2, 0xb1a

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0xe

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_75
    const/16 v2, 0xb5f

    goto/16 :goto_0

    :pswitch_76
    const/16 v2, 0xb71

    goto/16 :goto_0

    :pswitch_77
    const/16 v2, 0xb15

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_78
    const/16 v2, 0xb17

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v10, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_79
    const/16 v2, 0xb17

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7a
    const/16 v2, 0xb17

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v3, 0x6

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7b
    const/16 v2, 0xb17

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/4 v3, 0x7

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7c
    const/16 v2, 0xb18

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x8

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7d
    const/16 v2, 0xb19

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0x9

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7e
    const/16 v2, 0xb19

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0xa

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_7f
    const/16 v2, 0xb19

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0xb

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_80
    const/16 v2, 0xb19

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0xc

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_81
    const/16 v2, 0xb1a

    sput-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v3, 0xd

    iput v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x902
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x981
        :pswitch_10
        :pswitch_1c
        :pswitch_1d
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_18
        :pswitch_19
        :pswitch_f
        :pswitch_f
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x981
        :pswitch_1f
        :pswitch_2b
        :pswitch_2c
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_27
        :pswitch_28
        :pswitch_1e
        :pswitch_1e
        :pswitch_29
        :pswitch_2a
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa82 -> :sswitch_0
        0xa83 -> :sswitch_b
        0xa85 -> :sswitch_1
        0xa86 -> :sswitch_2
        0xa87 -> :sswitch_3
        0xa88 -> :sswitch_4
        0xa89 -> :sswitch_5
        0xa8a -> :sswitch_6
        0xa8f -> :sswitch_7
        0xa90 -> :sswitch_8
        0xa91 -> :sswitch_d
        0xa93 -> :sswitch_9
        0xa94 -> :sswitch_a
        0xae0 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0xa06
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_33
        :pswitch_34
        :pswitch_2d
        :pswitch_2d
        :pswitch_35
        :pswitch_36
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc82
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_37
        :pswitch_37
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_37
        :pswitch_43
        :pswitch_44
        :pswitch_45
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xd02
        :pswitch_47
        :pswitch_46
        :pswitch_46
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_46
        :pswitch_46
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_46
        :pswitch_52
        :pswitch_53
        :pswitch_54
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xd82
        :pswitch_56
        :pswitch_55
        :pswitch_55
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_5f
        :pswitch_60
        :pswitch_55
        :pswitch_61
        :pswitch_62
        :pswitch_63
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc02
        :pswitch_65
        :pswitch_64
        :pswitch_64
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_64
        :pswitch_64
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_64
        :pswitch_70
        :pswitch_71
        :pswitch_72
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xb01
        :pswitch_74
        :pswitch_80
        :pswitch_81
        :pswitch_73
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_7c
        :pswitch_7d
        :pswitch_73
        :pswitch_73
        :pswitch_7e
        :pswitch_7f
    .end packed-switch
.end method

.method public getThirdModeKeyLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1    # Ljava/lang/CharSequence;

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    move-object v2, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getToggledKeyLabelForSmallLcd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v5, :cond_2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "\u0915\u094d\u0937"

    goto :goto_0

    :sswitch_1
    const-string v2, "\u0924\u094d\u0930"

    goto :goto_0

    :sswitch_2
    const-string v2, "\u091c\u094d\u091e"

    goto :goto_0

    :sswitch_3
    const-string v2, "\u0936\u094d\u0930"

    goto :goto_0

    :sswitch_4
    const-string v2, "\u0933"

    goto :goto_0

    :sswitch_5
    const-string v2, "\u0930\u094d"

    goto :goto_0

    :sswitch_6
    const-string v2, "\u0901"

    goto :goto_0

    :sswitch_7
    const-string v2, "\u093c"

    goto :goto_0

    :sswitch_8
    const-string v2, "\u094d\u0930"

    goto :goto_0

    :sswitch_9
    const-string v2, "\u0953"

    goto :goto_0

    :sswitch_a
    const-string v2, "\u0954"

    goto :goto_0

    :sswitch_b
    const-string v2, "\u0946"

    goto :goto_0

    :sswitch_c
    const-string v2, "\u0965"

    goto :goto_0

    :sswitch_d
    const-string v2, "\u093d"

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_e
    const-string v2, "\u09dc"

    goto :goto_0

    :sswitch_f
    const-string v2, "\u09dd"

    goto :goto_0

    :sswitch_10
    const-string v2, "\u09df"

    goto :goto_0

    :sswitch_11
    const-string v2, "\u09ce"

    goto :goto_0

    :sswitch_12
    const-string v2, "\u09b8\u09cd\u0995"

    goto :goto_0

    :sswitch_13
    const-string v2, "\u099e\u09cd\u099c"

    goto :goto_0

    :sswitch_14
    const-string v2, "\u099c\u09cd\u099e"

    goto :goto_0

    :sswitch_15
    const-string v2, "\u09b8\u09cd\u0995\u09cd\u09b0"

    goto :goto_0

    :sswitch_16
    const-string v2, "\u0995\u09cd\u099f"

    goto :goto_0

    :sswitch_17
    const-string v2, "\u0995\u09cd\u09a4"

    goto :goto_0

    :sswitch_18
    const-string v2, "\u0995\u09cd\u09b0"

    goto :goto_0

    :sswitch_19
    const-string v2, "\u0995\u09cd\u09b2"

    goto :goto_0

    :sswitch_1a
    const-string v2, "\u0995\u09cd\u09b8"

    goto :goto_0

    :sswitch_1b
    const-string v2, "\u0997\u09cd\u09a7"

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    :sswitch_1c
    const-string v2, "\u0a95\u0acd\u0ab7"

    goto :goto_0

    :sswitch_1d
    const-string v2, "\u0aa4\u0acd\u0ab0"

    goto :goto_0

    :sswitch_1e
    const-string v2, "\u0a9c\u0acd\u0a9e"

    goto :goto_0

    :sswitch_1f
    const-string v2, "\u0ab6\u0acd\u0ab0"

    goto :goto_0

    :sswitch_20
    const-string v2, "\u0aa6\u0acd\u0aae"

    goto :goto_0

    :sswitch_21
    const-string v2, "\u0aa6\u0acd\u0aaf"

    goto :goto_0

    :sswitch_22
    const-string v2, "\u0aa4\u0acd\u0aa4"

    goto/16 :goto_0

    :sswitch_23
    const-string v2, "\u0ab3"

    goto/16 :goto_0

    :sswitch_24
    const-string v2, "\u0aa4\u0acd\u0a95"

    goto/16 :goto_0

    :sswitch_25
    const-string v2, "\u0ab0\u0acd"

    goto/16 :goto_0

    :sswitch_26
    const-string v2, "\u0a81"

    goto/16 :goto_0

    :sswitch_27
    const-string v2, "\u0abc"

    goto/16 :goto_0

    :sswitch_28
    const-string v2, "\u0ac4"

    goto/16 :goto_0

    :sswitch_29
    const-string v2, "\u0ae2"

    goto/16 :goto_0

    :cond_4
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-string v2, "\u0a36"

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "\u0a59"

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "\u0a5a"

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "\u0a5b"

    goto/16 :goto_0

    :pswitch_5
    const-string v2, "\u0a5e"

    goto/16 :goto_0

    :pswitch_6
    const-string v2, "\u0a33"

    goto/16 :goto_0

    :pswitch_7
    const-string v2, "\u0a74"

    goto/16 :goto_0

    :pswitch_8
    const-string v2, "\u0a71"

    goto/16 :goto_0

    :pswitch_9
    const-string v2, "\u0a4d"

    goto/16 :goto_0

    :cond_5
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    sparse-switch v0, :sswitch_data_3

    goto/16 :goto_0

    :sswitch_2a
    const-string v2, "\u0cb3"

    goto/16 :goto_0

    :sswitch_2b
    const-string v2, "\u0c95\u0ccd\u0cb7"

    goto/16 :goto_0

    :sswitch_2c
    const-string v2, "\u0c9c\u0ccd\u0c9e"

    goto/16 :goto_0

    :sswitch_2d
    const-string v2, "\u0cb6\u0ccd\u0cb0\u0cc0"

    goto/16 :goto_0

    :sswitch_2e
    const-string v2, "\u0c93\u0ce6"

    goto/16 :goto_0

    :sswitch_2f
    const-string v2, "\u0c8c"

    goto/16 :goto_0

    :sswitch_30
    const-string v2, "\u0cb1"

    goto/16 :goto_0

    :sswitch_31
    const-string v2, "\u0c83"

    goto/16 :goto_0

    :sswitch_32
    const-string v2, "\u0cd5"

    goto/16 :goto_0

    :sswitch_33
    const-string v2, "\u0cb0\u0ccd"

    goto/16 :goto_0

    :sswitch_34
    const-string v2, "\u0c95\u0cc3"

    goto/16 :goto_0

    :sswitch_35
    const-string v2, "\u0c9c\u0cbc\u0ccd"

    goto/16 :goto_0

    :sswitch_36
    const-string v2, "\u0ce2"

    goto/16 :goto_0

    :sswitch_37
    const-string v2, "\u0cb3\u0ccd"

    goto/16 :goto_0

    :cond_6
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    sparse-switch v0, :sswitch_data_4

    goto/16 :goto_0

    :sswitch_38
    const-string v2, "\u0d7a"

    goto/16 :goto_0

    :sswitch_39
    const-string v2, "\u0d7b"

    goto/16 :goto_0

    :sswitch_3a
    const-string v2, "\u0d7c"

    goto/16 :goto_0

    :sswitch_3b
    const-string v2, "\u0d7d"

    goto/16 :goto_0

    :sswitch_3c
    const-string v2, "\u0d7e"

    goto/16 :goto_0

    :sswitch_3d
    const-string v2, "\u0d33"

    goto/16 :goto_0

    :sswitch_3e
    const-string v2, "\u0d34"

    goto/16 :goto_0

    :sswitch_3f
    const-string v2, "\u0d31"

    goto/16 :goto_0

    :sswitch_40
    const-string v2, "\u0d31\u0d4d\u0d31"

    goto/16 :goto_0

    :sswitch_41
    const-string v2, "\u0d19\u0d4d\u0d15"

    goto/16 :goto_0

    :sswitch_42
    const-string v2, "\u0d2e\u0d4d\u0d2a"

    goto/16 :goto_0

    :sswitch_43
    const-string v2, "\u0d4c"

    goto/16 :goto_0

    :sswitch_44
    const-string v2, "\u0d03"

    goto/16 :goto_0

    :sswitch_45
    const-string v2, "\u0d3d"

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_8

    sparse-switch v0, :sswitch_data_5

    goto/16 :goto_0

    :sswitch_46
    const-string v2, "\u0d9f"

    goto/16 :goto_0

    :sswitch_47
    const-string v2, "\u0da5"

    goto/16 :goto_0

    :sswitch_48
    const-string v2, "\u0dac"

    goto/16 :goto_0

    :sswitch_49
    const-string v2, "\u0db3"

    goto/16 :goto_0

    :sswitch_4a
    const-string v2, "\u0db9"

    goto/16 :goto_0

    :sswitch_4b
    const-string v2, "\u0dc5"

    goto/16 :goto_0

    :sswitch_4c
    const-string v2, "\u0da6"

    goto/16 :goto_0

    :sswitch_4d
    const-string v2, "\u0dc6"

    goto/16 :goto_0

    :sswitch_4e
    const-string v2, "\u0d93"

    goto/16 :goto_0

    :sswitch_4f
    const-string v2, "\u0ddb"

    goto/16 :goto_0

    :sswitch_50
    const-string v2, "\u0d8d"

    goto/16 :goto_0

    :sswitch_51
    const-string v2, "\u0d8e"

    goto/16 :goto_0

    :sswitch_52
    const-string v2, "\u0dd8"

    goto/16 :goto_0

    :sswitch_53
    const-string v2, "\u0df2"

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    sparse-switch v0, :sswitch_data_6

    goto/16 :goto_0

    :sswitch_54
    const-string v2, "\u0c60"

    goto/16 :goto_0

    :sswitch_55
    const-string v2, "\u0c33"

    goto/16 :goto_0

    :sswitch_56
    const-string v2, "\u0c15\u0c4d\u0c37"

    goto/16 :goto_0

    :sswitch_57
    const-string v2, "\u0c31"

    goto/16 :goto_0

    :sswitch_58
    const-string v2, "\u0c15\u0c4d\u0c30"

    goto/16 :goto_0

    :sswitch_59
    const-string v2, "\u0c16\u0c4d\u0c30"

    goto/16 :goto_0

    :sswitch_5a
    const-string v2, "\u0c17\u0c4d\u0c30"

    goto/16 :goto_0

    :sswitch_5b
    const-string v2, "\u0c18\u0c4d\u0c30"

    goto/16 :goto_0

    :sswitch_5c
    const-string v2, "\u0c1f\u0c4d\u0c30"

    goto/16 :goto_0

    :sswitch_5d
    const-string v2, "\u0c21\u0c4d\u0c30"

    goto/16 :goto_0

    :sswitch_5e
    const-string v2, "\u0c24\u0c4d\u0c30"

    goto/16 :goto_0

    :sswitch_5f
    const-string v2, "\u0c03"

    goto/16 :goto_0

    :sswitch_60
    const-string v2, "\u0c01"

    goto/16 :goto_0

    :sswitch_61
    const-string v2, "\u0c44"

    goto/16 :goto_0

    :cond_9
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    sparse-switch v0, :sswitch_data_7

    goto/16 :goto_0

    :sswitch_62
    const-string v2, "\u0b5f"

    goto/16 :goto_0

    :sswitch_63
    const-string v2, "\u0b71"

    goto/16 :goto_0

    :sswitch_64
    const-string v2, "\u0b15\u0b4d\u0b37"

    goto/16 :goto_0

    :sswitch_65
    const-string v2, "\u0b17\u0b4d\u0b27"

    goto/16 :goto_0

    :sswitch_66
    const-string v2, "\u0b17\u0b4d\u0b28"

    goto/16 :goto_0

    :sswitch_67
    const-string v2, "\u0b17\u0b4d\u0b2e"

    goto/16 :goto_0

    :sswitch_68
    const-string v2, "\u0b17\u0b4d\u0b33"

    goto/16 :goto_0

    :sswitch_69
    const-string v2, "\u0b18\u0b4d\u0b28"

    goto/16 :goto_0

    :sswitch_6a
    const-string v2, "\u0b19\u0b4d\u0b15"

    goto/16 :goto_0

    :sswitch_6b
    const-string v2, "\u0b19\u0b4d\u0b16"

    goto/16 :goto_0

    :sswitch_6c
    const-string v2, "\u0b19\u0b4d\u0b17"

    goto/16 :goto_0

    :sswitch_6d
    const-string v2, "\u0b19\u0b4d\u0b18"

    goto/16 :goto_0

    :sswitch_6e
    const-string v2, "\u0b1a\u0b4d\u0b1a"

    goto/16 :goto_0

    :sswitch_6f
    const-string v2, "\u0b1a\u0b4d\u0b1b"

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x905 -> :sswitch_0
        0x906 -> :sswitch_1
        0x907 -> :sswitch_2
        0x908 -> :sswitch_3
        0x909 -> :sswitch_4
        0x90a -> :sswitch_5
        0x90b -> :sswitch_c
        0x90f -> :sswitch_6
        0x910 -> :sswitch_7
        0x911 -> :sswitch_d
        0x913 -> :sswitch_8
        0x914 -> :sswitch_9
        0x117d5 -> :sswitch_b
        0x1209d -> :sswitch_a
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x985 -> :sswitch_e
        0x986 -> :sswitch_f
        0x987 -> :sswitch_10
        0x988 -> :sswitch_11
        0x989 -> :sswitch_12
        0x98a -> :sswitch_13
        0x98b -> :sswitch_14
        0x98f -> :sswitch_15
        0x990 -> :sswitch_16
        0x993 -> :sswitch_17
        0x994 -> :sswitch_18
        0x1309c -> :sswitch_1b
        0x1309d -> :sswitch_19
        0x1309e -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xa85 -> :sswitch_1c
        0xa86 -> :sswitch_1d
        0xa87 -> :sswitch_1e
        0xa88 -> :sswitch_1f
        0xa89 -> :sswitch_20
        0xa8a -> :sswitch_21
        0xa8f -> :sswitch_22
        0xa90 -> :sswitch_23
        0xa91 -> :sswitch_29
        0xa93 -> :sswitch_24
        0xa94 -> :sswitch_25
        0xae0 -> :sswitch_28
        0x1509d -> :sswitch_26
        0x1509e -> :sswitch_27
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xa06
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0xc85 -> :sswitch_2a
        0xc86 -> :sswitch_2b
        0xc87 -> :sswitch_2c
        0xc88 -> :sswitch_2d
        0xc89 -> :sswitch_2e
        0xc8a -> :sswitch_2f
        0xc8b -> :sswitch_30
        0xc8e -> :sswitch_31
        0xc8f -> :sswitch_32
        0xc90 -> :sswitch_33
        0xc92 -> :sswitch_34
        0xc93 -> :sswitch_35
        0xc94 -> :sswitch_36
        0x1909d -> :sswitch_37
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0xd05 -> :sswitch_38
        0xd06 -> :sswitch_39
        0xd07 -> :sswitch_3a
        0xd08 -> :sswitch_3b
        0xd09 -> :sswitch_3c
        0xd0a -> :sswitch_3d
        0xd0b -> :sswitch_3e
        0xd0e -> :sswitch_3f
        0xd0f -> :sswitch_40
        0xd10 -> :sswitch_41
        0xd12 -> :sswitch_42
        0xd13 -> :sswitch_43
        0xd14 -> :sswitch_44
        0x1a09d -> :sswitch_45
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0xd85 -> :sswitch_46
        0xd86 -> :sswitch_47
        0xd87 -> :sswitch_48
        0xd88 -> :sswitch_49
        0xd89 -> :sswitch_4a
        0xd8a -> :sswitch_4b
        0xd8b -> :sswitch_4c
        0xd8c -> :sswitch_4d
        0xd91 -> :sswitch_4e
        0xd92 -> :sswitch_4f
        0xd94 -> :sswitch_50
        0xd95 -> :sswitch_51
        0xd96 -> :sswitch_52
        0x1b09d -> :sswitch_53
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0xc05 -> :sswitch_54
        0xc06 -> :sswitch_55
        0xc07 -> :sswitch_56
        0xc08 -> :sswitch_57
        0xc09 -> :sswitch_58
        0xc0a -> :sswitch_59
        0xc0b -> :sswitch_5a
        0xc0e -> :sswitch_5b
        0xc0f -> :sswitch_5c
        0xc10 -> :sswitch_5d
        0xc12 -> :sswitch_5e
        0xc13 -> :sswitch_5f
        0xc14 -> :sswitch_60
        0x1809d -> :sswitch_61
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        0xb05 -> :sswitch_62
        0xb06 -> :sswitch_63
        0xb07 -> :sswitch_64
        0xb08 -> :sswitch_65
        0xb09 -> :sswitch_66
        0xb0a -> :sswitch_67
        0xb0b -> :sswitch_68
        0xb0f -> :sswitch_69
        0xb10 -> :sswitch_6a
        0xb13 -> :sswitch_6b
        0xb14 -> :sswitch_6c
        0x1609c -> :sswitch_6f
        0x1609d -> :sswitch_6d
        0x1609e -> :sswitch_6e
    .end sparse-switch
.end method

.method public getToggledKeyCode(I)I
    .locals 4
    .param p1    # I

    const/4 v3, 0x4

    move v0, p1

    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getToggledKeyCodeForSmallLcd(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v0, 0x902

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x94d

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x93e

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x93f

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x940

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x941

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x942

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x947

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x948

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x94b

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x94c

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x903

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x943

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x945

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    packed-switch p1, :pswitch_data_1

    :pswitch_f
    goto :goto_0

    :pswitch_10
    const/16 v0, 0x981

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x9cd

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x9be

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x9bf

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x9c0

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x9c1

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x9c2

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x9c3

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x9c7

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x9c8

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x9cb

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x9cc

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x982

    goto :goto_0

    :pswitch_1d
    const/16 v0, 0x983

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x902

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xacd

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xabe

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xabf

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xac0

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xac1

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0xac2

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0xac7

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0xac8

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0xacb

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0xacc

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x903

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0xa82

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0xa83

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0xac3

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0xac9

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0xa3e

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0xa3f

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0xa40

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0xa41

    goto/16 :goto_0

    :sswitch_14
    const/16 v0, 0xa42

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0xa47

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0xa48

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0xa4b

    goto/16 :goto_0

    :sswitch_18
    const/16 v0, 0xa4c

    goto/16 :goto_0

    :sswitch_19
    const/16 v0, 0xa4c

    goto/16 :goto_0

    :sswitch_1a
    const/16 v0, 0xa70

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    packed-switch p1, :pswitch_data_2

    :pswitch_1e
    goto/16 :goto_0

    :pswitch_1f
    const/16 v0, 0xbcd

    goto/16 :goto_0

    :pswitch_20
    const/16 v0, 0xbbe

    goto/16 :goto_0

    :pswitch_21
    const/16 v0, 0xbbf

    goto/16 :goto_0

    :pswitch_22
    const/16 v0, 0xbc0

    goto/16 :goto_0

    :pswitch_23
    const/16 v0, 0xbc1

    goto/16 :goto_0

    :pswitch_24
    const/16 v0, 0xbc2

    goto/16 :goto_0

    :pswitch_25
    const/16 v0, 0xbc6

    goto/16 :goto_0

    :pswitch_26
    const/16 v0, 0xbc7

    goto/16 :goto_0

    :pswitch_27
    const/16 v0, 0xbc8

    goto/16 :goto_0

    :pswitch_28
    const/16 v0, 0xbca

    goto/16 :goto_0

    :pswitch_29
    const/16 v0, 0xbcb

    goto/16 :goto_0

    :pswitch_2a
    const/16 v0, 0xbcc

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    packed-switch p1, :pswitch_data_3

    :pswitch_2b
    goto/16 :goto_0

    :pswitch_2c
    const/16 v0, 0xc82

    goto/16 :goto_0

    :pswitch_2d
    const/16 v0, 0xccd

    goto/16 :goto_0

    :pswitch_2e
    const/16 v0, 0xcbe

    goto/16 :goto_0

    :pswitch_2f
    const/16 v0, 0xcbf

    goto/16 :goto_0

    :pswitch_30
    const/16 v0, 0xcc0

    goto/16 :goto_0

    :pswitch_31
    const/16 v0, 0xcc1

    goto/16 :goto_0

    :pswitch_32
    const/16 v0, 0xcc2

    goto/16 :goto_0

    :pswitch_33
    const/16 v0, 0xcc3

    goto/16 :goto_0

    :pswitch_34
    const/16 v0, 0xcc6

    goto/16 :goto_0

    :pswitch_35
    const/16 v0, 0xcc7

    goto/16 :goto_0

    :pswitch_36
    const/16 v0, 0xcc8

    goto/16 :goto_0

    :pswitch_37
    const/16 v0, 0xcca

    goto/16 :goto_0

    :pswitch_38
    const/16 v0, 0xccb

    goto/16 :goto_0

    :pswitch_39
    const/16 v0, 0xccc

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    packed-switch p1, :pswitch_data_4

    :pswitch_3a
    goto/16 :goto_0

    :pswitch_3b
    const/16 v0, 0xd02

    goto/16 :goto_0

    :pswitch_3c
    const/16 v0, 0xd4d

    goto/16 :goto_0

    :pswitch_3d
    const/16 v0, 0xd3e

    goto/16 :goto_0

    :pswitch_3e
    const/16 v0, 0xd3f

    goto/16 :goto_0

    :pswitch_3f
    const/16 v0, 0xd40

    goto/16 :goto_0

    :pswitch_40
    const/16 v0, 0xd41

    goto/16 :goto_0

    :pswitch_41
    const/16 v0, 0xd42

    goto/16 :goto_0

    :pswitch_42
    const/16 v0, 0xd43

    goto/16 :goto_0

    :pswitch_43
    const/16 v0, 0xd46

    goto/16 :goto_0

    :pswitch_44
    const/16 v0, 0xd47

    goto/16 :goto_0

    :pswitch_45
    const/16 v0, 0xd48

    goto/16 :goto_0

    :pswitch_46
    const/16 v0, 0xd4a

    goto/16 :goto_0

    :pswitch_47
    const/16 v0, 0xd4b

    goto/16 :goto_0

    :pswitch_48
    const/16 v0, 0xd57

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    packed-switch p1, :pswitch_data_5

    :pswitch_49
    goto/16 :goto_0

    :pswitch_4a
    const/16 v0, 0xd82

    goto/16 :goto_0

    :pswitch_4b
    const/16 v0, 0xdca

    goto/16 :goto_0

    :pswitch_4c
    const/16 v0, 0xdcf

    goto/16 :goto_0

    :pswitch_4d
    const/16 v0, 0xdd0

    goto/16 :goto_0

    :pswitch_4e
    const/16 v0, 0xdd1

    goto/16 :goto_0

    :pswitch_4f
    const/16 v0, 0xdd2

    goto/16 :goto_0

    :pswitch_50
    const/16 v0, 0xdd3

    goto/16 :goto_0

    :pswitch_51
    const/16 v0, 0xdd4

    goto/16 :goto_0

    :pswitch_52
    const/16 v0, 0xdd6

    goto/16 :goto_0

    :pswitch_53
    const/16 v0, 0xdd9

    goto/16 :goto_0

    :pswitch_54
    const/16 v0, 0xdda

    goto/16 :goto_0

    :pswitch_55
    const/16 v0, 0xddc

    goto/16 :goto_0

    :pswitch_56
    const/16 v0, 0xddd

    goto/16 :goto_0

    :pswitch_57
    const/16 v0, 0xdde

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v3, :cond_b

    invoke-virtual {p0, p1, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v1

    if-eqz v1, :cond_a

    add-int/lit8 v0, p1, 0x38

    :cond_a
    sparse-switch p1, :sswitch_data_2

    goto/16 :goto_0

    :sswitch_1b
    const/16 v0, 0xc02

    goto/16 :goto_0

    :sswitch_1c
    const/16 v0, 0xc4d

    goto/16 :goto_0

    :sswitch_1d
    const/16 v0, 0xc60

    goto/16 :goto_0

    :cond_b
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    packed-switch p1, :pswitch_data_6

    :pswitch_58
    goto/16 :goto_0

    :pswitch_59
    const/16 v0, 0xb01

    goto/16 :goto_0

    :pswitch_5a
    const/16 v0, 0xb4d

    goto/16 :goto_0

    :pswitch_5b
    const/16 v0, 0xb3e

    goto/16 :goto_0

    :pswitch_5c
    const/16 v0, 0xb3f

    goto/16 :goto_0

    :pswitch_5d
    const/16 v0, 0xb40

    goto/16 :goto_0

    :pswitch_5e
    const/16 v0, 0xb41

    goto/16 :goto_0

    :pswitch_5f
    const/16 v0, 0xb42

    goto/16 :goto_0

    :pswitch_60
    const/16 v0, 0xb43

    goto/16 :goto_0

    :pswitch_61
    const/16 v0, 0xb47

    goto/16 :goto_0

    :pswitch_62
    const/16 v0, 0xb48

    goto/16 :goto_0

    :pswitch_63
    const/16 v0, 0xb4b

    goto/16 :goto_0

    :pswitch_64
    const/16 v0, 0xb4c

    goto/16 :goto_0

    :pswitch_65
    const/16 v0, 0xb02

    goto/16 :goto_0

    :pswitch_66
    const/16 v0, 0xb03

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x902
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x981
        :pswitch_10
        :pswitch_1c
        :pswitch_1d
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_18
        :pswitch_19
        :pswitch_f
        :pswitch_f
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x902 -> :sswitch_0
        0x903 -> :sswitch_b
        0xa82 -> :sswitch_c
        0xa83 -> :sswitch_d
        0xa85 -> :sswitch_1
        0xa86 -> :sswitch_2
        0xa87 -> :sswitch_3
        0xa88 -> :sswitch_4
        0xa89 -> :sswitch_5
        0xa8a -> :sswitch_6
        0xa8f -> :sswitch_7
        0xa90 -> :sswitch_8
        0xa91 -> :sswitch_f
        0xa93 -> :sswitch_9
        0xa94 -> :sswitch_a
        0xae0 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa06 -> :sswitch_10
        0xa07 -> :sswitch_11
        0xa08 -> :sswitch_12
        0xa09 -> :sswitch_13
        0xa0a -> :sswitch_14
        0xa0f -> :sswitch_15
        0xa10 -> :sswitch_16
        0xa13 -> :sswitch_17
        0xa14 -> :sswitch_18
        0xa3f -> :sswitch_19
        0xa70 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0xb85
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_1e
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc82
        :pswitch_2c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_2b
        :pswitch_2b
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_2b
        :pswitch_37
        :pswitch_38
        :pswitch_39
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xd02
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_3a
        :pswitch_3a
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_3a
        :pswitch_46
        :pswitch_47
        :pswitch_48
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xd82
        :pswitch_4a
        :pswitch_49
        :pswitch_49
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_53
        :pswitch_54
        :pswitch_49
        :pswitch_55
        :pswitch_56
        :pswitch_57
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xc02 -> :sswitch_1b
        0xc05 -> :sswitch_1c
        0xc60 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0xb01
        :pswitch_59
        :pswitch_65
        :pswitch_66
        :pswitch_58
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_61
        :pswitch_62
        :pswitch_58
        :pswitch_58
        :pswitch_63
        :pswitch_64
    .end packed-switch
.end method

.method public getToggledKeyLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1    # Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move-object v1, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-boolean v2, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getToggledKeyLabelForSmallLcd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v4, :cond_2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "\u094d"

    goto :goto_0

    :sswitch_1
    const-string v1, "\u093e"

    goto :goto_0

    :sswitch_2
    const-string v1, "\u093f"

    goto :goto_0

    :sswitch_3
    const-string v1, "\u0940"

    goto :goto_0

    :sswitch_4
    const-string v1, "\u0941"

    goto :goto_0

    :sswitch_5
    const-string v1, "\u0942"

    goto :goto_0

    :sswitch_6
    const-string v1, "\u0947"

    goto :goto_0

    :sswitch_7
    const-string v1, "\u0948"

    goto :goto_0

    :sswitch_8
    const-string v1, "\u094b"

    goto :goto_0

    :sswitch_9
    const-string v1, "\u094c"

    goto :goto_0

    :sswitch_a
    const-string v1, "\u0902"

    goto :goto_0

    :sswitch_b
    const-string v1, "\u0903"

    goto :goto_0

    :sswitch_c
    const-string v1, "\u0943"

    goto :goto_0

    :sswitch_d
    const-string v1, "\u0945"

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_e
    const-string v1, "\u09cd"

    goto :goto_0

    :sswitch_f
    const-string v1, "\u09be"

    goto :goto_0

    :sswitch_10
    const-string v1, "\u09bf"

    goto :goto_0

    :sswitch_11
    const-string v1, "\u09c0"

    goto :goto_0

    :sswitch_12
    const-string v1, "\u09c1"

    goto :goto_0

    :sswitch_13
    const-string v1, "\u09c2"

    goto :goto_0

    :sswitch_14
    const-string v1, "\u09c3"

    goto :goto_0

    :sswitch_15
    const-string v1, "\u09c7"

    goto :goto_0

    :sswitch_16
    const-string v1, "\u09c8"

    goto :goto_0

    :sswitch_17
    const-string v1, "\u09cb"

    goto :goto_0

    :sswitch_18
    const-string v1, "\u09cc"

    goto :goto_0

    :sswitch_19
    const-string v1, "\u0982"

    goto :goto_0

    :sswitch_1a
    const-string v1, "\u0983"

    goto :goto_0

    :sswitch_1b
    const-string v1, "\u0981"

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    :sswitch_1c
    const-string v1, "\u0acd"

    goto :goto_0

    :sswitch_1d
    const-string v1, "\u0abe"

    goto :goto_0

    :sswitch_1e
    const-string v1, "\u0abf"

    goto :goto_0

    :sswitch_1f
    const-string v1, "\u0ac0"

    goto :goto_0

    :sswitch_20
    const-string v1, "\u0ac1"

    goto :goto_0

    :sswitch_21
    const-string v1, "\u0ac2"

    goto :goto_0

    :sswitch_22
    const-string v1, "\u0ac7"

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "\u0ac8"

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "\u0acb"

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "\u0acc"

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "\u0a82"

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "\u0a83"

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "\u0ac3"

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "\u0ac9"

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    sparse-switch v0, :sswitch_data_3

    goto/16 :goto_0

    :sswitch_2a
    const-string v1, "\u0a3e"

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "\u0a3f"

    goto/16 :goto_0

    :sswitch_2c
    const-string v1, "\u0a40"

    goto/16 :goto_0

    :sswitch_2d
    const-string v1, "\u0a41"

    goto/16 :goto_0

    :sswitch_2e
    const-string v1, "\u0a42"

    goto/16 :goto_0

    :sswitch_2f
    const-string v1, "\u0a47"

    goto/16 :goto_0

    :sswitch_30
    const-string v1, "\u0a48"

    goto/16 :goto_0

    :sswitch_31
    const-string v1, "\u0a4b"

    goto/16 :goto_0

    :sswitch_32
    const-string v1, "\u0a4c"

    goto/16 :goto_0

    :sswitch_33
    const-string v1, "\u0a3f"

    goto/16 :goto_0

    :sswitch_34
    const-string v1, "\u0a70"

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-string v1, "\u0bcd"

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "\u0bbe"

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "\u0bbf"

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "\u0bc0"

    goto/16 :goto_0

    :pswitch_5
    const-string v1, "\u0bc1"

    goto/16 :goto_0

    :pswitch_6
    const-string v1, "\u0bc2"

    goto/16 :goto_0

    :pswitch_7
    const-string v1, "\u0bc6"

    goto/16 :goto_0

    :pswitch_8
    const-string v1, "\u0bc7"

    goto/16 :goto_0

    :pswitch_9
    const-string v1, "\u0bc8"

    goto/16 :goto_0

    :pswitch_a
    const-string v1, "\u0bca"

    goto/16 :goto_0

    :pswitch_b
    const-string v1, "\u0bcb"

    goto/16 :goto_0

    :pswitch_c
    const-string v1, "\u0bcc"

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    sparse-switch v0, :sswitch_data_4

    goto/16 :goto_0

    :sswitch_35
    const-string v1, "\u0ccd"

    goto/16 :goto_0

    :sswitch_36
    const-string v1, "\u0cbe"

    goto/16 :goto_0

    :sswitch_37
    const-string v1, "\u0cbf"

    goto/16 :goto_0

    :sswitch_38
    const-string v1, "\u0cc0"

    goto/16 :goto_0

    :sswitch_39
    const-string v1, "\u0cc1"

    goto/16 :goto_0

    :sswitch_3a
    const-string v1, "\u0cc2"

    goto/16 :goto_0

    :sswitch_3b
    const-string v1, "\u0cc3"

    goto/16 :goto_0

    :sswitch_3c
    const-string v1, "\u0cc6"

    goto/16 :goto_0

    :sswitch_3d
    const-string v1, "\u0cc7"

    goto/16 :goto_0

    :sswitch_3e
    const-string v1, "\u0cc8"

    goto/16 :goto_0

    :sswitch_3f
    const-string v1, "\u0cca"

    goto/16 :goto_0

    :sswitch_40
    const-string v1, "\u0ccb"

    goto/16 :goto_0

    :sswitch_41
    const-string v1, "\u0ccc"

    goto/16 :goto_0

    :sswitch_42
    const-string v1, "\u0c82"

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    sparse-switch v0, :sswitch_data_5

    goto/16 :goto_0

    :sswitch_43
    const-string v1, "\u0d4d"

    goto/16 :goto_0

    :sswitch_44
    const-string v1, "\u0d3e"

    goto/16 :goto_0

    :sswitch_45
    const-string v1, "\u0d3f"

    goto/16 :goto_0

    :sswitch_46
    const-string v1, "\u0d40"

    goto/16 :goto_0

    :sswitch_47
    const-string v1, "\u0d41"

    goto/16 :goto_0

    :sswitch_48
    const-string v1, "\u0d42"

    goto/16 :goto_0

    :sswitch_49
    const-string v1, "\u0d43"

    goto/16 :goto_0

    :sswitch_4a
    const-string v1, "\u0d46"

    goto/16 :goto_0

    :sswitch_4b
    const-string v1, "\u0d47"

    goto/16 :goto_0

    :sswitch_4c
    const-string v1, "\u0d48"

    goto/16 :goto_0

    :sswitch_4d
    const-string v1, "\u0d4a"

    goto/16 :goto_0

    :sswitch_4e
    const-string v1, "\u0d4b"

    goto/16 :goto_0

    :sswitch_4f
    const-string v1, "\u0d57"

    goto/16 :goto_0

    :sswitch_50
    const-string v1, "\u0d02"

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    sparse-switch v0, :sswitch_data_6

    goto/16 :goto_0

    :sswitch_51
    const-string v1, "\u0dca"

    goto/16 :goto_0

    :sswitch_52
    const-string v1, "\u0dcf"

    goto/16 :goto_0

    :sswitch_53
    const-string v1, "\u0dd0"

    goto/16 :goto_0

    :sswitch_54
    const-string v1, "\u0dd1"

    goto/16 :goto_0

    :sswitch_55
    const-string v1, "\u0dd2"

    goto/16 :goto_0

    :sswitch_56
    const-string v1, "\u0dd3"

    goto/16 :goto_0

    :sswitch_57
    const-string v1, "\u0dd4"

    goto/16 :goto_0

    :sswitch_58
    const-string v1, "\u0dd6"

    goto/16 :goto_0

    :sswitch_59
    const-string v1, "\u0dd9"

    goto/16 :goto_0

    :sswitch_5a
    const-string v1, "\u0dda"

    goto/16 :goto_0

    :sswitch_5b
    const-string v1, "\u0ddc"

    goto/16 :goto_0

    :sswitch_5c
    const-string v1, "\u0ddd"

    goto/16 :goto_0

    :sswitch_5d
    const-string v1, "\u0dde"

    goto/16 :goto_0

    :sswitch_5e
    const-string v1, "\u0d82"

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    sparse-switch v0, :sswitch_data_7

    goto/16 :goto_0

    :sswitch_5f
    const-string v1, "\u0c4d"

    goto/16 :goto_0

    :sswitch_60
    const-string v1, "\u0c3e"

    goto/16 :goto_0

    :sswitch_61
    const-string v1, "\u0c3f"

    goto/16 :goto_0

    :sswitch_62
    const-string v1, "\u0c40"

    goto/16 :goto_0

    :sswitch_63
    const-string v1, "\u0c41"

    goto/16 :goto_0

    :sswitch_64
    const-string v1, "\u0c42"

    goto/16 :goto_0

    :sswitch_65
    const-string v1, "\u0c43"

    goto/16 :goto_0

    :sswitch_66
    const-string v1, "\u0c46"

    goto/16 :goto_0

    :sswitch_67
    const-string v1, "\u0c47"

    goto/16 :goto_0

    :sswitch_68
    const-string v1, "\u0c48"

    goto/16 :goto_0

    :sswitch_69
    const-string v1, "\u0c4a"

    goto/16 :goto_0

    :sswitch_6a
    const-string v1, "\u0c4b"

    goto/16 :goto_0

    :sswitch_6b
    const-string v1, "\u0c4c"

    goto/16 :goto_0

    :sswitch_6c
    const-string v1, "\u0c02"

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    sparse-switch v0, :sswitch_data_8

    goto/16 :goto_0

    :sswitch_6d
    const-string v1, "\u0b4d"

    goto/16 :goto_0

    :sswitch_6e
    const-string v1, "\u0b3e"

    goto/16 :goto_0

    :sswitch_6f
    const-string v1, "\u0b3f"

    goto/16 :goto_0

    :sswitch_70
    const-string v1, "\u0b40"

    goto/16 :goto_0

    :sswitch_71
    const-string v1, "\u0b41"

    goto/16 :goto_0

    :sswitch_72
    const-string v1, "\u0b42"

    goto/16 :goto_0

    :sswitch_73
    const-string v1, "\u0b43"

    goto/16 :goto_0

    :sswitch_74
    const-string v1, "\u0b47"

    goto/16 :goto_0

    :sswitch_75
    const-string v1, "\u0b48"

    goto/16 :goto_0

    :sswitch_76
    const-string v1, "\u0b4b"

    goto/16 :goto_0

    :sswitch_77
    const-string v1, "\u0b4c"

    goto/16 :goto_0

    :sswitch_78
    const-string v1, "\u0b02"

    goto/16 :goto_0

    :sswitch_79
    const-string v1, "\u0b03"

    goto/16 :goto_0

    :sswitch_7a
    const-string v1, "\u0b01"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x905 -> :sswitch_0
        0x906 -> :sswitch_1
        0x907 -> :sswitch_2
        0x908 -> :sswitch_3
        0x909 -> :sswitch_4
        0x90a -> :sswitch_5
        0x90b -> :sswitch_c
        0x90f -> :sswitch_6
        0x910 -> :sswitch_7
        0x911 -> :sswitch_d
        0x913 -> :sswitch_8
        0x914 -> :sswitch_9
        0x117d5 -> :sswitch_b
        0x1209d -> :sswitch_a
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x985 -> :sswitch_e
        0x986 -> :sswitch_f
        0x987 -> :sswitch_10
        0x988 -> :sswitch_11
        0x989 -> :sswitch_12
        0x98a -> :sswitch_13
        0x98b -> :sswitch_14
        0x98f -> :sswitch_15
        0x990 -> :sswitch_16
        0x993 -> :sswitch_17
        0x994 -> :sswitch_18
        0x1309c -> :sswitch_1b
        0x1309d -> :sswitch_19
        0x1309e -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xa85 -> :sswitch_1c
        0xa86 -> :sswitch_1d
        0xa87 -> :sswitch_1e
        0xa88 -> :sswitch_1f
        0xa89 -> :sswitch_20
        0xa8a -> :sswitch_21
        0xa8f -> :sswitch_22
        0xa90 -> :sswitch_23
        0xa91 -> :sswitch_29
        0xa93 -> :sswitch_24
        0xa94 -> :sswitch_25
        0xae0 -> :sswitch_28
        0x1509d -> :sswitch_26
        0x1509e -> :sswitch_27
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0xa06 -> :sswitch_2a
        0xa07 -> :sswitch_2b
        0xa08 -> :sswitch_2c
        0xa09 -> :sswitch_2d
        0xa0a -> :sswitch_2e
        0xa0f -> :sswitch_2f
        0xa10 -> :sswitch_30
        0xa13 -> :sswitch_31
        0xa14 -> :sswitch_32
        0xa3f -> :sswitch_33
        0xa70 -> :sswitch_34
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xb85
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0xc85 -> :sswitch_35
        0xc86 -> :sswitch_36
        0xc87 -> :sswitch_37
        0xc88 -> :sswitch_38
        0xc89 -> :sswitch_39
        0xc8a -> :sswitch_3a
        0xc8b -> :sswitch_3b
        0xc8e -> :sswitch_3c
        0xc8f -> :sswitch_3d
        0xc90 -> :sswitch_3e
        0xc92 -> :sswitch_3f
        0xc93 -> :sswitch_40
        0xc94 -> :sswitch_41
        0x1909d -> :sswitch_42
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0xd05 -> :sswitch_43
        0xd06 -> :sswitch_44
        0xd07 -> :sswitch_45
        0xd08 -> :sswitch_46
        0xd09 -> :sswitch_47
        0xd0a -> :sswitch_48
        0xd0b -> :sswitch_49
        0xd0e -> :sswitch_4a
        0xd0f -> :sswitch_4b
        0xd10 -> :sswitch_4c
        0xd12 -> :sswitch_4d
        0xd13 -> :sswitch_4e
        0xd14 -> :sswitch_4f
        0x1a09d -> :sswitch_50
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0xd85 -> :sswitch_51
        0xd86 -> :sswitch_52
        0xd87 -> :sswitch_53
        0xd88 -> :sswitch_54
        0xd89 -> :sswitch_55
        0xd8a -> :sswitch_56
        0xd8b -> :sswitch_57
        0xd8c -> :sswitch_58
        0xd91 -> :sswitch_59
        0xd92 -> :sswitch_5a
        0xd94 -> :sswitch_5b
        0xd95 -> :sswitch_5c
        0xd96 -> :sswitch_5d
        0x1b09d -> :sswitch_5e
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        0xc05 -> :sswitch_5f
        0xc06 -> :sswitch_60
        0xc07 -> :sswitch_61
        0xc08 -> :sswitch_62
        0xc09 -> :sswitch_63
        0xc0a -> :sswitch_64
        0xc0b -> :sswitch_65
        0xc0e -> :sswitch_66
        0xc0f -> :sswitch_67
        0xc10 -> :sswitch_68
        0xc12 -> :sswitch_69
        0xc13 -> :sswitch_6a
        0xc14 -> :sswitch_6b
        0x1809d -> :sswitch_6c
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        0xb05 -> :sswitch_6d
        0xb06 -> :sswitch_6e
        0xb07 -> :sswitch_6f
        0xb08 -> :sswitch_70
        0xb09 -> :sswitch_71
        0xb0a -> :sswitch_72
        0xb0b -> :sswitch_73
        0xb0f -> :sswitch_74
        0xb10 -> :sswitch_75
        0xb13 -> :sswitch_76
        0xb14 -> :sswitch_77
        0x1609c -> :sswitch_7a
        0x1609d -> :sswitch_78
        0x1609e -> :sswitch_79
    .end sparse-switch
.end method

.method public getVowelKeyCode(IIZ)I
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    move v1, p1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    if-eqz p3, :cond_a

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_1

    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const/16 v1, 0x94d

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x93e

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x93f

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x940

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x941

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x942

    goto :goto_0

    :pswitch_8
    const/16 v1, 0x947

    goto :goto_0

    :pswitch_9
    const/16 v1, 0x948

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_2

    packed-switch p1, :pswitch_data_2

    :pswitch_a
    goto :goto_0

    :pswitch_b
    const/16 v1, 0x9cd

    goto :goto_0

    :pswitch_c
    const/16 v1, 0x9be

    goto :goto_0

    :pswitch_d
    const/16 v1, 0x9bf

    goto :goto_0

    :pswitch_e
    const/16 v1, 0x9c0

    goto :goto_0

    :pswitch_f
    const/16 v1, 0x9c1

    goto :goto_0

    :pswitch_10
    const/16 v1, 0x9c2

    goto :goto_0

    :pswitch_11
    const/16 v1, 0x9c3

    goto :goto_0

    :pswitch_12
    const/16 v1, 0x9c7

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    packed-switch p1, :pswitch_data_3

    :pswitch_13
    goto :goto_0

    :pswitch_14
    const/16 v1, 0xacd

    goto :goto_0

    :pswitch_15
    const/16 v1, 0xabe

    goto :goto_0

    :pswitch_16
    const/16 v1, 0xabf

    goto :goto_0

    :pswitch_17
    const/16 v1, 0xac0

    goto :goto_0

    :pswitch_18
    const/16 v1, 0xac1

    goto :goto_0

    :pswitch_19
    const/16 v1, 0xac2

    goto :goto_0

    :pswitch_1a
    const/16 v1, 0xac7

    goto :goto_0

    :pswitch_1b
    const/16 v1, 0xac8

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v9, :cond_4

    packed-switch p1, :pswitch_data_4

    :pswitch_1c
    goto :goto_0

    :pswitch_1d
    const/16 v1, 0xccd

    goto :goto_0

    :pswitch_1e
    const/16 v1, 0xcbe

    goto :goto_0

    :pswitch_1f
    const/16 v1, 0xcbf

    goto :goto_0

    :pswitch_20
    const/16 v1, 0xcc0

    goto :goto_0

    :pswitch_21
    const/16 v1, 0xcc1

    goto :goto_0

    :pswitch_22
    const/16 v1, 0xcc2

    goto :goto_0

    :pswitch_23
    const/16 v1, 0xcc3

    goto :goto_0

    :pswitch_24
    const/16 v1, 0xcc6

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    packed-switch p1, :pswitch_data_5

    :pswitch_25
    goto/16 :goto_0

    :pswitch_26
    const/16 v1, 0xa4d

    goto/16 :goto_0

    :pswitch_27
    const/16 v1, 0xa3e

    goto/16 :goto_0

    :pswitch_28
    const/16 v1, 0xa3f

    goto/16 :goto_0

    :pswitch_29
    const/16 v1, 0xa40

    goto/16 :goto_0

    :pswitch_2a
    const/16 v1, 0xa41

    goto/16 :goto_0

    :pswitch_2b
    const/16 v1, 0xa42

    goto/16 :goto_0

    :pswitch_2c
    const/16 v1, 0xa47

    goto/16 :goto_0

    :pswitch_2d
    const/16 v1, 0xa48

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    packed-switch p1, :pswitch_data_6

    :pswitch_2e
    goto/16 :goto_0

    :pswitch_2f
    const/16 v1, 0xd4d

    goto/16 :goto_0

    :pswitch_30
    const/16 v1, 0xd3e

    goto/16 :goto_0

    :pswitch_31
    const/16 v1, 0xd3f

    goto/16 :goto_0

    :pswitch_32
    const/16 v1, 0xd40

    goto/16 :goto_0

    :pswitch_33
    const/16 v1, 0xd41

    goto/16 :goto_0

    :pswitch_34
    const/16 v1, 0xd42

    goto/16 :goto_0

    :pswitch_35
    const/16 v1, 0xd46

    goto/16 :goto_0

    :pswitch_36
    const/16 v1, 0xd48

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v7, :cond_7

    packed-switch p1, :pswitch_data_7

    :pswitch_37
    goto/16 :goto_0

    :pswitch_38
    const/16 v1, 0xbcd

    goto/16 :goto_0

    :pswitch_39
    const/16 v1, 0xbbe

    goto/16 :goto_0

    :pswitch_3a
    const/16 v1, 0xbbf

    goto/16 :goto_0

    :pswitch_3b
    const/16 v1, 0xbc0

    goto/16 :goto_0

    :pswitch_3c
    const/16 v1, 0xbc1

    goto/16 :goto_0

    :pswitch_3d
    const/16 v1, 0xbc2

    goto/16 :goto_0

    :pswitch_3e
    const/16 v1, 0xbc6

    goto/16 :goto_0

    :pswitch_3f
    const/16 v1, 0xbc7

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v8, :cond_8

    packed-switch p1, :pswitch_data_8

    :pswitch_40
    goto/16 :goto_0

    :pswitch_41
    const/16 v1, 0xc4d

    goto/16 :goto_0

    :pswitch_42
    const/16 v1, 0xc3e

    goto/16 :goto_0

    :pswitch_43
    const/16 v1, 0xc3f

    goto/16 :goto_0

    :pswitch_44
    const/16 v1, 0xc40

    goto/16 :goto_0

    :pswitch_45
    const/16 v1, 0xc41

    goto/16 :goto_0

    :pswitch_46
    const/16 v1, 0xc42

    goto/16 :goto_0

    :pswitch_47
    const/16 v1, 0xc43

    goto/16 :goto_0

    :pswitch_48
    const/16 v1, 0xc46

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    packed-switch p1, :pswitch_data_9

    :pswitch_49
    goto/16 :goto_0

    :pswitch_4a
    const/16 v1, 0xb4d

    goto/16 :goto_0

    :pswitch_4b
    const/16 v1, 0xb3e

    goto/16 :goto_0

    :pswitch_4c
    const/16 v1, 0xb3f

    goto/16 :goto_0

    :pswitch_4d
    const/16 v1, 0xb40

    goto/16 :goto_0

    :pswitch_4e
    const/16 v1, 0xb41

    goto/16 :goto_0

    :pswitch_4f
    const/16 v1, 0xb42

    goto/16 :goto_0

    :pswitch_50
    const/16 v1, 0xb43

    goto/16 :goto_0

    :pswitch_51
    const/16 v1, 0xb47

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    packed-switch p1, :pswitch_data_a

    goto/16 :goto_0

    :pswitch_52
    const/16 v1, 0xdca

    goto/16 :goto_0

    :pswitch_53
    const/16 v1, 0xdc2

    goto/16 :goto_0

    :pswitch_54
    const/16 v1, 0xdc3

    goto/16 :goto_0

    :pswitch_55
    const/16 v1, 0xdc4

    goto/16 :goto_0

    :pswitch_56
    const/16 v1, 0xdc5

    goto/16 :goto_0

    :pswitch_57
    const/16 v1, 0xdc6

    goto/16 :goto_0

    :pswitch_58
    const/16 v1, 0xdc7

    goto/16 :goto_0

    :pswitch_59
    const/16 v1, 0xdd6

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v6, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->getVowelKeyCode(IIZ)I

    move-result v1

    goto/16 :goto_0

    :pswitch_5a
    if-eqz p3, :cond_12

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_b

    packed-switch p1, :pswitch_data_b

    :pswitch_5b
    goto/16 :goto_0

    :pswitch_5c
    const/16 v1, 0x94b

    goto/16 :goto_0

    :pswitch_5d
    const/16 v1, 0x94c

    goto/16 :goto_0

    :pswitch_5e
    const/16 v1, 0x902

    goto/16 :goto_0

    :pswitch_5f
    const/16 v1, 0x903

    goto/16 :goto_0

    :pswitch_60
    const/16 v1, 0x901

    goto/16 :goto_0

    :pswitch_61
    const/16 v1, 0x945

    goto/16 :goto_0

    :pswitch_62
    const/16 v1, 0x93c

    goto/16 :goto_0

    :pswitch_63
    const/16 v1, 0x943

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_c

    packed-switch p1, :pswitch_data_c

    :pswitch_64
    goto/16 :goto_0

    :pswitch_65
    const/16 v1, 0x9c8

    goto/16 :goto_0

    :pswitch_66
    const/16 v1, 0x9cb

    goto/16 :goto_0

    :pswitch_67
    const/16 v1, 0x9cc

    goto/16 :goto_0

    :pswitch_68
    const/16 v1, 0x9ce

    goto/16 :goto_0

    :pswitch_69
    const/16 v1, 0x982

    goto/16 :goto_0

    :pswitch_6a
    const/16 v1, 0x983

    goto/16 :goto_0

    :pswitch_6b
    const/16 v1, 0x981

    goto/16 :goto_0

    :pswitch_6c
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_c
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_d

    packed-switch p1, :pswitch_data_d

    :pswitch_6d
    goto/16 :goto_0

    :pswitch_6e
    const/16 v1, 0xacb

    goto/16 :goto_0

    :pswitch_6f
    const/16 v1, 0xacc

    goto/16 :goto_0

    :pswitch_70
    const/16 v1, 0xac5

    goto/16 :goto_0

    :pswitch_71
    const/16 v1, 0xac9

    goto/16 :goto_0

    :pswitch_72
    const/16 v1, 0xac3

    goto/16 :goto_0

    :pswitch_73
    const/16 v1, 0xa82

    goto/16 :goto_0

    :pswitch_74
    const/16 v1, 0xa83

    goto/16 :goto_0

    :pswitch_75
    const/16 v1, 0xa81

    goto/16 :goto_0

    :cond_d
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v9, :cond_e

    packed-switch p1, :pswitch_data_e

    :pswitch_76
    goto/16 :goto_0

    :pswitch_77
    const/16 v1, 0xcc7

    goto/16 :goto_0

    :pswitch_78
    const/16 v1, 0xcc8

    goto/16 :goto_0

    :pswitch_79
    const/16 v1, 0xcca

    goto/16 :goto_0

    :pswitch_7a
    const/16 v1, 0xccb

    goto/16 :goto_0

    :pswitch_7b
    const/16 v1, 0xccc

    goto/16 :goto_0

    :pswitch_7c
    const/16 v1, 0xc82

    goto/16 :goto_0

    :pswitch_7d
    const/16 v1, 0xc83

    goto/16 :goto_0

    :pswitch_7e
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_e
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    packed-switch p1, :pswitch_data_f

    :pswitch_7f
    goto/16 :goto_0

    :pswitch_80
    const/16 v1, 0xa4b

    goto/16 :goto_0

    :pswitch_81
    const/16 v1, 0xa4c

    goto/16 :goto_0

    :pswitch_82
    const/16 v1, 0xa70

    goto/16 :goto_0

    :pswitch_83
    const/16 v1, 0xa02

    goto/16 :goto_0

    :pswitch_84
    const/16 v1, 0xa71

    goto/16 :goto_0

    :pswitch_85
    const/16 v1, 0xa3c

    goto/16 :goto_0

    :pswitch_86
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_f
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_10

    packed-switch p1, :pswitch_data_10

    :pswitch_87
    goto/16 :goto_0

    :pswitch_88
    const/16 v1, 0xd47

    goto/16 :goto_0

    :pswitch_89
    const/16 v1, 0xd4a

    goto/16 :goto_0

    :pswitch_8a
    const/16 v1, 0xd4b

    goto/16 :goto_0

    :pswitch_8b
    const/16 v1, 0xd4c

    goto/16 :goto_0

    :pswitch_8c
    const/16 v1, 0xd57

    goto/16 :goto_0

    :pswitch_8d
    const/16 v1, 0xd02

    goto/16 :goto_0

    :pswitch_8e
    const/16 v1, 0xd03

    goto/16 :goto_0

    :pswitch_8f
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_10
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v7, :cond_11

    packed-switch p1, :pswitch_data_11

    :pswitch_90
    goto/16 :goto_0

    :pswitch_91
    const/16 v1, 0xbc8

    goto/16 :goto_0

    :pswitch_92
    const/16 v1, 0xbca

    goto/16 :goto_0

    :pswitch_93
    const/16 v1, 0xbcb

    goto/16 :goto_0

    :pswitch_94
    const/16 v1, 0xbcc

    goto/16 :goto_0

    :pswitch_95
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_11
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v8, :cond_0

    packed-switch p1, :pswitch_data_12

    :pswitch_96
    goto/16 :goto_0

    :pswitch_97
    const/16 v1, 0xc47

    goto/16 :goto_0

    :pswitch_98
    const/16 v1, 0xc48

    goto/16 :goto_0

    :pswitch_99
    const/16 v1, 0xc4a

    goto/16 :goto_0

    :pswitch_9a
    const/16 v1, 0xc4b

    goto/16 :goto_0

    :pswitch_9b
    const/16 v1, 0xc4c

    goto/16 :goto_0

    :pswitch_9c
    const/16 v1, 0xc02

    goto/16 :goto_0

    :pswitch_9d
    const/16 v1, 0xc03

    goto/16 :goto_0

    :pswitch_9e
    const/16 v1, 0xc01

    goto/16 :goto_0

    :cond_12
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_13

    const/high16 v2, 0x6e650000

    if-ne v0, v2, :cond_13

    packed-switch p1, :pswitch_data_13

    :pswitch_9f
    goto/16 :goto_0

    :pswitch_a0
    const/16 v1, 0x948

    goto/16 :goto_0

    :pswitch_a1
    const/16 v1, 0x93b

    goto/16 :goto_0

    :pswitch_a2
    const/16 v1, 0x93c

    goto/16 :goto_0

    :pswitch_a3
    const/16 v1, 0x903

    goto/16 :goto_0

    :pswitch_a4
    const/16 v1, 0x901

    goto/16 :goto_0

    :pswitch_a5
    const/16 v1, 0x945

    goto/16 :goto_0

    :pswitch_a6
    const/16 v1, 0x93c

    goto/16 :goto_0

    :pswitch_a7
    const/16 v1, 0x943

    goto/16 :goto_0

    :cond_13
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_14

    const/high16 v2, 0x61730000

    if-ne v0, v2, :cond_14

    packed-switch p1, :pswitch_data_14

    :pswitch_a8
    goto/16 :goto_0

    :pswitch_a9
    const/16 v1, 0x9c8

    goto/16 :goto_0

    :pswitch_aa
    const/16 v1, 0x9cb

    goto/16 :goto_0

    :pswitch_ab
    const/16 v1, 0x9cc

    goto/16 :goto_0

    :pswitch_ac
    const/16 v1, 0x9ce

    goto/16 :goto_0

    :pswitch_ad
    const/16 v1, 0x3d6

    goto/16 :goto_0

    :pswitch_ae
    const/16 v1, 0x3d7

    goto/16 :goto_0

    :pswitch_af
    const/16 v1, 0x3d5

    goto/16 :goto_0

    :pswitch_b0
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_14
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_15

    packed-switch p1, :pswitch_data_15

    :pswitch_b1
    goto/16 :goto_0

    :pswitch_b2
    const/16 v1, 0xb48

    goto/16 :goto_0

    :pswitch_b3
    const/16 v1, 0xb4b

    goto/16 :goto_0

    :pswitch_b4
    const/16 v1, 0xb4c

    goto/16 :goto_0

    :pswitch_b5
    const/16 v1, 0xb02

    goto/16 :goto_0

    :pswitch_b6
    const/16 v1, 0xb03

    goto/16 :goto_0

    :pswitch_b7
    const/16 v1, 0xb01

    goto/16 :goto_0

    :pswitch_b8
    const/16 v1, -0xff

    goto/16 :goto_0

    :pswitch_b9
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_15
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_16

    packed-switch p1, :pswitch_data_16

    goto/16 :goto_0

    :pswitch_ba
    const/16 v1, 0xdd8

    goto/16 :goto_0

    :pswitch_bb
    const/16 v1, 0xdd9

    goto/16 :goto_0

    :pswitch_bc
    const/16 v1, 0xdda

    goto/16 :goto_0

    :pswitch_bd
    const/16 v1, 0xddb

    goto/16 :goto_0

    :pswitch_be
    const/16 v1, 0xddc

    goto/16 :goto_0

    :pswitch_bf
    const/16 v1, 0xddd

    goto/16 :goto_0

    :pswitch_c0
    const/16 v1, 0xdde

    goto/16 :goto_0

    :pswitch_c1
    const/16 v1, 0xd82

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v7, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->getVowelKeyCode(IIZ)I

    move-result v1

    goto/16 :goto_0

    :pswitch_c2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_0

    goto/16 :goto_0

    :pswitch_c3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_17

    packed-switch p1, :pswitch_data_17

    :pswitch_c4
    goto/16 :goto_0

    :pswitch_c5
    const/16 v1, 0x913

    goto/16 :goto_0

    :pswitch_c6
    const/16 v1, 0x914

    goto/16 :goto_0

    :pswitch_c7
    const/16 v1, 0x902

    goto/16 :goto_0

    :pswitch_c8
    const/16 v1, 0x903

    goto/16 :goto_0

    :pswitch_c9
    const/16 v1, 0x901

    goto/16 :goto_0

    :pswitch_ca
    const/16 v1, 0x945

    goto/16 :goto_0

    :pswitch_cb
    const/16 v1, 0x93c

    goto/16 :goto_0

    :pswitch_cc
    const/16 v1, 0x90b

    goto/16 :goto_0

    :cond_17
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_18

    packed-switch p1, :pswitch_data_18

    :pswitch_cd
    goto/16 :goto_0

    :pswitch_ce
    const/16 v1, 0x990

    goto/16 :goto_0

    :pswitch_cf
    const/16 v1, 0x993

    goto/16 :goto_0

    :pswitch_d0
    const/16 v1, 0x994

    goto/16 :goto_0

    :pswitch_d1
    const/16 v1, 0x9ce

    goto/16 :goto_0

    :pswitch_d2
    const/16 v1, 0x982

    goto/16 :goto_0

    :pswitch_d3
    const/16 v1, 0x983

    goto/16 :goto_0

    :pswitch_d4
    const/16 v1, 0x981

    goto/16 :goto_0

    :pswitch_d5
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_18
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_19

    packed-switch p1, :pswitch_data_19

    :pswitch_d6
    goto/16 :goto_0

    :pswitch_d7
    const/16 v1, 0xa93

    goto/16 :goto_0

    :pswitch_d8
    const/16 v1, 0xa94

    goto/16 :goto_0

    :pswitch_d9
    const/16 v1, 0xa8d

    goto/16 :goto_0

    :pswitch_da
    const/16 v1, 0xa91

    goto/16 :goto_0

    :pswitch_db
    const/16 v1, 0xa8b

    goto/16 :goto_0

    :pswitch_dc
    const/16 v1, 0xa82

    goto/16 :goto_0

    :pswitch_dd
    const/16 v1, 0xa83

    goto/16 :goto_0

    :pswitch_de
    const/16 v1, 0xa81

    goto/16 :goto_0

    :cond_19
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v9, :cond_1a

    packed-switch p1, :pswitch_data_1a

    :pswitch_df
    goto/16 :goto_0

    :pswitch_e0
    const/16 v1, 0xc8f

    goto/16 :goto_0

    :pswitch_e1
    const/16 v1, 0xc90

    goto/16 :goto_0

    :pswitch_e2
    const/16 v1, 0xc92

    goto/16 :goto_0

    :pswitch_e3
    const/16 v1, 0xc93

    goto/16 :goto_0

    :pswitch_e4
    const/16 v1, 0xc94

    goto/16 :goto_0

    :pswitch_e5
    const/16 v1, 0xc85

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_e6
    const/16 v1, 0xc85

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_e7
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_1a
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1b

    packed-switch p1, :pswitch_data_1b

    :pswitch_e8
    goto/16 :goto_0

    :pswitch_e9
    const/16 v1, 0xa13

    goto/16 :goto_0

    :pswitch_ea
    const/16 v1, 0xa14

    goto/16 :goto_0

    :pswitch_eb
    const/16 v1, 0xa05

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    :pswitch_ec
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_1b
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1c

    packed-switch p1, :pswitch_data_1c

    :pswitch_ed
    goto/16 :goto_0

    :pswitch_ee
    const/16 v1, 0xd0f

    goto/16 :goto_0

    :pswitch_ef
    const/16 v1, 0xd10

    goto/16 :goto_0

    :pswitch_f0
    const/16 v1, 0xd12

    goto/16 :goto_0

    :pswitch_f1
    const/16 v1, 0xd13

    goto/16 :goto_0

    :pswitch_f2
    const/16 v1, 0xd14

    goto/16 :goto_0

    :pswitch_f3
    const/16 v1, 0xd7c

    goto/16 :goto_0

    :pswitch_f4
    const/16 v1, 0xd7b

    goto/16 :goto_0

    :pswitch_f5
    const/16 v1, 0xd7a

    goto/16 :goto_0

    :cond_1c
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v7, :cond_1d

    packed-switch p1, :pswitch_data_1d

    :pswitch_f6
    goto/16 :goto_0

    :pswitch_f7
    const/16 v1, 0xb90

    goto/16 :goto_0

    :pswitch_f8
    const/16 v1, 0xb92

    goto/16 :goto_0

    :pswitch_f9
    const/16 v1, 0xb93

    goto/16 :goto_0

    :pswitch_fa
    const/16 v1, 0xb94

    goto/16 :goto_0

    :pswitch_fb
    const/16 v1, 0xb83

    goto/16 :goto_0

    :pswitch_fc
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_1d
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v8, :cond_1e

    packed-switch p1, :pswitch_data_1e

    :pswitch_fd
    goto/16 :goto_0

    :pswitch_fe
    const/16 v1, 0xc0f

    goto/16 :goto_0

    :pswitch_ff
    const/16 v1, 0xc10

    goto/16 :goto_0

    :pswitch_100
    const/16 v1, 0xc12

    goto/16 :goto_0

    :pswitch_101
    const/16 v1, 0xc13

    goto/16 :goto_0

    :pswitch_102
    const/16 v1, 0xc14

    goto/16 :goto_0

    :pswitch_103
    const/16 v1, 0xc02

    goto/16 :goto_0

    :pswitch_104
    const/16 v1, 0xc03

    goto/16 :goto_0

    :pswitch_105
    const/16 v1, 0xc01

    goto/16 :goto_0

    :cond_1e
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_1f

    const/high16 v2, 0x6e650000

    if-ne v0, v2, :cond_1f

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/16 v1, 0x910

    goto/16 :goto_0

    :sswitch_1
    const/16 v1, 0x913

    goto/16 :goto_0

    :sswitch_2
    const/16 v1, 0x914

    goto/16 :goto_0

    :sswitch_3
    const/16 v1, 0x902

    goto/16 :goto_0

    :sswitch_4
    const/16 v1, 0x903

    goto/16 :goto_0

    :sswitch_5
    const/16 v1, 0x904

    goto/16 :goto_0

    :sswitch_6
    const/16 v1, 0x93c

    goto/16 :goto_0

    :sswitch_7
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_1f
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_20

    const/high16 v2, 0x61730000

    if-ne v0, v2, :cond_20

    packed-switch p1, :pswitch_data_1f

    :pswitch_106
    goto/16 :goto_0

    :pswitch_107
    const/16 v1, 0x990

    goto/16 :goto_0

    :pswitch_108
    const/16 v1, 0x993

    goto/16 :goto_0

    :pswitch_109
    const/16 v1, 0x994

    goto/16 :goto_0

    :pswitch_10a
    const/16 v1, 0x9ce

    goto/16 :goto_0

    :pswitch_10b
    const/16 v1, 0x982

    goto/16 :goto_0

    :pswitch_10c
    const/16 v1, 0x983

    goto/16 :goto_0

    :pswitch_10d
    const/16 v1, 0x981

    goto/16 :goto_0

    :pswitch_10e
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_20
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_21

    packed-switch p1, :pswitch_data_20

    :pswitch_10f
    goto/16 :goto_0

    :pswitch_110
    const/16 v1, 0xb10

    goto/16 :goto_0

    :pswitch_111
    const/16 v1, 0xb13

    goto/16 :goto_0

    :pswitch_112
    const/16 v1, 0xb14

    goto/16 :goto_0

    :pswitch_113
    const/16 v1, 0xb02

    goto/16 :goto_0

    :pswitch_114
    const/16 v1, 0xb03

    goto/16 :goto_0

    :pswitch_115
    const/16 v1, 0xb01

    goto/16 :goto_0

    :pswitch_116
    const/16 v1, -0xff

    goto/16 :goto_0

    :pswitch_117
    const/16 v1, -0xff

    goto/16 :goto_0

    :cond_21
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    packed-switch p1, :pswitch_data_21

    goto/16 :goto_0

    :pswitch_118
    const/16 v1, 0xd8d

    goto/16 :goto_0

    :pswitch_119
    const/16 v1, 0xd91

    goto/16 :goto_0

    :pswitch_11a
    const/16 v1, 0xd92

    goto/16 :goto_0

    :pswitch_11b
    const/16 v1, 0xd93

    goto/16 :goto_0

    :pswitch_11c
    const/16 v1, 0xd94

    goto/16 :goto_0

    :pswitch_11d
    const/16 v1, 0xd95

    goto/16 :goto_0

    :pswitch_11e
    const/16 v1, 0xd96

    goto/16 :goto_0

    :pswitch_11f
    const/16 v1, 0xd82

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5a
        :pswitch_c2
        :pswitch_c3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x905
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x985
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa85
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc85
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1c
        :pswitch_24
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa05
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xd05
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_2e
        :pswitch_2e
        :pswitch_36
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xb85
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_3e
        :pswitch_3f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xc05
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_40
        :pswitch_40
        :pswitch_48
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xb05
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_51
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0xd85
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x905
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_62
        :pswitch_63
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x985
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_6c
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0xa85
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_74
        :pswitch_75
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0xc85
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_76
        :pswitch_76
        :pswitch_7e
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0xa05
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_86
        :pswitch_86
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0xd05
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_87
        :pswitch_87
        :pswitch_8f
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0xb85
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_95
        :pswitch_90
        :pswitch_90
        :pswitch_90
        :pswitch_95
        :pswitch_95
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0xc05
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_96
        :pswitch_96
        :pswitch_9e
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x905
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_a6
        :pswitch_a7
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x985
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_b0
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0xb05
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b1
        :pswitch_b1
        :pswitch_b1
        :pswitch_b9
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0xd85
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x905
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_c4
        :pswitch_c4
        :pswitch_c4
        :pswitch_c4
        :pswitch_cb
        :pswitch_cc
    .end packed-switch

    :pswitch_data_18
    .packed-switch 0x985
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_d1
        :pswitch_d2
        :pswitch_d3
        :pswitch_d4
        :pswitch_cd
        :pswitch_cd
        :pswitch_cd
        :pswitch_d5
    .end packed-switch

    :pswitch_data_19
    .packed-switch 0xa85
        :pswitch_d7
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_dc
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_dd
        :pswitch_de
    .end packed-switch

    :pswitch_data_1a
    .packed-switch 0xc85
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_e3
        :pswitch_e4
        :pswitch_e5
        :pswitch_e6
        :pswitch_df
        :pswitch_df
        :pswitch_e7
    .end packed-switch

    :pswitch_data_1b
    .packed-switch 0xa05
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
        :pswitch_ec
        :pswitch_ec
        :pswitch_ec
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_ec
        :pswitch_ec
    .end packed-switch

    :pswitch_data_1c
    .packed-switch 0xd05
        :pswitch_ee
        :pswitch_ef
        :pswitch_f0
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
        :pswitch_f4
        :pswitch_ed
        :pswitch_ed
        :pswitch_f5
    .end packed-switch

    :pswitch_data_1d
    .packed-switch 0xb85
        :pswitch_f7
        :pswitch_f8
        :pswitch_f9
        :pswitch_fa
        :pswitch_fb
        :pswitch_fc
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_fc
        :pswitch_fc
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0xc05
        :pswitch_fe
        :pswitch_ff
        :pswitch_100
        :pswitch_101
        :pswitch_102
        :pswitch_103
        :pswitch_104
        :pswitch_fd
        :pswitch_fd
        :pswitch_105
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x905 -> :sswitch_0
        0x906 -> :sswitch_1
        0x907 -> :sswitch_2
        0x908 -> :sswitch_3
        0x909 -> :sswitch_4
        0x90a -> :sswitch_5
        0x90b -> :sswitch_6
        0x98f -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1f
    .packed-switch 0x985
        :pswitch_107
        :pswitch_108
        :pswitch_109
        :pswitch_10a
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
        :pswitch_106
        :pswitch_106
        :pswitch_106
        :pswitch_10e
    .end packed-switch

    :pswitch_data_20
    .packed-switch 0xb05
        :pswitch_110
        :pswitch_111
        :pswitch_112
        :pswitch_113
        :pswitch_114
        :pswitch_115
        :pswitch_116
        :pswitch_10f
        :pswitch_10f
        :pswitch_10f
        :pswitch_117
    .end packed-switch

    :pswitch_data_21
    .packed-switch 0xd85
        :pswitch_118
        :pswitch_119
        :pswitch_11a
        :pswitch_11b
        :pswitch_11c
        :pswitch_11d
        :pswitch_11e
        :pswitch_11f
    .end packed-switch
.end method

.method public getVowelKeyLabel(Ljava/lang/String;IZ)Ljava/lang/CharSequence;
    .locals 9
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    move-object v5, p1

    iget-object v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e5553

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    sget-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v6, :cond_3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->IsLowEnd()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    :cond_1
    const-string v6, "prajeet"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shifetlabel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v6

    invoke-virtual {p0, v3, v6}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    return-object v5

    :pswitch_1
    if-eqz p3, :cond_f

    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    const-string v5, "\u094d"

    goto/16 :goto_0

    :pswitch_4
    const-string v5, "\u093e"

    goto/16 :goto_0

    :pswitch_5
    const-string v5, "\u093f"

    goto/16 :goto_0

    :pswitch_6
    const-string v5, "\u0940"

    goto/16 :goto_0

    :pswitch_7
    const-string v5, "\u0941"

    goto/16 :goto_0

    :pswitch_8
    const-string v5, "\u0942"

    goto/16 :goto_0

    :pswitch_9
    const-string v5, "\u0947"

    goto/16 :goto_0

    :pswitch_a
    const-string v5, "\u0948"

    goto/16 :goto_0

    :cond_4
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    packed-switch v0, :pswitch_data_2

    :pswitch_b
    goto/16 :goto_0

    :pswitch_c
    const-string v5, "\u09cd"

    goto/16 :goto_0

    :pswitch_d
    const-string v5, "\u09be"

    goto/16 :goto_0

    :pswitch_e
    const-string v5, "\u09bf"

    goto/16 :goto_0

    :pswitch_f
    const-string v5, "\u09c0"

    goto/16 :goto_0

    :pswitch_10
    const-string v5, "\u09c1"

    goto/16 :goto_0

    :pswitch_11
    const-string v5, "\u09c2"

    goto/16 :goto_0

    :pswitch_12
    const-string v5, "\u09c3"

    goto/16 :goto_0

    :pswitch_13
    const-string v5, "\u09c7"

    goto/16 :goto_0

    :cond_5
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_6

    packed-switch v0, :pswitch_data_3

    :pswitch_14
    goto/16 :goto_0

    :pswitch_15
    const-string v5, "\u0acd"

    goto/16 :goto_0

    :pswitch_16
    const-string v5, "\u0abe"

    goto/16 :goto_0

    :pswitch_17
    const-string v5, "\u0abf"

    goto/16 :goto_0

    :pswitch_18
    const-string v5, "\u0ac0"

    goto/16 :goto_0

    :pswitch_19
    const-string v5, "\u0ac1"

    goto/16 :goto_0

    :pswitch_1a
    const-string v5, "\u0ac2"

    goto/16 :goto_0

    :pswitch_1b
    const-string v5, "\u0ac7"

    goto/16 :goto_0

    :pswitch_1c
    const-string v5, "\u0ac8"

    goto/16 :goto_0

    :cond_6
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    packed-switch v0, :pswitch_data_4

    :pswitch_1d
    goto/16 :goto_0

    :pswitch_1e
    const-string v5, "\u0ccd"

    goto/16 :goto_0

    :pswitch_1f
    const-string v5, "\u0cbe"

    goto/16 :goto_0

    :pswitch_20
    const-string v5, "\u0cbf"

    goto/16 :goto_0

    :pswitch_21
    const-string v5, "\u0cc0"

    goto/16 :goto_0

    :pswitch_22
    const-string v5, "\u0cc1"

    goto/16 :goto_0

    :pswitch_23
    const-string v5, "\u0cc2"

    goto/16 :goto_0

    :pswitch_24
    const-string v5, "\u0cc3"

    goto/16 :goto_0

    :pswitch_25
    const-string v5, "\u0cc6"

    goto/16 :goto_0

    :cond_7
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_8

    packed-switch v0, :pswitch_data_5

    :pswitch_26
    goto/16 :goto_0

    :pswitch_27
    const-string v5, "\u0a4d"

    goto/16 :goto_0

    :pswitch_28
    const-string v5, "\u0a3e"

    goto/16 :goto_0

    :pswitch_29
    const-string v5, "\u0a3f"

    goto/16 :goto_0

    :pswitch_2a
    const-string v5, "\u0a40"

    goto/16 :goto_0

    :pswitch_2b
    const-string v5, "\u0a41"

    goto/16 :goto_0

    :pswitch_2c
    const-string v5, "\u0a42"

    goto/16 :goto_0

    :pswitch_2d
    const-string v5, "\u0a47"

    goto/16 :goto_0

    :pswitch_2e
    const-string v5, "\u0a48"

    goto/16 :goto_0

    :cond_8
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_9

    packed-switch v0, :pswitch_data_6

    :pswitch_2f
    goto/16 :goto_0

    :pswitch_30
    const-string v5, "\u0d4d"

    goto/16 :goto_0

    :pswitch_31
    const-string v5, "\u0d3e"

    goto/16 :goto_0

    :pswitch_32
    const-string v5, "\u0d3f"

    goto/16 :goto_0

    :pswitch_33
    const-string v5, "\u0d40"

    goto/16 :goto_0

    :pswitch_34
    const-string v5, "\u0d41"

    goto/16 :goto_0

    :pswitch_35
    const-string v5, "\u0d42"

    goto/16 :goto_0

    :pswitch_36
    const-string v5, "\u0d46"

    goto/16 :goto_0

    :pswitch_37
    const-string v5, "\u0d48"

    goto/16 :goto_0

    :cond_9
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    packed-switch v0, :pswitch_data_7

    :pswitch_38
    goto/16 :goto_0

    :pswitch_39
    const-string v5, "\u0bcd"

    goto/16 :goto_0

    :pswitch_3a
    const-string v5, "\u0bbe"

    goto/16 :goto_0

    :pswitch_3b
    const-string v5, "\u0bbf"

    goto/16 :goto_0

    :pswitch_3c
    const-string v5, "\u0bc0"

    goto/16 :goto_0

    :pswitch_3d
    const-string v5, "\u0bc1"

    goto/16 :goto_0

    :pswitch_3e
    const-string v5, "\u0bc2"

    goto/16 :goto_0

    :pswitch_3f
    const-string v5, "\u0bc6"

    goto/16 :goto_0

    :pswitch_40
    const-string v5, "\u0bc7"

    goto/16 :goto_0

    :cond_a
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_b

    packed-switch v0, :pswitch_data_8

    :pswitch_41
    goto/16 :goto_0

    :pswitch_42
    const-string v5, "\u0c4d"

    goto/16 :goto_0

    :pswitch_43
    const-string v5, "\u0c3e"

    goto/16 :goto_0

    :pswitch_44
    const-string v5, "\u0c3f"

    goto/16 :goto_0

    :pswitch_45
    const-string v5, "\u0c40"

    goto/16 :goto_0

    :pswitch_46
    const-string v5, "\u0c41"

    goto/16 :goto_0

    :pswitch_47
    const-string v5, "\u0c42"

    goto/16 :goto_0

    :pswitch_48
    const-string v5, "\u0c43"

    goto/16 :goto_0

    :pswitch_49
    const-string v5, "\u0c46"

    goto/16 :goto_0

    :cond_b
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    const/high16 v6, 0x6e650000

    if-ne v2, v6, :cond_c

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "\u094d"

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "\u093e"

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "\u093f"

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "\u0940"

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "\u0941"

    goto/16 :goto_0

    :sswitch_5
    const-string v5, "\u0942"

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "\u0943"

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "\u0947"

    goto/16 :goto_0

    :cond_c
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    const/high16 v6, 0x61730000

    if-ne v2, v6, :cond_d

    packed-switch v0, :pswitch_data_9

    :pswitch_4a
    goto/16 :goto_0

    :pswitch_4b
    const-string v5, "\u09cd"

    goto/16 :goto_0

    :pswitch_4c
    const-string v5, "\u09be"

    goto/16 :goto_0

    :pswitch_4d
    const-string v5, "\u09bf"

    goto/16 :goto_0

    :pswitch_4e
    const-string v5, "\u09c0"

    goto/16 :goto_0

    :pswitch_4f
    const-string v5, "\u09c1"

    goto/16 :goto_0

    :pswitch_50
    const-string v5, "\u09c2"

    goto/16 :goto_0

    :pswitch_51
    const-string v5, "\u09c3"

    goto/16 :goto_0

    :pswitch_52
    const-string v5, "\u09c7"

    goto/16 :goto_0

    :cond_d
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_e

    packed-switch v0, :pswitch_data_a

    :pswitch_53
    goto/16 :goto_0

    :pswitch_54
    const-string v5, "\u0b4d"

    goto/16 :goto_0

    :pswitch_55
    const-string v5, "\u0b3e"

    goto/16 :goto_0

    :pswitch_56
    const-string v5, "\u0b3f"

    goto/16 :goto_0

    :pswitch_57
    const-string v5, "\u0b40"

    goto/16 :goto_0

    :pswitch_58
    const-string v5, "\u0b41"

    goto/16 :goto_0

    :pswitch_59
    const-string v5, "\u0b42"

    goto/16 :goto_0

    :pswitch_5a
    const-string v5, "\u0b43"

    goto/16 :goto_0

    :pswitch_5b
    const-string v5, "\u0b47"

    goto/16 :goto_0

    :cond_e
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    packed-switch v0, :pswitch_data_b

    goto/16 :goto_0

    :pswitch_5c
    const-string v5, "\u0dca"

    goto/16 :goto_0

    :pswitch_5d
    const-string v5, "\u0dcf"

    goto/16 :goto_0

    :pswitch_5e
    const-string v5, "\u0dd0"

    goto/16 :goto_0

    :pswitch_5f
    const-string v5, "\u0dd1"

    goto/16 :goto_0

    :pswitch_60
    const-string v5, "\u0dd2"

    goto/16 :goto_0

    :pswitch_61
    const-string v5, "\u0dd3"

    goto/16 :goto_0

    :pswitch_62
    const-string v5, "\u0dd4"

    goto/16 :goto_0

    :pswitch_63
    const-string v5, "\u0dd6"

    goto/16 :goto_0

    :cond_f
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/diotek/ime/framework/input/IndianInputModule;->getVowelKeyLabel(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_64
    if-eqz p3, :cond_17

    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_10

    packed-switch v0, :pswitch_data_c

    :pswitch_65
    goto/16 :goto_0

    :pswitch_66
    const-string v5, "\u094b"

    goto/16 :goto_0

    :pswitch_67
    const-string v5, "\u094c"

    goto/16 :goto_0

    :pswitch_68
    const-string v5, "\u0902"

    goto/16 :goto_0

    :pswitch_69
    const-string v5, "\u0903"

    goto/16 :goto_0

    :pswitch_6a
    const-string v5, "\u0901"

    goto/16 :goto_0

    :pswitch_6b
    const-string v5, "\u0945"

    goto/16 :goto_0

    :pswitch_6c
    const-string v5, "\u093c"

    goto/16 :goto_0

    :pswitch_6d
    const-string v5, "\u0943"

    goto/16 :goto_0

    :cond_10
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_11

    packed-switch v0, :pswitch_data_d

    :pswitch_6e
    goto/16 :goto_0

    :pswitch_6f
    const-string v5, "\u09c8"

    goto/16 :goto_0

    :pswitch_70
    const-string v5, "\u09cb"

    goto/16 :goto_0

    :pswitch_71
    const-string v5, "\u09cc"

    goto/16 :goto_0

    :pswitch_72
    const-string v5, "\u09ce"

    goto/16 :goto_0

    :pswitch_73
    const-string v5, "\u0982"

    goto/16 :goto_0

    :pswitch_74
    const-string v5, "\u0983"

    goto/16 :goto_0

    :pswitch_75
    const-string v5, "\u0981"

    goto/16 :goto_0

    :pswitch_76
    const-string v5, ""

    goto/16 :goto_0

    :cond_11
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_12

    packed-switch v0, :pswitch_data_e

    :pswitch_77
    goto/16 :goto_0

    :pswitch_78
    const-string v5, "\u0acb"

    goto/16 :goto_0

    :pswitch_79
    const-string v5, "\u0acc"

    goto/16 :goto_0

    :pswitch_7a
    const-string v5, "\u0ac5"

    goto/16 :goto_0

    :pswitch_7b
    const-string v5, "\u0ac9"

    goto/16 :goto_0

    :pswitch_7c
    const-string v5, "\u0ac3"

    goto/16 :goto_0

    :pswitch_7d
    const-string v5, "\u0a82"

    goto/16 :goto_0

    :pswitch_7e
    const-string v5, "\u0a83"

    goto/16 :goto_0

    :pswitch_7f
    const-string v5, "\u0a81"

    goto/16 :goto_0

    :cond_12
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_13

    packed-switch v0, :pswitch_data_f

    :pswitch_80
    goto/16 :goto_0

    :pswitch_81
    const-string v5, "\u0cc7"

    goto/16 :goto_0

    :pswitch_82
    const-string v5, "\u0cb8"

    goto/16 :goto_0

    :pswitch_83
    const-string v5, "\u0cca"

    goto/16 :goto_0

    :pswitch_84
    const-string v5, "\u0ccb"

    goto/16 :goto_0

    :pswitch_85
    const-string v5, "\u0ccc"

    goto/16 :goto_0

    :pswitch_86
    const-string v5, "\u0c82"

    goto/16 :goto_0

    :pswitch_87
    const-string v5, "\u0c83"

    goto/16 :goto_0

    :pswitch_88
    const-string v5, ""

    goto/16 :goto_0

    :cond_13
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_14

    packed-switch v0, :pswitch_data_10

    :pswitch_89
    goto/16 :goto_0

    :pswitch_8a
    const-string v5, "\u0a4b"

    goto/16 :goto_0

    :pswitch_8b
    const-string v5, "\u0a4c"

    goto/16 :goto_0

    :pswitch_8c
    const-string v5, "\u0a70"

    goto/16 :goto_0

    :pswitch_8d
    const-string v5, "\u0a02"

    goto/16 :goto_0

    :pswitch_8e
    const-string v5, "\u0a71"

    goto/16 :goto_0

    :pswitch_8f
    const-string v5, "\u0a3c"

    goto/16 :goto_0

    :pswitch_90
    const-string v5, ""

    goto/16 :goto_0

    :cond_14
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_15

    packed-switch v0, :pswitch_data_11

    :pswitch_91
    goto/16 :goto_0

    :pswitch_92
    const-string v5, "\u0d47"

    goto/16 :goto_0

    :pswitch_93
    const-string v5, "\u0d4a"

    goto/16 :goto_0

    :pswitch_94
    const-string v5, "\u0d4b"

    goto/16 :goto_0

    :pswitch_95
    const-string v5, "\u0d4c"

    goto/16 :goto_0

    :pswitch_96
    const-string v5, "\u0d57"

    goto/16 :goto_0

    :pswitch_97
    const-string v5, "\u0d02"

    goto/16 :goto_0

    :pswitch_98
    const-string v5, "\u0d03"

    goto/16 :goto_0

    :pswitch_99
    const-string v5, ""

    goto/16 :goto_0

    :cond_15
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_16

    packed-switch v0, :pswitch_data_12

    :pswitch_9a
    goto/16 :goto_0

    :pswitch_9b
    const-string v5, "\u0bc8"

    goto/16 :goto_0

    :pswitch_9c
    const-string v5, "\u0bca"

    goto/16 :goto_0

    :pswitch_9d
    const-string v5, "\u0bcb"

    goto/16 :goto_0

    :pswitch_9e
    const-string v5, "\u0bcc"

    goto/16 :goto_0

    :pswitch_9f
    const-string v5, ""

    goto/16 :goto_0

    :cond_16
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    packed-switch v0, :pswitch_data_13

    :pswitch_a0
    goto/16 :goto_0

    :pswitch_a1
    const-string v5, "\u0c47"

    goto/16 :goto_0

    :pswitch_a2
    const-string v5, "\u0c48"

    goto/16 :goto_0

    :pswitch_a3
    const-string v5, "\u0c4a"

    goto/16 :goto_0

    :pswitch_a4
    const-string v5, "\u0c4b"

    goto/16 :goto_0

    :pswitch_a5
    const-string v5, "\u0c4c"

    goto/16 :goto_0

    :pswitch_a6
    const-string v5, "\u0c02"

    goto/16 :goto_0

    :pswitch_a7
    const-string v5, "\u0c03"

    goto/16 :goto_0

    :pswitch_a8
    const-string v5, "\u0c01"

    goto/16 :goto_0

    :cond_17
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    const/high16 v6, 0x6e650000

    if-ne v2, v6, :cond_18

    packed-switch v0, :pswitch_data_14

    :pswitch_a9
    goto/16 :goto_0

    :pswitch_aa
    const-string v5, "\u094b"

    goto/16 :goto_0

    :pswitch_ab
    const-string v5, "\u094c"

    goto/16 :goto_0

    :pswitch_ac
    const-string v5, "\u0902"

    goto/16 :goto_0

    :pswitch_ad
    const-string v5, "\u0903"

    goto/16 :goto_0

    :pswitch_ae
    const-string v5, "\u0901"

    goto/16 :goto_0

    :pswitch_af
    const-string v5, "\u0945"

    goto/16 :goto_0

    :pswitch_b0
    const-string v5, "\u093c"

    goto/16 :goto_0

    :pswitch_b1
    const-string v5, "\u0943"

    goto/16 :goto_0

    :cond_18
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_19

    packed-switch v0, :pswitch_data_15

    :pswitch_b2
    goto/16 :goto_0

    :pswitch_b3
    const-string v5, "\u0b48"

    goto/16 :goto_0

    :pswitch_b4
    const-string v5, "\u0b4b"

    goto/16 :goto_0

    :pswitch_b5
    const-string v5, "\u0b4c"

    goto/16 :goto_0

    :pswitch_b6
    const-string v5, "\u0b02"

    goto/16 :goto_0

    :pswitch_b7
    const-string v5, "\u0b03"

    goto/16 :goto_0

    :pswitch_b8
    const-string v5, "\u0b01"

    goto/16 :goto_0

    :pswitch_b9
    const-string v5, ""

    goto/16 :goto_0

    :pswitch_ba
    const-string v5, ""

    goto/16 :goto_0

    :cond_19
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1a

    packed-switch v0, :pswitch_data_16

    goto/16 :goto_0

    :pswitch_bb
    const-string v5, "\u0dd8"

    goto/16 :goto_0

    :pswitch_bc
    const-string v5, "\u0dd9"

    goto/16 :goto_0

    :pswitch_bd
    const-string v5, "\u0dda"

    goto/16 :goto_0

    :pswitch_be
    const-string v5, "\u0ddb"

    goto/16 :goto_0

    :pswitch_bf
    const-string v5, "\u0ddc"

    goto/16 :goto_0

    :pswitch_c0
    const-string v5, "\u0ddd"

    goto/16 :goto_0

    :pswitch_c1
    const-string v5, "\u0dde"

    goto/16 :goto_0

    :pswitch_c2
    const-string v5, "\u0d82"

    goto/16 :goto_0

    :cond_1a
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/diotek/ime/framework/input/IndianInputModule;->getVowelKeyLabel(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_c3
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1b

    packed-switch v0, :pswitch_data_17

    :pswitch_c4
    goto/16 :goto_0

    :pswitch_c5
    const-string v5, "\u0913"

    goto/16 :goto_0

    :pswitch_c6
    const-string v5, "\u0914"

    goto/16 :goto_0

    :pswitch_c7
    const-string v5, "\u0902"

    goto/16 :goto_0

    :pswitch_c8
    const-string v5, "\u0903"

    goto/16 :goto_0

    :pswitch_c9
    const-string v5, "\u0901"

    goto/16 :goto_0

    :pswitch_ca
    const-string v5, "\u0945"

    goto/16 :goto_0

    :pswitch_cb
    const-string v5, "\u093c"

    goto/16 :goto_0

    :pswitch_cc
    const-string v5, "\u090b"

    goto/16 :goto_0

    :cond_1b
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1c

    packed-switch v0, :pswitch_data_18

    :pswitch_cd
    goto/16 :goto_0

    :pswitch_ce
    const-string v5, "\u0990"

    goto/16 :goto_0

    :pswitch_cf
    const-string v5, "\u0993"

    goto/16 :goto_0

    :pswitch_d0
    const-string v5, "\u0994"

    goto/16 :goto_0

    :pswitch_d1
    const-string v5, "\u09ce"

    goto/16 :goto_0

    :pswitch_d2
    const-string v5, "\u0982"

    goto/16 :goto_0

    :pswitch_d3
    const-string v5, "\u0983"

    goto/16 :goto_0

    :pswitch_d4
    const-string v5, "\u0981"

    goto/16 :goto_0

    :pswitch_d5
    const-string v5, ""

    goto/16 :goto_0

    :cond_1c
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1d

    packed-switch v0, :pswitch_data_19

    :pswitch_d6
    goto/16 :goto_0

    :pswitch_d7
    const-string v5, "\u0a93"

    goto/16 :goto_0

    :pswitch_d8
    const-string v5, "\u0a94"

    goto/16 :goto_0

    :pswitch_d9
    const-string v5, "\u0a8d"

    goto/16 :goto_0

    :pswitch_da
    const-string v5, "\u0a91"

    goto/16 :goto_0

    :pswitch_db
    const-string v5, "\u0a8b"

    goto/16 :goto_0

    :pswitch_dc
    const-string v5, "\u0a82"

    goto/16 :goto_0

    :pswitch_dd
    const-string v5, "\u0a83"

    goto/16 :goto_0

    :pswitch_de
    const-string v5, "\u0a81"

    goto/16 :goto_0

    :cond_1d
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1e

    packed-switch v0, :pswitch_data_1a

    :pswitch_df
    goto/16 :goto_0

    :pswitch_e0
    const-string v5, "\u0c8f"

    goto/16 :goto_0

    :pswitch_e1
    const-string v5, "\u0c90"

    goto/16 :goto_0

    :pswitch_e2
    const-string v5, "\u0c92"

    goto/16 :goto_0

    :pswitch_e3
    const-string v5, "\u0c93"

    goto/16 :goto_0

    :pswitch_e4
    const-string v5, "\u0c94"

    goto/16 :goto_0

    :pswitch_e5
    const-string v5, "\u0c85\u0c82"

    goto/16 :goto_0

    :pswitch_e6
    const-string v5, "\u0c85\u0c83"

    goto/16 :goto_0

    :pswitch_e7
    const-string v5, ""

    goto/16 :goto_0

    :cond_1e
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1f

    packed-switch v0, :pswitch_data_1b

    :pswitch_e8
    goto/16 :goto_0

    :pswitch_e9
    const-string v5, "\u0a13"

    goto/16 :goto_0

    :pswitch_ea
    const-string v5, "\u0a14"

    goto/16 :goto_0

    :pswitch_eb
    const-string v5, "\u0a05\u0a70"

    goto/16 :goto_0

    :pswitch_ec
    const-string v5, ""

    goto/16 :goto_0

    :cond_1f
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_20

    packed-switch v0, :pswitch_data_1c

    :pswitch_ed
    goto/16 :goto_0

    :pswitch_ee
    const-string v5, "\u0d0f"

    goto/16 :goto_0

    :pswitch_ef
    const-string v5, "\u0d10"

    goto/16 :goto_0

    :pswitch_f0
    const-string v5, "\u0d12"

    goto/16 :goto_0

    :pswitch_f1
    const-string v5, "\u0d13"

    goto/16 :goto_0

    :pswitch_f2
    const-string v5, "\u0d14"

    goto/16 :goto_0

    :pswitch_f3
    const-string v5, "\u0d7c"

    goto/16 :goto_0

    :pswitch_f4
    const-string v5, "\u0d7b"

    goto/16 :goto_0

    :pswitch_f5
    const-string v5, "\u0d7a"

    goto/16 :goto_0

    :cond_20
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_21

    packed-switch v0, :pswitch_data_1d

    :pswitch_f6
    goto/16 :goto_0

    :pswitch_f7
    const-string v5, "\u0b90"

    goto/16 :goto_0

    :pswitch_f8
    const-string v5, "\u0b92"

    goto/16 :goto_0

    :pswitch_f9
    const-string v5, "\u0b93"

    goto/16 :goto_0

    :pswitch_fa
    const-string v5, "\u0b94"

    goto/16 :goto_0

    :pswitch_fb
    const-string v5, "\u0b83"

    goto/16 :goto_0

    :pswitch_fc
    const-string v5, ""

    goto/16 :goto_0

    :cond_21
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_22

    packed-switch v0, :pswitch_data_1e

    :pswitch_fd
    goto/16 :goto_0

    :pswitch_fe
    const-string v5, "\u0c0f"

    goto/16 :goto_0

    :pswitch_ff
    const-string v5, "\u0c10"

    goto/16 :goto_0

    :pswitch_100
    const-string v5, "\u0c12"

    goto/16 :goto_0

    :pswitch_101
    const-string v5, "\u0c13"

    goto/16 :goto_0

    :pswitch_102
    const-string v5, "\u0c14"

    goto/16 :goto_0

    :pswitch_103
    const-string v5, "\u0c02"

    goto/16 :goto_0

    :pswitch_104
    const-string v5, "\u0c03"

    goto/16 :goto_0

    :pswitch_105
    const-string v5, "\u0c01"

    goto/16 :goto_0

    :cond_22
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_23

    const/high16 v6, 0x6e650000

    if-ne v2, v6, :cond_23

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "\u0910"

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "\u0913"

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "\u0914"

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "\u0902"

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "\u0901"

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "\u0903"

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "\u093c"

    goto/16 :goto_0

    :sswitch_f
    const-string v5, ""

    goto/16 :goto_0

    :cond_23
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_24

    const/high16 v6, 0x61730000

    if-ne v2, v6, :cond_24

    packed-switch v0, :pswitch_data_1f

    :pswitch_106
    goto/16 :goto_0

    :pswitch_107
    const-string v5, "\u0990"

    goto/16 :goto_0

    :pswitch_108
    const-string v5, "\u0993"

    goto/16 :goto_0

    :pswitch_109
    const-string v5, "\u0994"

    goto/16 :goto_0

    :pswitch_10a
    const-string v5, "\u09ce"

    goto/16 :goto_0

    :pswitch_10b
    const-string v5, "\u0982"

    goto/16 :goto_0

    :pswitch_10c
    const-string v5, "\u0983"

    goto/16 :goto_0

    :pswitch_10d
    const-string v5, "\u0981"

    goto/16 :goto_0

    :pswitch_10e
    const-string v5, ""

    goto/16 :goto_0

    :cond_24
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_25

    packed-switch v0, :pswitch_data_20

    :pswitch_10f
    goto/16 :goto_0

    :pswitch_110
    const-string v5, "\u0b10"

    goto/16 :goto_0

    :pswitch_111
    const-string v5, "\u0b13"

    goto/16 :goto_0

    :pswitch_112
    const-string v5, "\u0b14"

    goto/16 :goto_0

    :pswitch_113
    const-string v5, "\u0b02"

    goto/16 :goto_0

    :pswitch_114
    const-string v5, "\u0b03"

    goto/16 :goto_0

    :pswitch_115
    const-string v5, "\u0b01"

    goto/16 :goto_0

    :pswitch_116
    const-string v5, ""

    goto/16 :goto_0

    :pswitch_117
    const-string v5, ""

    goto/16 :goto_0

    :cond_25
    iget v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    packed-switch v0, :pswitch_data_21

    goto/16 :goto_0

    :pswitch_118
    const-string v5, "\u0d8d"

    goto/16 :goto_0

    :pswitch_119
    const-string v5, "\u0d91"

    goto/16 :goto_0

    :pswitch_11a
    const-string v5, "\u0d92"

    goto/16 :goto_0

    :pswitch_11b
    const-string v5, "\u0d93"

    goto/16 :goto_0

    :pswitch_11c
    const-string v5, "\u0d94"

    goto/16 :goto_0

    :pswitch_11d
    const-string v5, "\u0d95"

    goto/16 :goto_0

    :pswitch_11e
    const-string v5, "\u0d96"

    goto/16 :goto_0

    :pswitch_11f
    const-string v5, "\u0d82"

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_64
        :pswitch_0
        :pswitch_c3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x905
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x985
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_13
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa85
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc85
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_1d
        :pswitch_1d
        :pswitch_25
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa05
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_2d
        :pswitch_2e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xd05
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_2f
        :pswitch_2f
        :pswitch_37
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xb85
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_3f
        :pswitch_40
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xc05
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_41
        :pswitch_41
        :pswitch_49
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x905 -> :sswitch_0
        0x906 -> :sswitch_1
        0x907 -> :sswitch_2
        0x908 -> :sswitch_3
        0x909 -> :sswitch_4
        0x90a -> :sswitch_5
        0x90b -> :sswitch_6
        0x98f -> :sswitch_7
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x985
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_52
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0xb05
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_5b
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0xd85
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x905
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_6c
        :pswitch_6d
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x985
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_76
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0xa85
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_7e
        :pswitch_7f
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0xc85
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_80
        :pswitch_80
        :pswitch_88
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0xa05
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_90
        :pswitch_90
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0xd05
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_91
        :pswitch_91
        :pswitch_99
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0xb85
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_9f
        :pswitch_9a
        :pswitch_9a
        :pswitch_9a
        :pswitch_9f
        :pswitch_9f
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0xc05
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a0
        :pswitch_a0
        :pswitch_a8
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x905
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_a9
        :pswitch_a9
        :pswitch_a9
        :pswitch_a9
        :pswitch_b0
        :pswitch_b1
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0xb05
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b9
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_ba
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0xd85
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x905
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_c4
        :pswitch_c4
        :pswitch_c4
        :pswitch_c4
        :pswitch_cb
        :pswitch_cc
    .end packed-switch

    :pswitch_data_18
    .packed-switch 0x985
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_d1
        :pswitch_d2
        :pswitch_d3
        :pswitch_d4
        :pswitch_cd
        :pswitch_cd
        :pswitch_cd
        :pswitch_d5
    .end packed-switch

    :pswitch_data_19
    .packed-switch 0xa85
        :pswitch_d7
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_dc
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_dd
        :pswitch_de
    .end packed-switch

    :pswitch_data_1a
    .packed-switch 0xc85
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_e3
        :pswitch_e4
        :pswitch_e5
        :pswitch_e6
        :pswitch_df
        :pswitch_df
        :pswitch_e7
    .end packed-switch

    :pswitch_data_1b
    .packed-switch 0xa05
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
        :pswitch_ec
        :pswitch_ec
        :pswitch_ec
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_ec
        :pswitch_ec
    .end packed-switch

    :pswitch_data_1c
    .packed-switch 0xd05
        :pswitch_ee
        :pswitch_ef
        :pswitch_f0
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
        :pswitch_f4
        :pswitch_ed
        :pswitch_ed
        :pswitch_f5
    .end packed-switch

    :pswitch_data_1d
    .packed-switch 0xb85
        :pswitch_f7
        :pswitch_f8
        :pswitch_f9
        :pswitch_fa
        :pswitch_fb
        :pswitch_fc
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_fc
        :pswitch_fc
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0xc05
        :pswitch_fe
        :pswitch_ff
        :pswitch_100
        :pswitch_101
        :pswitch_102
        :pswitch_103
        :pswitch_104
        :pswitch_fd
        :pswitch_fd
        :pswitch_105
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x905 -> :sswitch_8
        0x906 -> :sswitch_9
        0x907 -> :sswitch_a
        0x908 -> :sswitch_b
        0x909 -> :sswitch_c
        0x90a -> :sswitch_d
        0x90b -> :sswitch_e
        0x98f -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1f
    .packed-switch 0x985
        :pswitch_107
        :pswitch_108
        :pswitch_109
        :pswitch_10a
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
        :pswitch_106
        :pswitch_106
        :pswitch_106
        :pswitch_10e
    .end packed-switch

    :pswitch_data_20
    .packed-switch 0xb05
        :pswitch_110
        :pswitch_111
        :pswitch_112
        :pswitch_113
        :pswitch_114
        :pswitch_115
        :pswitch_116
        :pswitch_10f
        :pswitch_10f
        :pswitch_10f
        :pswitch_117
    .end packed-switch

    :pswitch_data_21
    .packed-switch 0xd85
        :pswitch_118
        :pswitch_119
        :pswitch_11a
        :pswitch_11b
        :pswitch_11c
        :pswitch_11d
        :pswitch_11e
        :pswitch_11f
    .end packed-switch
.end method

.method public handleRegionalCharacter([I)V
    .locals 8
    .param p1    # [I

    const/16 v7, 0x200b

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sput-boolean v4, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-eq v1, v5, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getToggledKeyCode(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getMultipleKeyCodes()[I

    move-result-object p1

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isCombinationAvailable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->getVowelKeyCode(IIZ)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getMultipleKeyCodes()[I

    move-result-object p1

    :cond_2
    invoke-static {v5}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v5}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    :goto_0
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    const/16 v2, 0xa83

    if-eq v1, v2, :cond_3

    invoke-static {v4}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    :cond_3
    :goto_1
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p1, :cond_5

    aget v1, p1, v4

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    if-eqz v1, :cond_5

    :cond_4
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    sput-boolean v4, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->drawKeyboardView()V

    :cond_5
    :goto_2
    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianVowelRowState()V

    :cond_6
    return-void

    :cond_7
    invoke-static {v4}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    invoke-static {v6}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    goto :goto_0

    :cond_8
    sget-boolean v1, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    if-nez v1, :cond_b

    array-length v1, p1

    if-ne v1, v6, :cond_9

    aget v1, p1, v5

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    :cond_9
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getThirdModeKeyCode(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getMultipleKeyCodes()[I

    move-result-object p1

    goto :goto_1

    :cond_a
    array-length v1, p1

    if-ne v1, v6, :cond_3

    new-array p1, v5, [I

    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    aput v1, p1, v4

    goto :goto_1

    :cond_b
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-ne v1, v5, :cond_3

    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, p1

    if-ne v1, v6, :cond_c

    aget v1, p1, v5

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    new-array p1, v5, [I

    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    aput v1, p1, v4

    goto/16 :goto_1

    :cond_c
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getToggledKeyCode(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    goto/16 :goto_1

    :cond_d
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    goto :goto_2

    :cond_e
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialMatra(I)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->checkCombination([I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_f
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-ne v1, v5, :cond_5

    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->drawKeyboardView()V

    goto/16 :goto_2

    :cond_10
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_11
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    const/16 v2, 0x17bf

    if-ne v1, v2, :cond_12

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mSwiftkeyQwertyIndianInputModule:Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

    invoke-virtual {v1, v7, p1, v5}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onCharacterKey(I[IZ)V

    :cond_12
    :goto_3
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-ne v1, v5, :cond_5

    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    sput-boolean v4, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->drawKeyboardView()V

    goto/16 :goto_2

    :cond_13
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    if-ge v1, v6, :cond_14

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mQwertyIndianInputModule:Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

    invoke-virtual {v1, v7, p1, v5}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_3

    :cond_14
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9QwertyIndianInputModule:Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

    invoke-virtual {v1, v7, p1, v5}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_3

    :cond_15
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_16
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-ne v1, v5, :cond_5

    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    sput-boolean v4, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->drawKeyboardView()V

    goto/16 :goto_2

    :cond_17
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa59

    if-lt v1, v2, :cond_18

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa5e

    if-le v1, v2, :cond_19

    :cond_18
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa36

    if-eq v1, v2, :cond_19

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa33

    if-eq v1, v2, :cond_19

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    :cond_19
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-ne v1, v5, :cond_5

    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    sput-boolean v4, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->drawKeyboardView()V

    goto/16 :goto_2

    :cond_1a
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    goto/16 :goto_2
.end method

.method public init(Lcom/diotek/ime/framework/input/QwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V
    .locals 4
    .param p1    # Lcom/diotek/ime/framework/input/QwertyIndianInputModule;
    .param p2    # Lcom/diotek/ime/framework/common/InputManager;
    .param p3    # I

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mQwertyIndianInputModule:Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

    iput-object p2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {p2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v0

    const/16 v1, 0x140

    if-gt v0, v1, :cond_2

    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setLowEndFlag(Z)V

    sput-boolean v2, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    :cond_2
    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isCombinationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    iput p3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    :cond_3
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndianFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getCurrentLangScriptId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->setLangScriptId(I)V

    :goto_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_2
.end method

.method public init(Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V
    .locals 6
    .param p1    # Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;
    .param p2    # Lcom/diotek/ime/framework/common/InputManager;
    .param p3    # I

    const/16 v5, 0x1e0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mSwiftkeyQwertyIndianInputModule:Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

    iput-object p2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {p2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_HEIGHT"

    const/16 v2, 0x320

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, v5, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_WIDTH"

    invoke-interface {v0, v1, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x140

    if-gt v0, v1, :cond_2

    invoke-static {v3}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setLowEndFlag(Z)V

    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    :cond_2
    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isCombinationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    iput p3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    :cond_3
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndianFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getCurrentLangScriptId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->setLangScriptId(I)V

    :goto_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_2
.end method

.method public init(Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V
    .locals 6
    .param p1    # Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;
    .param p2    # Lcom/diotek/ime/framework/common/InputManager;
    .param p3    # I

    const/16 v5, 0x1e0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9QwertyIndianInputModule:Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

    iput-object p2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {p2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_HEIGHT"

    const/16 v2, 0x320

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, v5, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_WIDTH"

    invoke-interface {v0, v1, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x140

    if-gt v0, v1, :cond_2

    invoke-static {v3}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setLowEndFlag(Z)V

    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    :cond_2
    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isCombinationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    iput p3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    :cond_3
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndianFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getCurrentLangScriptId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->setLangScriptId(I)V

    :goto_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_2
.end method

.method public isConsonant(II)Z
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    const/16 v1, 0x915

    if-lt p1, v1, :cond_0

    const/16 v1, 0x939

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x958

    if-lt p1, v1, :cond_5

    const/16 v1, 0x95f

    if-gt p1, v1, :cond_5

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    const/16 v1, 0x995

    if-lt p1, v1, :cond_3

    const/16 v1, 0x9b9

    if-le p1, v1, :cond_1

    :cond_3
    const/16 v1, 0x9dc

    if-lt p1, v1, :cond_4

    const/16 v1, 0x9df

    if-le p1, v1, :cond_1

    :cond_4
    const/16 v1, 0x9ce

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9f0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9f1

    if-eq p1, v1, :cond_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    if-ne p2, v1, :cond_8

    const/16 v1, 0xa15

    if-lt p1, v1, :cond_7

    const/16 v1, 0xa39

    if-le p1, v1, :cond_1

    :cond_7
    const/16 v1, 0xa59

    if-lt p1, v1, :cond_5

    const/16 v1, 0xa5e

    if-gt p1, v1, :cond_5

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    if-ne p2, v1, :cond_9

    const/16 v1, 0xa95

    if-lt p1, v1, :cond_5

    const/16 v1, 0xab9

    if-gt p1, v1, :cond_5

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    if-ne p2, v1, :cond_a

    const/16 v1, 0xb95

    if-lt p1, v1, :cond_5

    const/16 v1, 0xbb9

    if-gt p1, v1, :cond_5

    goto :goto_0

    :cond_a
    const/4 v1, 0x4

    if-ne p2, v1, :cond_b

    const/16 v1, 0xc15

    if-lt p1, v1, :cond_5

    const/16 v1, 0xc39

    if-gt p1, v1, :cond_5

    goto :goto_0

    :cond_b
    const/4 v1, 0x5

    if-ne p2, v1, :cond_d

    const/16 v1, 0xc95

    if-lt p1, v1, :cond_c

    const/16 v1, 0xcb9

    if-le p1, v1, :cond_1

    :cond_c
    const/16 v1, 0xcde

    if-ne p1, v1, :cond_5

    goto :goto_0

    :cond_d
    const/16 v1, 0x8

    if-ne p2, v1, :cond_e

    const/16 v1, 0xd15

    if-lt p1, v1, :cond_5

    const/16 v1, 0xd39

    if-gt p1, v1, :cond_5

    goto :goto_0

    :cond_e
    const/16 v1, 0x9

    if-ne p2, v1, :cond_f

    const/16 v1, 0xd9a

    if-lt p1, v1, :cond_5

    const/16 v1, 0xdc6

    if-gt p1, v1, :cond_5

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xa

    if-ne p2, v1, :cond_5

    const/16 v1, 0xb15

    if-lt p1, v1, :cond_10

    const/16 v1, 0xb39

    if-le p1, v1, :cond_1

    :cond_10
    const/16 v1, 0xb5c

    if-lt p1, v1, :cond_11

    const/16 v1, 0xb5f

    if-le p1, v1, :cond_1

    :cond_11
    const/16 v1, 0xb71

    if-ne p1, v1, :cond_5

    goto/16 :goto_0
.end method

.method public isDependentVowel(II)Z
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    const/16 v1, 0x93e

    if-lt p1, v1, :cond_0

    const/16 v1, 0x944

    if-le p1, v1, :cond_3

    :cond_0
    const/16 v1, 0x946

    if-lt p1, v1, :cond_1

    const/16 v1, 0x94c

    if-le p1, v1, :cond_3

    :cond_1
    const/16 v1, 0x962

    if-lt p1, v1, :cond_2

    const/16 v1, 0x963

    if-le p1, v1, :cond_3

    :cond_2
    const/16 v1, 0x951

    if-lt p1, v1, :cond_7

    const/16 v1, 0x954

    if-gt p1, v1, :cond_7

    :cond_3
    :goto_0
    return v0

    :cond_4
    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    const/16 v1, 0x9be

    if-lt p1, v1, :cond_5

    const/16 v1, 0x9cc

    if-le p1, v1, :cond_3

    :cond_5
    const/16 v1, 0x9e2

    if-lt p1, v1, :cond_6

    const/16 v1, 0x9e3

    if-le p1, v1, :cond_3

    :cond_6
    const/16 v1, 0x9d7

    if-eq p1, v1, :cond_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    const/4 v1, 0x6

    if-ne p2, v1, :cond_9

    const/16 v1, 0xa3e

    if-lt p1, v1, :cond_7

    const/16 v1, 0xa4c

    if-gt p1, v1, :cond_7

    goto :goto_0

    :cond_9
    const/4 v1, 0x7

    if-ne p2, v1, :cond_b

    const/16 v1, 0xabe

    if-lt p1, v1, :cond_a

    const/16 v1, 0xacc

    if-le p1, v1, :cond_3

    :cond_a
    const/16 v1, 0xae2

    if-lt p1, v1, :cond_7

    const/16 v1, 0xae3

    if-gt p1, v1, :cond_7

    goto :goto_0

    :cond_b
    const/4 v1, 0x3

    if-ne p2, v1, :cond_d

    const/16 v1, 0xbbe

    if-lt p1, v1, :cond_c

    const/16 v1, 0xbcc

    if-le p1, v1, :cond_3

    :cond_c
    const/16 v1, 0xbd7

    if-ne p1, v1, :cond_7

    goto :goto_0

    :cond_d
    const/4 v1, 0x4

    if-ne p2, v1, :cond_10

    const/16 v1, 0xc3e

    if-lt p1, v1, :cond_e

    const/16 v1, 0xc4c

    if-le p1, v1, :cond_3

    :cond_e
    const/16 v1, 0xc62

    if-lt p1, v1, :cond_f

    const/16 v1, 0xc63

    if-le p1, v1, :cond_3

    :cond_f
    const/16 v1, 0xc55

    if-lt p1, v1, :cond_7

    const/16 v1, 0xc56

    if-gt p1, v1, :cond_7

    goto :goto_0

    :cond_10
    const/4 v1, 0x5

    if-ne p2, v1, :cond_13

    const/16 v1, 0xcbe

    if-lt p1, v1, :cond_11

    const/16 v1, 0xccc

    if-le p1, v1, :cond_3

    :cond_11
    const/16 v1, 0xcd5

    if-lt p1, v1, :cond_12

    const/16 v1, 0xcd6

    if-le p1, v1, :cond_3

    :cond_12
    const/16 v1, 0xce2

    if-lt p1, v1, :cond_7

    const/16 v1, 0xce3

    if-gt p1, v1, :cond_7

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x8

    if-ne p2, v1, :cond_16

    const/16 v1, 0xd3e

    if-lt p1, v1, :cond_14

    const/16 v1, 0xd4c

    if-le p1, v1, :cond_3

    :cond_14
    const/16 v1, 0xd62

    if-lt p1, v1, :cond_15

    const/16 v1, 0xd63

    if-le p1, v1, :cond_3

    :cond_15
    const/16 v1, 0xd57

    if-ne p1, v1, :cond_7

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x9

    if-ne p2, v1, :cond_18

    const/16 v1, 0xdca

    if-lt p1, v1, :cond_17

    const/16 v1, 0xdde

    if-le p1, v1, :cond_3

    :cond_17
    const/16 v1, 0xdf2

    if-lt p1, v1, :cond_7

    const/16 v1, 0xdf3

    if-gt p1, v1, :cond_7

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xa

    if-ne p2, v1, :cond_7

    const/16 v1, 0xb3e

    if-lt p1, v1, :cond_19

    const/16 v1, 0xb48

    if-le p1, v1, :cond_3

    :cond_19
    const/16 v1, 0xb4b

    if-lt p1, v1, :cond_1a

    const/16 v1, 0xb4c

    if-le p1, v1, :cond_3

    :cond_1a
    const/16 v1, 0xb62

    if-lt p1, v1, :cond_1b

    const/16 v1, 0xb63

    if-le p1, v1, :cond_3

    :cond_1b
    const/16 v1, 0xb56

    if-ge p1, v1, :cond_3

    const/16 v1, 0xb57

    if-lt p1, v1, :cond_7

    goto/16 :goto_0
.end method

.method public isHalant(I)Z
    .locals 1
    .param p1    # I

    const/16 v0, 0x94d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9cd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4d

    if-eq p1, v0, :cond_0

    const/16 v0, 0xacd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc4d

    if-eq p1, v0, :cond_0

    const/16 v0, 0xccd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd4d

    if-eq p1, v0, :cond_0

    const/16 v0, 0xddf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4d

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndependentVowel(II)Z
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    const/16 v1, 0x904

    if-lt p1, v1, :cond_0

    const/16 v1, 0x914

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x960

    if-lt p1, v1, :cond_4

    const/16 v1, 0x961

    if-gt p1, v1, :cond_4

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    const/16 v1, 0x985

    if-lt p1, v1, :cond_3

    const/16 v1, 0x994

    if-le p1, v1, :cond_1

    :cond_3
    const/16 v1, 0x9e0

    if-lt p1, v1, :cond_4

    const/16 v1, 0x9e1

    if-le p1, v1, :cond_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne p2, v1, :cond_7

    const/16 v1, 0xa05

    if-lt p1, v1, :cond_6

    const/16 v1, 0xa14

    if-le p1, v1, :cond_1

    :cond_6
    const/16 v1, 0xa72

    if-lt p1, v1, :cond_4

    const/16 v1, 0xa73

    if-gt p1, v1, :cond_4

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    if-ne p2, v1, :cond_9

    const/16 v1, 0xa85

    if-lt p1, v1, :cond_8

    const/16 v1, 0xa94

    if-le p1, v1, :cond_1

    :cond_8
    const/16 v1, 0xae0

    if-lt p1, v1, :cond_4

    const/16 v1, 0xae1

    if-gt p1, v1, :cond_4

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    if-ne p2, v1, :cond_a

    const/16 v1, 0xb83

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb85

    if-lt p1, v1, :cond_4

    const/16 v1, 0xb94

    if-gt p1, v1, :cond_4

    goto :goto_0

    :cond_a
    const/4 v1, 0x4

    if-ne p2, v1, :cond_c

    const/16 v1, 0xc05

    if-lt p1, v1, :cond_b

    const/16 v1, 0xc14

    if-le p1, v1, :cond_1

    :cond_b
    const/16 v1, 0xc60

    if-lt p1, v1, :cond_4

    const/16 v1, 0xc61

    if-gt p1, v1, :cond_4

    goto :goto_0

    :cond_c
    const/4 v1, 0x5

    if-ne p2, v1, :cond_e

    const/16 v1, 0xc85

    if-lt p1, v1, :cond_d

    const/16 v1, 0xc94

    if-le p1, v1, :cond_1

    :cond_d
    const/16 v1, 0xce0

    if-lt p1, v1, :cond_4

    const/16 v1, 0xce1

    if-gt p1, v1, :cond_4

    goto :goto_0

    :cond_e
    const/16 v1, 0x8

    if-ne p2, v1, :cond_10

    const/16 v1, 0xd05

    if-lt p1, v1, :cond_f

    const/16 v1, 0xd14

    if-le p1, v1, :cond_1

    :cond_f
    const/16 v1, 0xd60

    if-lt p1, v1, :cond_4

    const/16 v1, 0xd61

    if-gt p1, v1, :cond_4

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x9

    if-ne p2, v1, :cond_11

    const/16 v1, 0xd85

    if-lt p1, v1, :cond_4

    const/16 v1, 0xd96

    if-gt p1, v1, :cond_4

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xa

    if-ne p2, v1, :cond_4

    const/16 v1, 0xb05

    if-lt p1, v1, :cond_12

    const/16 v1, 0xb14

    if-le p1, v1, :cond_1

    :cond_12
    const/16 v1, 0xb60

    if-lt p1, v1, :cond_4

    const/16 v1, 0xb61

    if-gt p1, v1, :cond_4

    goto/16 :goto_0
.end method

.method public isIndianFunctionKey(I)Z
    .locals 1
    .param p1    # I

    const/16 v0, -0x1f3

    if-eq p1, v0, :cond_0

    const/16 v0, -0x1f0

    if-eq p1, v0, :cond_0

    const/16 v0, -0x1f2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNuktaSymbol(I)Z
    .locals 1
    .param p1    # I

    const/16 v0, 0x93c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9bc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0xabc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcbc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa51

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpecialMatra(I)Z
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x985
        :pswitch_0
    .end packed-switch
.end method

.method public isSpecialVowel(II)Z
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    const/16 v1, 0x901

    if-lt p1, v1, :cond_0

    const/16 v1, 0x903

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x945

    if-ne p1, v1, :cond_3

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    const/16 v1, 0x981

    if-lt p1, v1, :cond_3

    const/16 v1, 0x983

    if-le p1, v1, :cond_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne p2, v1, :cond_6

    const/16 v1, 0xa01

    if-lt p1, v1, :cond_5

    const/16 v1, 0xa03

    if-le p1, v1, :cond_1

    :cond_5
    const/16 v1, 0xa70

    if-lt p1, v1, :cond_3

    const/16 v1, 0xa71

    if-gt p1, v1, :cond_3

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    if-ne p2, v1, :cond_7

    const/16 v1, 0xa81

    if-lt p1, v1, :cond_3

    const/16 v1, 0xa83

    if-gt p1, v1, :cond_3

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    if-ne p2, v1, :cond_8

    const/16 v1, 0xb82

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    if-ne p2, v1, :cond_9

    const/16 v1, 0xc01

    if-lt p1, v1, :cond_3

    const/16 v1, 0xc03

    if-gt p1, v1, :cond_3

    goto :goto_0

    :cond_9
    const/4 v1, 0x5

    if-ne p2, v1, :cond_a

    const/16 v1, 0xc82

    if-lt p1, v1, :cond_3

    const/16 v1, 0xc83

    if-gt p1, v1, :cond_3

    goto :goto_0

    :cond_a
    const/16 v1, 0x8

    if-ne p2, v1, :cond_b

    const/16 v1, 0xd02

    if-lt p1, v1, :cond_3

    const/16 v1, 0xd03

    if-gt p1, v1, :cond_3

    goto :goto_0

    :cond_b
    const/16 v1, 0x9

    if-ne p2, v1, :cond_c

    const/16 v1, 0xd82

    if-lt p1, v1, :cond_3

    const/16 v1, 0xd83

    if-gt p1, v1, :cond_3

    goto :goto_0

    :cond_c
    const/16 v1, 0xa

    if-ne p2, v1, :cond_3

    const/16 v1, 0xb01

    if-lt p1, v1, :cond_3

    const/16 v1, 0xb03

    if-gt p1, v1, :cond_3

    goto :goto_0
.end method

.method public sendAshokaKey([I)V
    .locals 4
    .param p1    # [I

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mSwiftkeyQwertyIndianInputModule:Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onCharacterKey(I[IZ)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mQwertyIndianInputModule:Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9QwertyIndianInputModule:Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_0
.end method

.method public setIndianLanguageHbScript(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_1
    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x7

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x4

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_7
    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_8
    const/4 v0, 0x5

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_a
    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_b
    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xa

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61730000 -> :sswitch_a
        0x626e0000 -> :sswitch_7
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x6b6e0000 -> :sswitch_8
        0x6d6c0000 -> :sswitch_4
        0x6d720000 -> :sswitch_1
        0x6e650000 -> :sswitch_b
        0x6f720000 -> :sswitch_c
        0x70610000 -> :sswitch_3
        0x73690000 -> :sswitch_9
        0x74610000 -> :sswitch_5
        0x74650000 -> :sswitch_6
    .end sparse-switch
.end method

.method public setLangScriptId(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    return-void
.end method

.method public setPrevLangScriptId(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    return-void
.end method

.method public validCharToProcess(I)Z
    .locals 1
    .param p1    # I

    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
