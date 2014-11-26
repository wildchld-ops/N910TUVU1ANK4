.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingPrivate;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingCmnInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWMDBInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWASDBInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9LdbASRecMap;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWRUDBInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCDBInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingComPrivate;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALDBAutoSub;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdb;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbSearchData;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCursorData;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbHeaderData;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASpc;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASPCCompareData;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWPrivWordInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPrivate;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBAction;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBPageHdr;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDBRegionHdr;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_Request;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_ReqGetSymbol;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_ReqSetTimeout;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9BaseLingInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfoPrivate;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWords;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWord;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputSymb;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SymbInfo;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9DataPerBaseSym;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$BaseCallback;,
        Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$BasePublicExtension;
    }
.end annotation


# static fields
.field public static final ALDB_COMPARE_MAX_CODE_BYTES:I = 0x11

.field public static final ALDB_COMPARE_MAX_DIST_LENGTHS:I = 0x7

.field public static final ALDB_COMPARE_MAX_FREQ_POS:I = 0xb

.field public static final ALDB_COMPARE_MAX_POS:I = 0x20

.field public static final ALDB_CURSOR_DATA_CACHE_SIZE:I = 0x14

.field public static final ALDB_HEADER_MAX_CHAR_CODES:I = 0x88

.field public static final ALDB_HEADER_MAX_DIRECT_ENCODE:I = 0x100

.field public static final ALDB_HEADER_ONE_BYTE_SIZE:I = 0xff

.field public static final ET9AEXACTINLIST_DEFAULT:B = 0x3t

.field public static final ET9AEXACTINLIST_FIRST:B = 0x1t

.field public static final ET9AEXACTINLIST_LAST:B = 0x2t

.field public static final ET9AEXACTINLIST_OFF:B = 0x0t

.field public static final ET9ASLCORRECTIONMODE_HIGH:B = 0x2t

.field public static final ET9ASLCORRECTIONMODE_LOW:B = 0x0t

.field public static final ET9ASLCORRECTIONMODE_MEDIUM:B = 0x1t

.field public static final ET9ASLMODE_CLASSIC:B = 0x0t

.field public static final ET9ASLMODE_COMPLETIONSPROMOTED:B = 0x1t

.field public static final ET9ASPCMODE_EXACT:B = 0x1t

.field public static final ET9ASPCMODE_OFF:B = 0x0t

.field public static final ET9ASPCMODE_REGIONAL:B = 0x2t

.field public static final ET9ASPCSEARCHFILTER_ONE_EXACT:B = 0x3t

.field public static final ET9ASPCSEARCHFILTER_ONE_REGIONAL:B = 0x2t

.field public static final ET9ASPCSEARCHFILTER_TWO_EXACT:B = 0x5t

.field public static final ET9ASPCSEARCHFILTER_TWO_REGIONAL:B = 0x4t

.field public static final ET9ASPCSEARCHFILTER_UNFILTERED:B = 0x0t

.field public static final ET9AUTOCAP_APPLIED:B = 0x2t

.field public static final ET9AUTOCAP_OFF:B = 0x0t

.field public static final ET9AUTOCAP_PENDING:B = 0x1t

.field public static final ET9AWORDSOURCE_ASDB:S = 0x5s

.field public static final ET9AWORDSOURCE_AUTOAPPEND:S = 0x7s

.field public static final ET9AWORDSOURCE_CDB:S = 0x4s

.field public static final ET9AWORDSOURCE_CONSTRUCTED:S = 0x9s

.field public static final ET9AWORDSOURCE_CUSTOM:S = 0x1s

.field public static final ET9AWORDSOURCE_GDB:S = 0xbs

.field public static final ET9AWORDSOURCE_LDB:S = 0x2s

.field public static final ET9AWORDSOURCE_MDB:S = 0x3s

.field public static final ET9AWORDSOURCE_NEWWORD:S = 0xas

.field public static final ET9AWORDSOURCE_STEM:S = 0x6s

.field public static final ET9AWORDSOURCE_TERMPUNCT:S = 0x8s

.field public static final ET9CAPSLOCK:B = 0x2t

.field public static final ET9CPMAXPAGESIZE:S = 0x1es

.field public static final ET9CPMAXPHRASESIZE:B = 0x20t

.field public static final ET9CPMAXSPELLSIZE:S = 0xe0s

.field public static final ET9CPMODE_BPMF:B = 0x1t

.field public static final ET9CPMODE_CANGJIE:B = 0x3t

.field public static final ET9CPMODE_PINYIN:B = 0x0t

.field public static final ET9CPMODE_QUICK_CANGJIE:B = 0x4t

