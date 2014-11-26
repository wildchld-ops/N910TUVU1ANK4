.class public Lcom/diotek/dhwr/DHWR;
.super Ljava/lang/Object;
.source "DHWR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/dhwr/DHWR$Candidate;,
        Lcom/diotek/dhwr/DHWR$Result;,
        Lcom/diotek/dhwr/DHWR$Line;,
        Lcom/diotek/dhwr/DHWR$Block;,
        Lcom/diotek/dhwr/DHWR$BlockInfo;,
        Lcom/diotek/dhwr/DHWR$Setting;,
        Lcom/diotek/dhwr/DHWR$Ink;,
        Lcom/diotek/dhwr/DHWR$Point;
    }
.end annotation


# static fields
.field public static final ADDITIVE_DEGRADECAND:I = 0x1f

.field public static final ADDITIVE_INIT:I = 0x1c

.field public static final ADDITIVE_REMOVECAND:I = 0x1e

.field public static final ADDITIVE_REMOVELAST:I = 0x1d

.field public static final ADDON_PACKAGE:Ljava/lang/String; = "com.sec.android.dhwr.addon"

.field public static final DHWR_COMPLETE_CHAR:I = 0x1

.field public static final DHWR_COMPLETE_NONE:I = 0x0

.field public static final DHWR_COMPLETE_WORD:I = 0x2

.field public static final DHWR_LOG_CALLBACK:I = 0x9

.field public static final DHWR_LOG_LEVEL:I = 0x8

.field public static final DHWR_SHIFT_ALL_OFF:B = 0x0t

.field public static final DHWR_SHIFT_ALL_ON:B = 0x7t

.field public static final DHWR_SHIFT_DIRECT_BOTTOM:B = 0x8t

.field public static final DHWR_SHIFT_DIRECT_LEFT:B = 0x1t

.field public static final DHWR_SHIFT_DIRECT_NONE:B = 0x0t

.field public static final DHWR_SHIFT_DIRECT_RIGHT:B = 0x2t

.field public static final DHWR_SHIFT_DIRECT_TOP:B = 0x4t

.field public static final DHWR_SHIFT_ENG_ON:B = 0x1t

.field public static final DHWR_SHIFT_HAN_ON:B = 0x4t

.field public static final DHWR_SHIFT_INIT:B = 0x0t

.field public static final DHWR_SHIFT_NUM_ON:B = 0x2t

.field public static final DHWR_UNISTROKE_STATE_FAIL:B = 0x0t

.field public static final DHWR_UNISTROKE_STATE_NEW:B = 0x1t

.field public static final DHWR_UNISTROKE_STATE_UPDATE:B = 0x2t

.field public static final DHWR_WRITE_INK:I = 0x18

.field public static final DLANG_ALBANIAN:I = 0x2

.field public static final DLANG_ARABIC:I = 0x74

.field public static final DLANG_ARABIC_NUM:I = 0x78

.field public static final DLANG_ARABIC_SYM:I = 0x77

.field public static final DLANG_AUSTRIA:I = 0x3

.field public static final DLANG_BASQUE:I = 0x4

.field public static final DLANG_BELARUSIAN:I = 0x21

.field public static final DLANG_BENGALI:I = 0x7a

.field public static final DLANG_BPMF:I = 0x73

.field public static final DLANG_BULGARIAN:I = 0x22

.field public static final DLANG_CALCULATOR:I = 0x89

.field public static final DLANG_CATALAN:I = 0x5

.field public static final DLANG_CHARACTER_COMPONENTS:I = 0x96

.field public static final DLANG_CROATIAN:I = 0x6

.field public static final DLANG_CZECH:I = 0x7

.field public static final DLANG_DANISH:I = 0x8

.field public static final DLANG_DIALDIGIT:I = 0x8a

.field public static final DLANG_DIALDIGIT_PW:I = 0x8b

.field public static final DLANG_DUTCH:I = 0x9

.field public static final DLANG_EMOTICON:I = 0x87

.field public static final DLANG_ENGLISH:I = 0x0

.field public static final DLANG_ENGLISH_UK:I = 0x1

.field public static final DLANG_EQUALITY:I = 0x86

.field public static final DLANG_ESTONIAN:I = 0xa

.field public static final DLANG_EXTRA_CHN:I = 0x6e

.field public static final DLANG_FARSI:I = 0x75

.field public static final DLANG_FIJIAN:I = 0x2b

.field public static final DLANG_FINNISH:I = 0xb

.field public static final DLANG_FLICK:I = 0x82

.field public static final DLANG_FRENCH:I = 0xc

.field public static final DLANG_GAELIC:I = 0xd