.field public static final ET9CPMODE_STROKE:B = 0x2t

.field public static final ET9CPMOHU_PAIR_AN_ANG:S = 0x6s

.field public static final ET9CPMOHU_PAIR_C_CH:S = 0x1s

.field public static final ET9CPMOHU_PAIR_EN_ENG:S = 0x7s

.field public static final ET9CPMOHU_PAIR_F_H:S = 0x5s

.field public static final ET9CPMOHU_PAIR_IN_ING:S = 0x8s

.field public static final ET9CPMOHU_PAIR_N_L:S = 0x3s

.field public static final ET9CPMOHU_PAIR_R_L:S = 0x4s

.field public static final ET9CPMOHU_PAIR_S_SH:S = 0x2s

.field public static final ET9CPMOHU_PAIR_Z_ZH:S = 0x0s

.field public static final ET9CUSTOMSET:B = 0x4t

.field public static final ET9DEFAULTSTORESIZE:S = 0x200s

.field public static final ET9DISCRETEKEY:B = 0x0t

.field public static final ET9EXPLICITSYM:B = 0x5t

.field public static final ET9HANDWRITING:B = 0x2t

.field public static final ET9KEYLAYOUT_NONE:S = 0x0s

.field public static final ET9KEYLAYOUT_PHONEPAD:S = 0x1s

.field public static final ET9KEYLAYOUT_QWERTY:S = 0x2s

.field public static final ET9LIDDutch_Belgium:S = 0x813s

.field public static final ET9LIDEnglish_UK:S = 0x809s

.field public static final ET9LIDFrench_Canada:S = 0xc0cs

.field public static final ET9LIDFrench_Switzerland:S = 0x100cs

.field public static final ET9LIDItalian_Switzerland:S = 0x810s

.field public static final ET9LIDPortuguese_Portugal:S = 0x816s

.field public static final ET9MAXALTSYMBS:B = 0x10t

.field public static final ET9MAXASDBLANGUAGERECORDS:I = 0xa

.field public static final ET9MAXBASESYMBS:B = 0x10t

.field public static final ET9MAXBUILDCAPTURES:S = 0x6s

.field public static final ET9MAXEDITIONS:B = 0x3t

.field public static final ET9MAXLDBSUPPORTEDASRECORDS:I = 0x100

.field public static final ET9MAXLDBWORDSIZE:B = 0x20t

.field public static final ET9MAXSAVEINPUTWORDS:S = 0x40s

.field public static final ET9MAXSELLISTSIZE:I = 0x10

.field public static final ET9MAXSUBSTITUTIONSIZE:B = 0x40t

.field public static final ET9MAXUDBWORDSIZE:B = 0x40t

.field public static final ET9MAXVERSIONSTR:B = 0x64t

.field public static final ET9MAXWORDSIZE:B = 0x40t

.field public static final ET9MAX_EXP_TERM_PUNCTS:I = 0x10

.field public static final ET9MULTISYMBEXPLICIT:B = 0x6t

.field public static final ET9MULTITAPKEY:B = 0x3t

.field public static final ET9NOSHIFT:B = 0x0t

.field public static final ET9NUMASDBSIZERANGES:I = 0x6

.field public static final ET9PLIDAbkhazian:S = 0x43s

.field public static final ET9PLIDAfar:S = 0x42s

.field public static final ET9PLIDAfrikaans:S = 0x36s

.field public static final ET9PLIDAlbanian:S = 0x1cs

.field public static final ET9PLIDAmharic:S = 0x44s

.field public static final ET9PLIDArabic:S = 0x1s

.field public static final ET9PLIDArmenian:S = 0x5as

.field public static final ET9PLIDAssamese:S = 0x45s

.field public static final ET9PLIDAymara:S = 0x46s

.field public static final ET9PLIDAzerbaijani:S = 0x47s

.field public static final ET9PLIDBashkir:S = 0x48s

.field public static final ET9PLIDBasque:S = 0x2ds

.field public static final ET9PLIDBengali:S = 0x4bs

.field public static final ET9PLIDBhutani:S = 0x50s

.field public static final ET9PLIDBihari:S = 0x49s

.field public static final ET9PLIDBislama:S = 0x4as

.field public static final ET9PLIDBreton:S = 0x4ds

.field public static final ET9PLIDBulgarian:S = 0x2s

.field public static final ET9PLIDBurmese:S = 0x6es

.field public static final ET9PLIDByelorussian:S = 0x23s

.field public static final ET9PLIDCatalan:S = 0x3s

.field public static final ET9PLIDChinese:S = 0x4s

.field public static final ET9PLIDChineseHongkong:S = 0xe2s

.field public static final ET9PLIDChineseSimplified:S = 0xe1s

.field public static final ET9PLIDChineseSingapore:S = 0xe3s

.field public static final ET9PLIDChineseTraditional:S = 0xe0s

.field public static final ET9PLIDCorsican:S = 0x4es

.field public static final ET9PLIDCroatian:S = 0x59s

.field public static final ET9PLIDCzech:S = 0x5s

.field public static final ET9PLIDDanish:S = 0x6s

.field public static final ET9PLIDDutch:S = 0x13s

.field public static final ET9PLIDEnglish:S = 0x9s

.field public static final ET9PLIDEsperanto:S = 0x51s

.field public static final ET9PLIDEstonian:S = 0x25s

.field public static final ET9PLIDFaeroese:S = 0x38s

.field public static final ET9PLIDFarsi:S = 0x29s

.field public static final ET9PLIDFiji:S = 0x52s

.field public static final ET9PLIDFinnish:S = 0xbs

.field public static final ET9PLIDFrench:S = 0xcs

.field public static final ET9PLIDFrisian:S = 0x53s

.field public static final ET9PLIDGalician:S = 0x55s

.field public static final ET9PLIDGeorgian:S = 0x60s

.field public static final ET9PLIDGerman:S = 0x7s

.field public static final ET9PLIDGreek:S = 0x8s

.field public static final ET9PLIDGreenlandic:S = 0x62s

.field public static final ET9PLIDGuarani:S = 0x56s

.field public static final ET9PLIDGujarati:S = 0x57s

.field public static final ET9PLIDHausa:S = 0x58s

.field public static final ET9PLIDHebrew:S = 0xds

.field public static final ET9PLIDHindi:S = 0x39s

.field public static final ET9PLIDHinglish:S = 0xd0s

.field public static final ET9PLIDHungarian:S = 0xes

.field public static final ET9PLIDIcelandic:S = 0xfs

.field public static final ET9PLIDIgbo:S = 0x95s

.field public static final ET9PLIDIndonesian:S = 0x21s

.field public static final ET9PLIDInterlingua:S = 0x5bs

.field public static final ET9PLIDInterlingue:S = 0x5cs

.field public static final ET9PLIDInuktitut:S = 0x5es

.field public static final ET9PLIDInupiak:S = 0x5ds

.field public static final ET9PLIDIrish:S = 0x54s

.field public static final ET9PLIDItalian:S = 0x10s

.field public static final ET9PLIDJapanese:S = 0x11s

.field public static final ET9PLIDJavanese:S = 0x5fs

.field public static final ET9PLIDKannada:S = 0x63s

.field public static final ET9PLIDKashmiri:S = 0x64s

.field public static final ET9PLIDKazakh:S = 0x61s

.field public static final ET9PLIDKhmer:S = 0x2cs

.field public static final ET9PLIDKirghiz:S = 0x66s

.field public static final ET9PLIDKirundi:S = 0x77s

.field public static final ET9PLIDKiyarwanda:S = 0x78s

.field public static final ET9PLIDKorean:S = 0x12s

.field public static final ET9PLIDKurdish:S = 0x65s

.field public static final ET9PLIDLao:S = 0x2bs

.field public static final ET9PLIDLatin:S = 0x67s

.field public static final ET9PLIDLatvian:S = 0x26s

.field public static final ET9PLIDLingala:S = 0x68s

.field public static final ET9PLIDLithuanian:S = 0x27s

.field public static final ET9PLIDMASK:S = 0xffs

.field public static final ET9PLIDMacedonian:S = 0x2fs

.field public static final ET9PLIDMalagasy:S = 0x69s

.field public static final ET9PLIDMalay:S = 0x3es

.field public static final ET9PLIDMalayalam:S = 0x6as

.field public static final ET9PLIDMaltese:S = 0x3as

.field public static final ET9PLIDMaori:S = 0x28s

.field public static final ET9PLIDMarathi:S = 0x6ds

.field public static final ET9PLIDMoldavian:S = 0x6cs

.field public static final ET9PLIDMongolian:S = 0x6bs

.field public static final ET9PLIDNauru:S = 0x6fs

.field public static final ET9PLIDNepali:S = 0x70s

.field public static final ET9PLIDNone:S = 0x0s

.field public static final ET9PLIDNorwegian:S = 0x14s

.field public static final ET9PLIDNull:S = 0xffs

.field public static final ET9PLIDOccitan:S = 0x71s

.field public static final ET9PLIDOriya:S = 0x73s