.field public static final DLANG_GALICIAN:I = 0x3a

.field public static final DLANG_GERMANY:I = 0x3

.field public static final DLANG_GESTURE:I = 0x7f

.field public static final DLANG_GESTURE_EDITING:I = 0x80

.field public static final DLANG_GREEK:I = 0x23

.field public static final DLANG_HANJA:I = 0x66

.field public static final DLANG_HEBREW:I = 0x7b

.field public static final DLANG_HINDI:I = 0x79

.field public static final DLANG_HIRAGANA:I = 0x70

.field public static final DLANG_HONGKONG:I = 0x6f

.field public static final DLANG_HUNGARIAN:I = 0xf

.field public static final DLANG_ICELANDIC:I = 0x10

.field public static final DLANG_INDONESIAN:I = 0x38

.field public static final DLANG_IRISH:I = 0xd

.field public static final DLANG_ITALIAN:I = 0x11

.field public static final DLANG_KANJI:I = 0x72

.field public static final DLANG_KATAKANA:I = 0x71

.field public static final DLANG_KAZAKH:I = 0x24

.field public static final DLANG_KOREAN:I = 0x65

.field public static final DLANG_LATVIAN:I = 0x12

.field public static final DLANG_LITHUANIAN:I = 0x13

.field public static final DLANG_MACEDONIAN:I = 0x25

.field public static final DLANG_MALAY:I = 0x39

.field public static final DLANG_MAORI:I = 0x2c

.field public static final DLANG_MONGOLIAN:I = 0x26

.field public static final DLANG_NORWEGIAN:I = 0x14

.field public static final DLANG_NUMERIC:I = 0x83

.field public static final DLANG_OROMO:I = 0x30

.field public static final DLANG_POLISH:I = 0x15

.field public static final DLANG_PORTUGUESE:I = 0x16

.field public static final DLANG_PORTUGUESEB:I = 0x17

.field public static final DLANG_PUNC:I = 0x84

.field public static final DLANG_REGION1_ALL:I = 0x20

.field public static final DLANG_REGION2_ALL:I = 0x37

.field public static final DLANG_ROMANIAN:I = 0x18

.field public static final DLANG_RUSSIAN:I = 0x27

.field public static final DLANG_SAMOAN:I = 0x2d

.field public static final DLANG_SERBIAN_C:I = 0x28

.field public static final DLANG_SERBIAN_L:I = 0x19

.field public static final DLANG_SIMP_CHN:I = 0x67

.field public static final DLANG_SIMP_CHN_COMMON:I = 0x68

.field public static final DLANG_SIMP_CHN_RARE:I = 0x69

.field public static final DLANG_SIMP_RADICAL:I = 0x6a

.field public static final DLANG_SLOVAK:I = 0x1a

.field public static final DLANG_SLOVENIAN:I = 0x1b

.field public static final DLANG_SOTHO_N:I = 0x32

.field public static final DLANG_SOTHO_S:I = 0x31

.field public static final DLANG_SPANISH:I = 0xe

.field public static final DLANG_SWAHILI:I = 0x33

.field public static final DLANG_SWATI:I = 0x34

.field public static final DLANG_SWEDISH:I = 0x1c

.field public static final DLANG_SYMBOL:I = 0x85

.field public static final DLANG_TAITIAN:I = 0x2e

.field public static final DLANG_TATAR_C:I = 0x2a

.field public static final DLANG_TATAR_L:I = 0x1f

.field public static final DLANG_THAI:I = 0x7c

.field public static final DLANG_THAI_DIGIT:I = 0x7e

.field public static final DLANG_THAI_SIGN:I = 0x7d

.field public static final DLANG_TONGAN:I = 0x2f

.field public static final DLANG_TRAD_CHN:I = 0x6b

.field public static final DLANG_TRAD_CHN_COMMON:I = 0x6c

.field public static final DLANG_TRAD_CHN_RARE:I = 0x6d

.field public static final DLANG_TRAD_RADICAL:I = 0x97

.field public static final DLANG_TURKISH:I = 0x1d

.field public static final DLANG_UKRAINIAN:I = 0x29

.field public static final DLANG_URDU:I = 0x76

.field public static final DLANG_USER_SET:I = 0x88

.field public static final DLANG_USER_SHAPE:I = 0x81

.field public static final DLANG_VIETNAMESE:I = 0x1e

.field public static final DLANG_XHOSA:I = 0x35

.field public static final DLANG_ZULU:I = 0x36

.field public static final DSTATUS_DISABLE:I = 0x0

.field public static final DSTATUS_DISABLE_INSTALLABLE:I = 0x1