.field public static final ET9PLIDOromo:S = 0x72s

.field public static final ET9PLIDPashto:S = 0x75s

.field public static final ET9PLIDPolish:S = 0x15s

.field public static final ET9PLIDPortuguese:S = 0x16s

.field public static final ET9PLIDPunjabi:S = 0x74s

.field public static final ET9PLIDQuechua:S = 0x76s

.field public static final ET9PLIDRhaetoRomance:S = 0x17s

.field public static final ET9PLIDRomanian:S = 0x18s

.field public static final ET9PLIDRussian:S = 0x19s

.field public static final ET9PLIDSami:S = 0x3bs

.field public static final ET9PLIDSamoan:S = 0x7ds

.field public static final ET9PLIDSangho:S = 0x7bs

.field public static final ET9PLIDSanskrit:S = 0x79s

.field public static final ET9PLIDScotsGaelic:S = 0x3cs

.field public static final ET9PLIDSerbian:S = 0x80s

.field public static final ET9PLIDSerboCroatian:S = 0x1as

.field public static final ET9PLIDSesotho:S = 0x82s

.field public static final ET9PLIDSetswana:S = 0x8as

.field public static final ET9PLIDShona:S = 0x7es

.field public static final ET9PLIDSindhi:S = 0x7as

.field public static final ET9PLIDSinhala:S = 0x7cs

.field public static final ET9PLIDSiswati:S = 0x81s

.field public static final ET9PLIDSlovak:S = 0x1bs

.field public static final ET9PLIDSlovenian:S = 0x24s

.field public static final ET9PLIDSomali:S = 0x7fs

.field public static final ET9PLIDSorbian:S = 0x2es

.field public static final ET9PLIDSpanglish:S = 0xd1s

.field public static final ET9PLIDSpanish:S = 0xas

.field public static final ET9PLIDSudanese:S = 0x83s

.field public static final ET9PLIDSutu:S = 0x30s

.field public static final ET9PLIDSwahili:S = 0x41s

.field public static final ET9PLIDSwedish:S = 0x1ds

.field public static final ET9PLIDTagalog:S = 0x89s

.field public static final ET9PLIDTajik:S = 0x86s

.field public static final ET9PLIDTamazight:S = 0x96s

.field public static final ET9PLIDTamil:S = 0x84s

.field public static final ET9PLIDTatar:S = 0x8cs

.field public static final ET9PLIDTelugu:S = 0x85s

.field public static final ET9PLIDThai:S = 0x1es

.field public static final ET9PLIDTibetan:S = 0x4cs

.field public static final ET9PLIDTigrinya:S = 0x87s

.field public static final ET9PLIDTonga:S = 0x8bs

.field public static final ET9PLIDTsonga:S = 0x31s

.field public static final ET9PLIDTswana:S = 0x32s

.field public static final ET9PLIDTurkish:S = 0x1fs

.field public static final ET9PLIDTurkmen:S = 0x88s

.field public static final ET9PLIDTwi:S = 0x8ds

.field public static final ET9PLIDUkrainian:S = 0x22s

.field public static final ET9PLIDUrdu:S = 0x20s

.field public static final ET9PLIDUyghur:S = 0x8es

.field public static final ET9PLIDUzbek:S = 0x8fs

.field public static final ET9PLIDVenda:S = 0x33s

.field public static final ET9PLIDVietnamese:S = 0x2as

.field public static final ET9PLIDVolapuk:S = 0x90s

.field public static final ET9PLIDWelsh:S = 0x4fs

.field public static final ET9PLIDWolof:S = 0x91s

.field public static final ET9PLIDXhosa:S = 0x34s

.field public static final ET9PLIDYiddish:S = 0x92s

.field public static final ET9PLIDYoruba:S = 0x93s

.field public static final ET9PLIDZhuang:S = 0x94s

.field public static final ET9PLIDZulu:S = 0x35s

.field public static final ET9POSTSHIFTMODE_DEFAULT:B = 0x3t

.field public static final ET9POSTSHIFTMODE_INITIAL:B = 0x1t

.field public static final ET9POSTSHIFTMODE_LAST:B = 0x5t

.field public static final ET9POSTSHIFTMODE_LOWER:B = 0x0t

.field public static final ET9POSTSHIFTMODE_NEXT:B = 0x4t

.field public static final ET9POSTSHIFTMODE_UPPER:B = 0x2t

.field public static final ET9REGIONALKEY:B = 0x1t

.field public static final ET9SAVEINPUTSTORESIZE:S = 0x200s

.field public static final ET9SHIFT:B = 0x1t

.field public static final ET9SKIDATQwerty:S = 0x800s

.field public static final ET9SKIDATQwertyBpmf:S = 0xe00s

.field public static final ET9SKIDATQwertyPinyin:S = 0xd00s

.field public static final ET9SKIDATQwertyReg:S = 0x900s

.field public static final ET9SKIDAccented:S = 0x100s

.field public static final ET9SKIDAcuteAccent:S = 0x1s

.field public static final ET9SKIDEmailURLField:S = 0x4s

.field public static final ET9SKIDEmoticon:S = 0x200s

.field public static final ET9SKIDFloating:S = 0x2000s

.field public static final ET9SKIDINPUTMODEMASK:S = 0x600s

.field public static final ET9SKIDINPUTTYPEMASK:S = 0xfcs

.field public static final ET9SKIDInputNunber:S = 0x200s

.field public static final ET9SKIDInputSymbol:S = 0x400s

.field public static final ET9SKIDKEYBOARDPAGEMASK:S = 0x3s

.field public static final ET9SKIDKEYBOARDTYPEMASK:S = 0x7000s

.field public static final ET9SKIDLANDSCAPEMASK:S = 0x800s

.field public static final ET9SKIDLandscape:S = 0x800s

.field public static final ET9SKIDMASK:I = 0xff00

.field public static final ET9SKIDMULILANGUAGEMASK:S = 0x100s

.field public static final ET9SKIDMonthField:S = 0xcs

.field public static final ET9SKIDMultiLanguage:S = 0x100s

.field public static final ET9SKIDNone:S = 0x0s

.field public static final ET9SKIDNumber:S = 0x300s

.field public static final ET9SKIDOneHand:S = 0x1000s

.field public static final ET9SKIDPhonePad:S = 0x600s

.field public static final ET9SKIDPhonePadBpmf:S = 0xb00s

.field public static final ET9SKIDPhonePadPinyin:S = 0xa00s

.field public static final ET9SKIDPhonePadStroke:S = 0xc00s

.field public static final ET9SKIDQwerty:S = 0x700s

.field public static final ET9SKIDQwertyTurkish:S = 0xf00s

.field public static final ET9SKIDQwertyTurkishF:S = 0x1000s

.field public static final ET9SKIDReducedQwerty:S = 0x500s

.field public static final ET9SKIDSplit:S = 0x3000s

.field public static final ET9SKIDSymbol:S = 0x400s

.field public static final ET9SKIDYearDateTimeField:S = 0x8s

.field public static final ET9SLIDBpmfTrace:S = 0x600s

.field public static final ET9SLIDCHINESE:S = 0x400s

.field public static final ET9SLIDChunJiIn:S = 0x700s

.field public static final ET9SLIDDEFAULT:S = 0x100s

.field public static final ET9SLIDHangul:S = 0x800s

.field public static final ET9SLIDMASK:I = 0xff00

.field public static final ET9SLIDNone:S = 0x0s

.field public static final ET9SLIDPinyinTrace:S = 0x500s

.field public static final ET9STATEACTIVELANGSWITCH:I = 0x11

.field public static final ET9STATEACTIVELANGSWITCHMASK:I = 0x20000

.field public static final ET9STATEASDBENABLED:I = 0xc

.field public static final ET9STATEASDBENABLEDMASK:I = 0x1000

.field public static final ET9STATEAUTOAPPENDINLIST:I = 0x7

.field public static final ET9STATEAUTOAPPENDINLISTMASK:I = 0x80

.field public static final ET9STATECDBENABLED:I = 0xa

.field public static final ET9STATECDBENABLEDMASK:I = 0x400

.field public static final ET9STATEDOWNSHIFTALLLDB:I = 0xf

.field public static final ET9STATEDOWNSHIFTALLLDBMASK:I = 0x8000

.field public static final ET9STATEDOWNSHIFTDEFAULT:I = 0xe

.field public static final ET9STATEDOWNSHIFTDEFAULTMASK:I = 0x4000

.field public static final ET9STATEEXACTINLIST:I = 0x3

.field public static final ET9STATEEXACTINLISTMASK:I = 0x8

.field public static final ET9STATEEXACTISDEFAULT:I = 0x10

.field public static final ET9STATEEXACTISDEFAULTMASK:I = 0x10000

.field public static final ET9STATEEXACTLAST:I = 0x4

.field public static final ET9STATEEXACTLASTMASK:I = 0x10

.field public static final ET9STATEINACTIVELANGSPELLCORRECT:I = 0x12

.field public static final ET9STATEINACTIVELANGSPELLCORRECTMASK:I = 0x40000

.field public static final ET9STATELDBENABLED:I = 0x9