.field public static final DSTATUS_ENABLE:I = 0x2

.field public static final DSTATUS_ENABLE_INSTALLABLE:I = 0x3

.field public static final DTYPE_AUTO_SPACE:I

.field public static final DTYPE_BOTH_SIMP_TRAD:I

.field public static final DTYPE_CONSONANT:I

.field public static final DTYPE_CONS_RECOMMEND:I

.field public static final DTYPE_CURRENCY:I

.field public static final DTYPE_CURSIVE:I

.field public static final DTYPE_ENDPUNC:I

.field public static final DTYPE_JOHAP:I

.field public static final DTYPE_LOWERCASE:I

.field public static final DTYPE_MULTI_CHARS:I

.field public static final DTYPE_MULTI_LINE:I

.field public static final DTYPE_NONE:I

.field public static final DTYPE_NUMERIC:I

.field public static final DTYPE_ONLY_SIMP:I

.field public static final DTYPE_ONLY_TRAD:I

.field public static final DTYPE_SIGN:I

.field public static final DTYPE_SIMP_TO_TRAD:I

.field public static final DTYPE_TONE:I

.field public static final DTYPE_TRAD_TO_SIMP:I

.field public static final DTYPE_UNISTROKE:I

.field public static final DTYPE_UPPERCASE:I

.field public static final DTYPE_VOWEL:I

.field public static final DTYPE_VOWEL_DEPENDENT:I

.field public static final DTYPE_WANSUNG:I

.field public static final DTYPE_WANSUNG_EX:I

.field public static final ERR_AUTHORIZATION_FAIL:I = 0xd

.field public static final ERR_EMPTY_INK:I = 0x5

.field public static final ERR_ENGINE_BUSY:I = 0xc

.field public static final ERR_EXPIRE_DEMO:I = 0xa

.field public static final ERR_INVALID_ARGUMENTS:I = 0x6

.field public static final ERR_INVALID_DICTIONARY:I = 0x8

.field public static final ERR_INVALID_INSTANCE:I = 0x9

.field public static final ERR_INVALID_MODEL:I = 0x7

.field public static final ERR_NORESULT:I = 0x1

.field public static final ERR_NULL_POINTER:I = 0x2

.field public static final ERR_OUTOFMEMORY:I = 0x3

.field public static final ERR_OUTOFRANGE:I = 0x4

.field public static final ERR_SUCCESS:I = 0x0

.field public static final ERR_UNSUPPORTED_MODE:I = 0xb

.field public static final FAST_RECOGNITION:I = 0x20

.field public static final GESTURE_AWAY:B = 0x5t

.field public static final GESTURE_BACKSPACE:B = 0x8t

.field public static final GESTURE_DELETE:B = 0xct

.field public static final GESTURE_GRETURN:B = 0x3t

.field public static final GESTURE_MERGE:B = 0x2t

.field public static final GESTURE_RETURN:B = 0xdt

.field public static final GESTURE_SHIFT:B = 0x10t

.field public static final GESTURE_SPACE:B = 0x20t

.field public static final LEVEL_DEBUG:I = 0x4

.field public static final LEVEL_ERROR:I = 0x1

.field public static final LEVEL_INFO:I = 0x3

.field public static final LEVEL_NONE:I = 0x0

.field public static final LEVEL_WARN:I = 0x2

.field public static final MAX_CANDIDATES:B = 0xat

.field public static final MAX_CHARACTERS:B = 0x14t

.field public static final MULTICHAR:I = 0x1

.field public static final SINGLECHAR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DIOTEK"

.field public static final VERSION:Ljava/lang/String; = "4.11.0"

.field public static candidatelist_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/dhwr/DHWR$Candidate;",
            ">;"
        }
    .end annotation
.end field

.field private static mInk:Lcom/diotek/dhwr/DHWR$Ink;