.field public static final ET9STATELDBENABLEDMASK:I = 0x200

.field public static final ET9STATELDBSUPPORTEDAUTOSUB:I = 0x6

.field public static final ET9STATELDBSUPPORTEDAUTOSUBMASK:I = 0x40

.field public static final ET9STATEMDBENABLED:I = 0xd

.field public static final ET9STATEMDBENABLEDMASK:I = 0x2000

.field public static final ET9STATENEXTWORDPREDICTION:I = 0x2

.field public static final ET9STATENEXTWORDPREDICTIONMASK:I = 0x4

.field public static final ET9STATEPOSTSORT:I = 0x13

.field public static final ET9STATEPOSTSORTMASK:I = 0x80000

.field public static final ET9STATEQUDBSUPPORTENABLED:I = 0x8

.field public static final ET9STATEQUDBSUPPORTENABLEDMASK:I = 0x100

.field public static final ET9STATERUDBENABLED:I = 0xb

.field public static final ET9STATERUDBENABLEDMASK:I = 0x800

.field public static final ET9STATEUSERDEFINEDAUTOSUB:I = 0x5

.field public static final ET9STATEUSERDEFINEDAUTOSUBMASK:I = 0x20

.field public static final ET9STATEWORDCOMPLETION:I = 0x1

.field public static final ET9STATEWORDCOMPLETIONMASK:I = 0x2

.field public static final ET9STATEWORDSTEMS:I = 0x0

.field public static final ET9STATEWORDSTEMSMASK:I = 0x1

.field public static final ET9STATE_CAPS_MASK:I = 0x4

.field public static final ET9STATE_SHIFT_MASK:I = 0x2

.field public static final ET9STATLAST:S = 0x3e7s

.field public static final ET9STATUS_ABORT:S = 0x3s

.field public static final ET9STATUS_ALL_SYMB_SELECTED:S = 0x65s

.field public static final ET9STATUS_ALREADY_INITIALIZED:S = 0x1cs

.field public static final ET9STATUS_BAD_CONFIG:S = 0x5fs

.field public static final ET9STATUS_BAD_PARAM:S = 0x1bs

.field public static final ET9STATUS_BUFFER_TOO_SMALL:S = 0x1fs

.field public static final ET9STATUS_CHARPROP_ERROR:S = 0x36s

.field public static final ET9STATUS_CORRUPT_DB:S = 0x16s

.field public static final ET9STATUS_DB_CHANGED_WARNING:S = 0x2cs

.field public static final ET9STATUS_DB_CORE_INCOMP:S = 0xcs

.field public static final ET9STATUS_DB_NOT_ACTIVE:S = 0x1es

.field public static final ET9STATUS_DB_NOT_ENOUGH_MEMORY:S = 0x1ds

.field public static final ET9STATUS_DLM_UPGRADE:S = -0x1s

.field public static final ET9STATUS_DLM_VERSION_ERROR:S = 0x5ds

.field public static final ET9STATUS_EMPTY:S = 0x6s

.field public static final ET9STATUS_ERROR:S = 0x1s

.field public static final ET9STATUS_EVAL_BUILD_EXPIRED:S = 0x35s

.field public static final ET9STATUS_FULL:S = 0x5s

.field public static final ET9STATUS_INVALID_DB_TYPE:S = 0x17s

.field public static final ET9STATUS_INVALID_INPUT:S = 0x2bs

.field public static final ET9STATUS_INVALID_KDB_NUM:S = 0x32s

.field public static final ET9STATUS_INVALID_KDB_PAGE:S = 0x11s

.field public static final ET9STATUS_INVALID_MEMORY:S = 0x9s

.field public static final ET9STATUS_INVALID_MODE:S = 0x2as

.field public static final ET9STATUS_INVALID_SIZE:S = 0x1as

.field public static final ET9STATUS_INVALID_TEXT:S = 0x23s

.field public static final ET9STATUS_KDB_ATTRIBUTE_VALUE_ERROR:S = 0x4es

.field public static final ET9STATUS_KDB_BAD_INPUT_MODE:S = 0x5as

.field public static final ET9STATUS_KDB_BAD_LAYOUT_SIZE:S = 0x56s

.field public static final ET9STATUS_KDB_BAD_PAGE_COUNT:S = 0x57s

.field public static final ET9STATUS_KDB_DUPLICATE_ATTRIBUTE:S = 0x4bs

.field public static final ET9STATUS_KDB_HAS_NO_TRACEABLE_KEYS:S = 0x39s

.field public static final ET9STATUS_KDB_HAS_TOO_FEW_ROWS:S = 0x4fs