.field public static mInnerCodeSet:[C

.field private static mResult:Lcom/diotek/dhwr/DHWR$Result;

.field private static mSetting:Lcom/diotek/dhwr/DHWR$Setting;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const-string v1, "NONE"

    const-string v2, "VOHWRPANEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4.11.0"

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->GetLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const-string v1, "DIOTEK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Library path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/diotek/dhwr/DHWR;->PrintLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    invoke-static {v6}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_MULTI_CHARS:I

    invoke-static {v7}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_UPPERCASE:I

    invoke-static {v4}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_LOWERCASE:I

    invoke-static {v5}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_AUTO_SPACE:I

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_MULTI_LINE:I

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_UNISTROKE:I

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_CURSIVE:I

    invoke-static {v8}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_WANSUNG:I

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_JOHAP:I

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_CONSONANT:I

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_CONS_RECOMMEND:I

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_VOWEL:I

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_VOWEL_DEPENDENT:I

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_TONE:I

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_CURRENCY:I

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_SIMP_TO_TRAD:I

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_TRAD_TO_SIMP:I

    invoke-static {v7}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_ONLY_TRAD:I

    invoke-static {v4}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_ONLY_SIMP:I

    invoke-static {v8}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_BOTH_SIMP_TRAD:I

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_ENDPUNC:I

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_WANSUNG_EX:I

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_NUMERIC:I

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->BIT_FLAG(I)I

    move-result v1

    sput v1, Lcom/diotek/dhwr/DHWR;->DTYPE_SIGN:I

    const/4 v1, 0x0

    sput-object v1, Lcom/diotek/dhwr/DHWR;->mInnerCodeSet:[C

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    new-instance v1, Lcom/diotek/dhwr/DHWR$Setting;

    invoke-direct {v1}, Lcom/diotek/dhwr/DHWR$Setting;-><init>()V

    sput-object v1, Lcom/diotek/dhwr/DHWR;->mSetting:Lcom/diotek/dhwr/DHWR$Setting;

    new-instance v1, Lcom/diotek/dhwr/DHWR$Ink;

    invoke-direct {v1}, Lcom/diotek/dhwr/DHWR$Ink;-><init>()V

    sput-object v1, Lcom/diotek/dhwr/DHWR;->mInk:Lcom/diotek/dhwr/DHWR$Ink;

    new-instance v1, Lcom/diotek/dhwr/DHWR$Result;

    invoke-direct {v1}, Lcom/diotek/dhwr/DHWR$Result;-><init>()V

    sput-object v1, Lcom/diotek/dhwr/DHWR;->mResult:Lcom/diotek/dhwr/DHWR$Result;

    return-void

    :cond_1
    const-string v1, "dhwr"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "DIOTEK"

    const-string v2, "GetLibraryPath fail"

    invoke-static {v6, v1, v2}, Lcom/diotek/dhwr/DHWR;->PrintLog(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "/system/lib/libdhwr.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native AddLanguage(JII)I
.end method

.method public static final AddPoint(SS)I
    .locals 1
    .param p0    # S
    .param p1    # S

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mInk:Lcom/diotek/dhwr/DHWR$Ink;

    invoke-virtual {v0, p0, p1}, Lcom/diotek/dhwr/DHWR$Ink;->AddPoint(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final native AddPoint(JII)Z
.end method

.method public static final native AvailableLanguageList()Ljava/lang/String;
.end method

.method private static final BIT_FLAG(I)I
    .locals 1
    .param p0    # I

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method public static final CheckWordInDict([C)I
    .locals 1
    .param p0    # [C

    const/4 v0, 0x0

    return v0
.end method

.method public static final ClearCandidateList()V
    .locals 1

    sget-object v0, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static final native ClearLanguage(J)I
.end method

.method public static final native Close()I
.end method

.method public static final native CopyInk(JIII)J
.end method

.method public static final Create()I
    .locals 3

    const/16 v0, 0xd

    invoke-static {}, Lcom/diotek/dhwr/DHWR;->makeLicenseKeyStringFromRepository()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lcom/diotek/dhwr/DHWR;->Create([C)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->CreateEngine()I

    move-result v0

    goto :goto_0
.end method

.method public static final native Create([C)I
.end method

.method public static final native CreateEngine()I
.end method

.method public static final native CreateInkObject()J
.end method

.method public static final native CreateResultObject()J
.end method

.method public static final native CreateSettingObject()J
.end method

.method public static final native DestroyInkObject(J)V
.end method

.method public static final native DestroyResultObject(J)V
.end method

.method public static final native DestroySettingObject(J)V
.end method

.method public static final EndStroke()I
    .locals 1

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mInk:Lcom/diotek/dhwr/DHWR$Ink;

    invoke-virtual {v0}, Lcom/diotek/dhwr/DHWR$Ink;->EndStroke()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final native EndStroke(J)Z
.end method

.method public static final EraseAddPoint(SS)I
    .locals 2
    .param p0    # S
    .param p1    # S

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mInk:Lcom/diotek/dhwr/DHWR$Ink;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/DHWR$Ink;->SetType(I)V

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mInk:Lcom/diotek/dhwr/DHWR$Ink;

    invoke-virtual {v0, p0, p1}, Lcom/diotek/dhwr/DHWR$Ink;->AddPoint(II)Z

    const/4 v0, 0x0

    return v0
.end method

.method public static final EraseEndStroke()I
    .locals 2

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mInk:Lcom/diotek/dhwr/DHWR$Ink;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/DHWR$Ink;->SetType(I)V

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mInk:Lcom/diotek/dhwr/DHWR$Ink;

    invoke-virtual {v0}, Lcom/diotek/dhwr/DHWR$Ink;->EndStroke()Z

    const/4 v0, 0x0

    return v0
.end method

.method public static final EraseSetThick(I)I
    .locals 1
    .param p0    # I

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mInk:Lcom/diotek/dhwr/DHWR$Ink;

    invoke-virtual {v0, p0}, Lcom/diotek/dhwr/DHWR$Ink;->SetEraseThick(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public static final FreeUserCharSet()I
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/dhwr/DHWR;->mInnerCodeSet:[C

    const/4 v0, 0x0

    return v0
.end method

.method public static final native GetBlock(JI)J
.end method

.method public static final native GetBlockInfo(JLcom/diotek/dhwr/DHWR$BlockInfo;)Z
.end method

.method public static final native GetBlockSize(J)I
.end method

.method public static final native GetCandidate(JI)Ljava/lang/String;
.end method

.method public static final native GetCandidateSize(J)I
.end method

.method public static final native GetInkCount(J)I
.end method

.method public static final GetInkCount([I)I
    .locals 2
    .param p0    # [I

    const/4 v1, 0x0

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mInk:Lcom/diotek/dhwr/DHWR$Ink;

    invoke-virtual {v0}, Lcom/diotek/dhwr/DHWR$Ink;->GetSize()I

    move-result v0

    aput v0, p0, v1

    return v1
.end method

.method public static final native GetInkPoint(JILcom/diotek/dhwr/DHWR$Point;)Z
.end method

.method public static final native GetLanguagePackage(I)Ljava/lang/String;
.end method

.method public static final native GetLanguageSize(J)I
.end method

.method public static final native GetLanguageStatus(I)I
.end method

.method public static final GetLanguageStatus(Landroid/content/Context;I)Z
    .locals 9
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {p1}, Lcom/diotek/dhwr/DHWR;->GetLanguageStatus(I)I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v8, 0x2

    if-ne v3, v8, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/diotek/dhwr/DHWR;->GetLanguagePackage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v1, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static GetLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .param p0    # Ljava/lang/String;

    const-string v13, "libdhwr.so"

    const-string v11, "libdhwrex.so"

    const-string v7, "/system/lib/"

    const-string v4, "/data/data/com.sec.android.dhwr.addon/lib/"

    const-string v16, "/data/data/com.sec.android.inputmethod/lib/"

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x2

    const/4 v12, 0x3

    new-instance v3, Ljava/io/File;

    const-string v21, "/data/data/com.sec.android.dhwr.addon/lib/libdhwr.so"

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v19, 0x0

    :try_start_0
    new-instance v20, Ljava/io/FileInputStream;

    const-string v21, "/data/data/com.sec.android.dhwr.addon/lib/libdhwrex.so"

    invoke-direct/range {v20 .. v21}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->available()I

    move-result v21

    move/from16 v0, v21

    new-array v9, v0, [B

    const/16 v21, 0x0

    array-length v0, v9

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    new-instance v21, Ljava/lang/String;

    const-string v22, "ascii"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v9, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v22, "\\."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    aget-object v22, v18, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v18, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_4

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v20, :cond_10

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v19, v20

    :cond_1
    :goto_1
    const/4 v6, 0x0

    new-instance v6, Ljava/io/File;

    const-string v21, "/system/lib/libdhwr.so"

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v19, 0x0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    :try_start_3
    new-instance v20, Ljava/io/FileInputStream;

    const-string v21, "/system/lib/libdhwrex.so"

    invoke-direct/range {v20 .. v21}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->available()I

    move-result v21

    move/from16 v0, v21

    new-array v9, v0, [B

    const/16 v21, 0x0

    array-length v0, v9

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    new-instance v21, Ljava/lang/String;

    const-string v22, "ascii"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v9, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v22, "\\."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    aget-object v22, v18, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v18, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v21

    if-eqz v21, :cond_8

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v20, :cond_f

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v19, v20

    :cond_3
    :goto_3
    if-nez v6, :cond_b

    if-nez v3, :cond_b

    const/16 v21, 0x0

    :goto_4
    return-object v21

    :cond_4
    const/16 v21, 0x2

    :try_start_6
    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v5

    goto/16 :goto_0

    :catch_0
    move-exception v10

    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v21, :cond_5

    const-string v21, "SamsungIME"

    const-string v22, "versionFile.close() fail."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v19, v20

    goto/16 :goto_1

    :catch_1
    move-exception v10

    :goto_5
    const/4 v3, 0x0

    :try_start_7
    const-string v21, "SamsungIME"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Addon Library Missing : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v19, :cond_1

    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v10

    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v21, :cond_1

    const-string v21, "SamsungIME"

    const-string v22, "versionFile.close() fail."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v21

    :goto_6
    if-eqz v19, :cond_6

    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_6
    :goto_7
    throw v21

    :catch_3
    move-exception v10

    sget-boolean v22, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v22, :cond_6

    const-string v22, "SamsungIME"

    const-string v23, "versionFile.close() fail."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v21, 0x2

    :try_start_a
    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v8

    goto :goto_2

    :catch_4
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v19, v20

    goto :goto_3

    :catch_5
    move-exception v10

    :goto_8
    const/4 v6, 0x0

    :try_start_b
    const-string v21, "SamsungIME"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Base Library Missing : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v19, :cond_3

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :catchall_1
    move-exception v21

    :goto_9
    if-eqz v19, :cond_9

    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_9
    :goto_a
    throw v21

    :catch_7
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_b
    if-nez v3, :cond_c

    const-string v21, "/system/lib/libdhwr.so"

    goto/16 :goto_4

    :cond_c
    if-nez v6, :cond_d

    const-string v21, "/data/data/com.sec.android.dhwr.addon/lib/libdhwr.so"

    goto/16 :goto_4

    :cond_d
    if-le v5, v8, :cond_e

    const-string v21, "/data/data/com.sec.android.dhwr.addon/lib/libdhwr.so"

    goto/16 :goto_4

    :cond_e
    const-string v21, "/system/lib/libdhwr.so"

    goto/16 :goto_4

    :catchall_2
    move-exception v21

    move-object/from16 v19, v20

    goto :goto_9

    :catch_8
    move-exception v10

    move-object/from16 v19, v20

    goto :goto_8

    :catchall_3
    move-exception v21

    move-object/from16 v19, v20

    goto :goto_6

    :catch_9
    move-exception v10

    move-object/from16 v19, v20

    goto/16 :goto_5

    :cond_f
    move-object/from16 v19, v20

    goto/16 :goto_3

    :cond_10
    move-object/from16 v19, v20

    goto/16 :goto_1
.end method

.method public static final native GetLine(JI)J
.end method

.method public static final native GetLineSize(J)I
.end method

.method public static final GetLogLevel()B
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [B

    invoke-static {v1, v0}, Lcom/diotek/dhwr/DHWR;->GetParam(I[B)I

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    return v1
.end method

.method public static final native GetParam(I[B)I
.end method

.method public static final native GetRevision([C)I
.end method

.method public static final InkClear()I
    .locals 1

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mInk:Lcom/diotek/dhwr/DHWR$Ink;

    invoke-virtual {v0}, Lcom/diotek/dhwr/DHWR$Ink;->Clear()V

    const/4 v0, 0x0

    return v0
.end method

.method public static final native InkClear(J)V
.end method

.method public static final LoadDict([B[B)I
    .locals 1
    .param p0    # [B
    .param p1    # [B

    const/4 v0, 0x0

    return v0
.end method

.method public static final PrintLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # I
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {}, Lcom/diotek/dhwr/DHWR;->GetLogLevel()B

    move-result v0

    if-gt p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static final Recognize(Lcom/diotek/dhwr/DHWR$Ink;Lcom/diotek/dhwr/DHWR$Result;)I
    .locals 25
    .param p0    # Lcom/diotek/dhwr/DHWR$Ink;
    .param p1    # Lcom/diotek/dhwr/DHWR$Result;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/diotek/dhwr/DHWR;->CreateResultObject()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/dhwr/DHWR$Ink;->GetHandle()J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-static {v0, v1, v7, v8}, Lcom/diotek/dhwr/DHWR;->RecognizeWithContext(JJ)I

    move-result v15

    invoke-static {v7, v8}, Lcom/diotek/dhwr/DHWR;->GetLineSize(J)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/4 v9, 0x0

    :goto_0
    int-to-long v0, v9

    move-wide/from16 v21, v0

    cmp-long v21, v21, v18

    if-gez v21, :cond_5

    new-instance v14, Lcom/diotek/dhwr/DHWR$Line;

    invoke-direct {v14}, Lcom/diotek/dhwr/DHWR$Line;-><init>()V

    invoke-static {v7, v8, v9}, Lcom/diotek/dhwr/DHWR;->GetLine(JI)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/diotek/dhwr/DHWR;->GetBlockSize(J)I

    move-result v16

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    new-instance v2, Lcom/diotek/dhwr/DHWR$Block;

    invoke-direct {v2}, Lcom/diotek/dhwr/DHWR$Block;-><init>()V

    invoke-static {v5, v6, v12}, Lcom/diotek/dhwr/DHWR;->GetBlock(JI)J

    move-result-wide v3

    new-instance v11, Lcom/diotek/dhwr/DHWR$BlockInfo;

    invoke-direct {v11}, Lcom/diotek/dhwr/DHWR$BlockInfo;-><init>()V

    invoke-static {v3, v4, v11}, Lcom/diotek/dhwr/DHWR;->GetBlockInfo(JLcom/diotek/dhwr/DHWR$BlockInfo;)Z

    iget v0, v11, Lcom/diotek/dhwr/DHWR$BlockInfo;->stroke:I

    move/from16 v21, v0

    add-int v10, v10, v21

    if-eqz v10, :cond_0

    add-int/lit8 v21, v10, -0x1

    move/from16 v0, v21

    iput v0, v11, Lcom/diotek/dhwr/DHWR$BlockInfo;->stroke:I

    :cond_0
    iput-object v11, v2, Lcom/diotek/dhwr/DHWR$Block;->info:Lcom/diotek/dhwr/DHWR$BlockInfo;

    invoke-static {v3, v4}, Lcom/diotek/dhwr/DHWR;->GetCandidateSize(J)I

    move-result v17

    const/16 v21, 0x4

    const-string v22, "DIOTEK"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "DHWR.java Complete: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v11, Lcom/diotek/dhwr/DHWR$BlockInfo;->complete:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Stroke: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v11, Lcom/diotek/dhwr/DHWR$BlockInfo;->stroke:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/diotek/dhwr/DHWR;->PrintLog(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_1

    invoke-static {v3, v4, v13}, Lcom/diotek/dhwr/DHWR;->GetCandidate(JI)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x4

    const-string v22, "DIOTEK"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "DHWR.java ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]: \""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/diotek/dhwr/DHWR;->PrintLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/diotek/dhwr/DHWR$Block;->candidates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, v2, Lcom/diotek/dhwr/DHWR$Block;->candidates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {v7, v8}, Lcom/diotek/dhwr/DHWR;->DestroyResultObject(J)V

    return v15
.end method

.method public static final Recognize(Z)I
    .locals 12
    .param p0    # Z

    const/4 v9, 0x1

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v5

    sget-object v10, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    sget-object v10, Lcom/diotek/dhwr/DHWR;->mSetting:Lcom/diotek/dhwr/DHWR$Setting;

    invoke-virtual {v10, p0}, Lcom/diotek/dhwr/DHWR$Setting;->SetContinuity(Z)I

    sget-object v10, Lcom/diotek/dhwr/DHWR;->mInk:Lcom/diotek/dhwr/DHWR$Ink;

    sget-object v11, Lcom/diotek/dhwr/DHWR;->mResult:Lcom/diotek/dhwr/DHWR$Result;

    invoke-static {v10, v11}, Lcom/diotek/dhwr/DHWR;->Recognize(Lcom/diotek/dhwr/DHWR$Ink;Lcom/diotek/dhwr/DHWR$Result;)I

    move-result v7

    sget-object v10, Lcom/diotek/dhwr/DHWR;->mResult:Lcom/diotek/dhwr/DHWR$Result;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    move v7, v9

    :cond_0
    return v7

    :cond_1
    sget-object v10, Lcom/diotek/dhwr/DHWR;->mResult:Lcom/diotek/dhwr/DHWR$Result;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/diotek/dhwr/DHWR$Line;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/dhwr/DHWR$Block;

    iget-object v10, v0, Lcom/diotek/dhwr/DHWR$Block;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v1, Lcom/diotek/dhwr/DHWR$Candidate;

    invoke-direct {v1, v8}, Lcom/diotek/dhwr/DHWR$Candidate;-><init>(I)V

    const/high16 v10, 0x69770000

    if-ne v5, v10, :cond_2

    add-int/lit8 v4, v8, -0x1

    :goto_1
    if-le v4, v9, :cond_3

    iget-object v10, v1, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/diotek/dhwr/DHWR$Block;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_3

    iget-object v10, v1, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/diotek/dhwr/DHWR$Block;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v10, v0, Lcom/diotek/dhwr/DHWR$Block;->info:Lcom/diotek/dhwr/DHWR$BlockInfo;

    iget v10, v10, Lcom/diotek/dhwr/DHWR$BlockInfo;->complete:I

    iput v10, v1, Lcom/diotek/dhwr/DHWR$Candidate;->complete_:I

    iget-object v10, v0, Lcom/diotek/dhwr/DHWR$Block;->info:Lcom/diotek/dhwr/DHWR$BlockInfo;

    iget v10, v10, Lcom/diotek/dhwr/DHWR$BlockInfo;->stroke:I

    iput v10, v1, Lcom/diotek/dhwr/DHWR$Candidate;->stroke_:I

    sget-object v10, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final native RecognizeWithContext(JJ)I
.end method

.method public static final SetAttribute(I[[II[I)I
    .locals 6
    .param p0    # I
    .param p1    # [[I
    .param p2    # I
    .param p3    # [I

    const/4 v5, 0x0

    sget-object v1, Lcom/diotek/dhwr/DHWR;->mSetting:Lcom/diotek/dhwr/DHWR$Setting;

    invoke-virtual {v1}, Lcom/diotek/dhwr/DHWR$Setting;->ClearLanguage()I

    sget-object v1, Lcom/diotek/dhwr/DHWR;->mSetting:Lcom/diotek/dhwr/DHWR$Setting;

    invoke-virtual {v1, p0}, Lcom/diotek/dhwr/DHWR$Setting;->SetMode(I)I

    sget-object v1, Lcom/diotek/dhwr/DHWR;->mSetting:Lcom/diotek/dhwr/DHWR$Setting;

    aget v2, p3, v5

    invoke-virtual {v1, v2}, Lcom/diotek/dhwr/DHWR$Setting;->SetCandidateSize(I)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    sget-object v1, Lcom/diotek/dhwr/DHWR;->mSetting:Lcom/diotek/dhwr/DHWR$Setting;

    aget-object v2, p1, v0

    aget v2, v2, v5

    aget-object v3, p1, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/diotek/dhwr/DHWR$Setting;->AddLanguage(II)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/diotek/dhwr/DHWR;->mSetting:Lcom/diotek/dhwr/DHWR$Setting;

    invoke-static {v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(Lcom/diotek/dhwr/DHWR$Setting;)I

    return v5
.end method

.method public static final native SetAttribute(J)I
.end method

.method public static SetAttribute(Lcom/diotek/dhwr/DHWR$Setting;)I
    .locals 2
    .param p0    # Lcom/diotek/dhwr/DHWR$Setting;

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mInnerCodeSet:[C

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mInnerCodeSet:[C

    invoke-virtual {p0, v0}, Lcom/diotek/dhwr/DHWR$Setting;->SetUserCharSet([C)I

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/dhwr/DHWR;->mInnerCodeSet:[C

    invoke-virtual {p0}, Lcom/diotek/dhwr/DHWR$Setting;->GetHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(J)I

    move-result v0

    return v0
.end method

.method public static final native SetCandidateSize(JI)I
.end method

.method public static final native SetContinuity(JZ)I
.end method

.method public static final native SetEraseThick(JI)V
.end method

.method public static final native SetExternalLibraryPath([C)I
.end method

.method public static final native SetExternalResourcePath([C)I
.end method

.method public static final native SetInkType(JI)V
.end method

.method public static SetLogDisable()I
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    new-array v0, v2, [B

    aput-byte v1, v0, v1

    invoke-static {v2, v0}, Lcom/diotek/dhwr/DHWR;->SetParam(I[B)I

    move-result v1

    return v1
.end method

.method public static SetLogEnable()I
    .locals 4

    const/16 v3, 0x8

    new-array v0, v3, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    invoke-static {v3, v0}, Lcom/diotek/dhwr/DHWR;->SetParam(I[B)I

    move-result v1

    return v1
.end method

.method public static final native SetParam(I[B)I
.end method

.method public static final native SetRecognitionMode(JI)I
.end method

.method public static final native SetUserCharSet(J[C)I
.end method

.method public static final SetUserCharSet([CI)I
    .locals 1
    .param p0    # [C
    .param p1    # I

    sput-object p0, Lcom/diotek/dhwr/DHWR;->mInnerCodeSet:[C

    const/4 v0, 0x0

    return v0
.end method

.method public static final SetWritingArea(IIIII)I
    .locals 6
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    sget-object v0, Lcom/diotek/dhwr/DHWR;->mSetting:Lcom/diotek/dhwr/DHWR$Setting;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/diotek/dhwr/DHWR$Setting;->SetWritingArea(IIIII)I

    move-result v0

    return v0
.end method

.method public static final native SetWritingArea(JIIIII)I
.end method

.method public static makeLicenseKeyStringFromRepository()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    const-string v3, "HWR_LICENSE"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