.field public static final ET9STATUS_KDB_HAS_TOO_MANY_CHARS:S = 0x3bs

.field public static final ET9STATUS_KDB_HAS_TOO_MANY_KEYS:S = 0x3as

.field public static final ET9STATUS_KDB_HAS_TOO_MANY_ROWS:S = 0x50s

.field public static final ET9STATUS_KDB_ID_MISMATCH:S = 0x48s

.field public static final ET9STATUS_KDB_INCONSISTENT_PAGE_COUNT:S = 0x49s

.field public static final ET9STATUS_KDB_INCORRECT_TYPE_FOR_KEY:S = 0x47s

.field public static final ET9STATUS_KDB_IS_LOADING:S = 0x41s

.field public static final ET9STATUS_KDB_IS_NOT_LOADING:S = 0x42s

.field public static final ET9STATUS_KDB_KEY_BAD_REGION:S = 0x58s

.field public static final ET9STATUS_KDB_KEY_HAS_REPEAT_CHARS:S = 0x3es

.field public static final ET9STATUS_KDB_KEY_HAS_TOO_FEW_CHARS:S = 0x3cs

.field public static final ET9STATUS_KDB_KEY_HAS_TOO_MANY_CHARS:S = 0x3ds

.field public static final ET9STATUS_KDB_KEY_INDEX_ALREADY_USED:S = 0x53s

.field public static final ET9STATUS_KDB_KEY_OUTSIDE_KEYBOARD:S = 0x45s

.field public static final ET9STATUS_KDB_KEY_OVERLAP:S = 0x46s

.field public static final ET9STATUS_KDB_MISMATCH:S = 0x30s

.field public static final ET9STATUS_KDB_MISSING_ATTRIBUTE:S = 0x4ds

.field public static final ET9STATUS_KDB_OUT_OF_RANGE:S = 0x12s

.field public static final ET9STATUS_KDB_PAGE_HAS_NO_KEYS:S = 0x38s

.field public static final ET9STATUS_KDB_PAGE_NOT_FOUND:S = 0x55s

.field public static final ET9STATUS_KDB_REPEAT_LOAD_ATTACH:S = 0x44s

.field public static final ET9STATUS_KDB_ROW_HAS_TOO_FEW_KEYS:S = 0x51s

.field public static final ET9STATUS_KDB_SYNTAX_ERROR:S = 0x4as

.field public static final ET9STATUS_KDB_UNEXPECTED_ATTRIBUTE:S = 0x4cs

.field public static final ET9STATUS_KDB_UNEXPECTED_CONTENT:S = 0x52s

.field public static final ET9STATUS_KDB_VERSION_ERROR:S = 0xfs

.field public static final ET9STATUS_KDB_WM_ERROR:S = 0x59s

.field public static final ET9STATUS_KDB_WRONG_CONTENT_ENCODING:S = 0x54s

.field public static final ET9STATUS_KDB_WRONG_LOAD_STATE:S = 0x43s

.field public static final ET9STATUS_LDB_ID_ERROR:S = 0x10s

.field public static final ET9STATUS_LDB_VERSION_ERROR:S = 0xes

.field public static final ET9STATUS_MATH_ERROR:S = 0x2es

.field public static final ET9STATUS_NEED_KDB_TO_LOAD_PAGE:S = 0x33s

.field public static final ET9STATUS_NEED_SELLIST_BUILD:S = 0x22s

.field public static final ET9STATUS_NONE:S = 0x0s

.field public static final ET9STATUS_NOT_SUPPORTED_BY_ENCODING:S = 0x34s

.field public static final ET9STATUS_NO_ASDB:S = 0x26s

.field public static final ET9STATUS_NO_CDB:S = 0x19s

.field public static final ET9STATUS_NO_CHAR:S = 0x28s

.field public static final ET9STATUS_NO_DB:S = 0x5cs

.field public static final ET9STATUS_NO_DB_INIT:S = 0x29s

.field public static final ET9STATUS_NO_DLM:S = 0x5bs

.field public static final ET9STATUS_NO_GDB:S = 0x5es

.field public static final ET9STATUS_NO_INIT:S = 0x2s

.field public static final ET9STATUS_NO_KEY:S = 0x13s

.field public static final ET9STATUS_NO_LDB:S = 0x2fs

.field public static final ET9STATUS_NO_LDBAS_FOUND:S = 0x27s

.field public static final ET9STATUS_NO_LM:S = 0x37s

.field public static final ET9STATUS_NO_MATCH:S = 0x15s

.field public static final ET9STATUS_NO_MATCHING_WORDS:S = 0x4s

.field public static final ET9STATUS_NO_MEMORY:S = 0x8s

.field public static final ET9STATUS_NO_OPERATION:S = 0x18s

.field public static final ET9STATUS_NO_RUDB:S = 0x20s

.field public static final ET9STATUS_OUT_OF_RANGE:S = 0x7s

.field public static final ET9STATUS_OUT_OF_RANGE_MAXALTSYMBS:S = 0x24s

.field public static final ET9STATUS_OUT_OF_RANGE_MAXBASESYMBS:S = 0x25s

.field public static final ET9STATUS_READ_DB_FAIL:S = 0xas

.field public static final ET9STATUS_SELECTED_CHINESE_COMPONENT:S = 0x64s

.field public static final ET9STATUS_SETTINGS_INHIBITED:S = 0x40s

.field public static final ET9STATUS_SETTING_SAME_LDBS:S = 0x31s

.field public static final ET9STATUS_TOO_LONG_SUBSTITUTIONS:S = 0x3fs

.field public static final ET9STATUS_TRACE_NOT_AVAILABLE:S = 0x66s

.field public static final ET9STATUS_TYPE_ERROR:S = 0x2ds

.field public static final ET9STATUS_WORD_EXISTS:S = 0x14s

.field public static final ET9STATUS_WORD_NOT_FOUND:S = 0x21s

.field public static final ET9STATUS_WRITE_DB_FAIL:S = 0xbs

.field public static final ET9STATUS_WRONG_OEMID:S = 0xds

.field public static final ET9SYMALPHA:B = 0x3t

.field public static final ET9SYMALPHAMASK:B = 0x8t

.field public static final ET9SYMNUMBR:B = 0x2t

.field public static final ET9SYMNUMBRMASK:B = 0x4t

.field public static final ET9SYMPUNCT:B = 0x1t

.field public static final ET9SYMPUNCTMASK:B = 0x2t

.field public static final ET9SYMUNKN:B = 0x7t

.field public static final ET9SYMUNKNMASK:B = -0x80t

.field public static final ET9SYMWHITE:B = 0x0t

.field public static final ET9SYMWHITEMASK:B = 0x1t

.field public static final ET9_CP_MAX_SINGLE_SYL_SIZE:B = 0x7t

.field public static final ET9_KDB_AMBIGUOUS:I = 0x0

.field public static final ET9_KDB_AMBIGUOUS_MODE_MASK:I = 0x1

.field public static final ET9_KDB_DISCRETE:I = 0x3

.field public static final ET9_KDB_DISCRETE_MASK:I = 0x8

.field public static final ET9_KDB_INSERT:I = 0x2

.field public static final ET9_KDB_INSERT_MASK:I = 0x4

.field public static final ET9_KDB_MAX_MT_SYMBS:B = 0x20t

.field public static final ET9_KDB_MULTITAP:I = 0x1

.field public static final ET9_KDB_MULTITAP_MODE_MASK:I = 0x2

.field public static final ET9_KDB_REQ_NONE:B = 0x0t

.field public static final ET9_KDB_REQ_TIMEOUT:B = 0x1t

.field public static final ET9_KDB_TMRMULT:B = 0x1t

.field public static final ET9_KDB_TMRNONE:B = 0x0t

.field public static final ET9_MOHUPAIR_STRING:[Ljava/lang/String;

.field public static final ET9_MOHU_PAIR_MASK:[S

.field public static final ET9_SPC_ED_CALC_ROWS:S = 0x9s

.field public static final ET9_SPC_ED_DIST_ROWS:S = 0x7s

.field public static final ET9_SPC_ED_MAX_DISTANCE:B = 0x3t

.field public static final ET9_SPC_ED_STORE_ROW_LEN:S = 0x43s

.field public static final ET9_SettingValue_Auto:B = 0x4t

.field public static final ET9_SettingValue_Off:B = 0x3t

.field public static final ET9_SettingValue_On:B = 0x2t


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0x9

    new-array v0, v1, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHU_PAIR_MASK:[S

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CHINESE_FUZZY_ZEQUALZH"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CHINESE_FUZZY_CEQUALCH"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CHINESE_FUZZY_SEQUALSH"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CHINESE_FUZZY_LEQUALN"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CHINESE_FUZZY_LEQUALR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CHINESE_FUZZY_FEQUALH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CHINESE_FUZZY_ANEQUALANG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CHINESE_FUZZY_ENEQUALENG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CHINESE_FUZZY_INEQUALING"

    aput-object v2, v0, v1

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x4s
        0x8s
        0x10s
        0x20s
        0x40s
        0x80s
        0x100s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
