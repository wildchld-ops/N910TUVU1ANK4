.class public Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
.super Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.source "SwiftkeyWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$23;
    }
.end annotation


# static fields
.field private static final DEFAULT_PUNCTUATOR:Ljava/lang/String; = "punctuation_default2.json"

.field private static final KEY_PRESS_MODEL_DB_DIR:Ljava/lang/String; = "KeyPressModel"

.field private static final KEY_PRESS_MODEL_DB_DIR_EX:Ljava/lang/String; = "KeyPressModelEx"

.field private static LANGUAGE_PACK_DB_DIR:Ljava/lang/String; = null

.field private static final PRELOADED_LANGUAGE_PACK_DB_DIR:Ljava/lang/String; = "/system/sipdb"

.field private static SwiftKeyConfigurationURL:Ljava/lang/String; = null

.field private static final ZHUYIN_PRELOADED_LANGUAGE_PACK_FILE:Ljava/lang/String; = "zh_TW.zip"

.field private static final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private static mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private static mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private static mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private static mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;


# instance fields
.field private final CANGJIE_SHAPES:[Ljava/lang/Character;

.field private final DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

.field private final DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

.field private downloadingLPCount:I

.field private mAccentState:Z

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mBackupKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

.field private mCapslockMode:Z

.field private final mCompletionListener:Lcom/touchtype_fluency/util/CompletionListener;

.field private final mCompletionListenerForChinese:Lcom/touchtype_fluency/util/CompletionListener;

.field private final mCompletionListenerForJapanese:Lcom/touchtype_fluency/util/CompletionListener;

.field private mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

.field private mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private mDiableTempDynamicModel:Z

.field private mEnabledLanguagePacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitializeLangaugePack:Z

.field private mIs:Ljava/io/InputStream;

.field private mIsEnableAutoCorrection:Z

.field private mIsPersonalizedDataDefaultOff:Z

.field private mIsPrediction:Z

.field private mIsUseLiveLanguage:Z

.field private mIsUsePersonalizedData:Z

.field private final mLoadProgressListener:Lcom/touchtype_fluency/util/LoadProgressListener;

.field private final mLoadProgressListenerForChinese:Lcom/touchtype_fluency/util/LoadProgressListener;

.field private final mLoadProgressListenerForJapanese:Lcom/touchtype_fluency/util/LoadProgressListener;

.field private mLoadingLanguagePackFlag:I

.field private mLoadingLanguagePacks:Z

.field private mSelectedLanguagePacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mSequence:Lcom/touchtype_fluency/Sequence;

.field private mShiftMode:Z

.field private mUIHandler:Landroid/os/Handler;

.field private mVerbatim:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sput-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->SwiftKeyConfigurationURL:Ljava/lang/String;

    sput-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->LANGUAGE_PACK_DB_DIR:Ljava/lang/String;

    sput-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$1;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$1;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIs:Ljava/io/InputStream;

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mShiftMode:Z

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCapslockMode:Z

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAccentState:Z

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    iput v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mUIHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mBackupKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mDiableTempDynamicModel:Z

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPersonalizedDataDefaultOff:Z

    iput v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I

    new-array v0, v5, [Ljava/lang/CharSequence;

    const-string v1, ","

    aput-object v1, v0, v3

    const-string v1, "?"

    aput-object v1, v0, v2

    const-string v1, "!"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    new-array v0, v5, [Ljava/lang/CharSequence;

    const-string v1, "\u3001"

    aput-object v1, v0, v3

    const-string v1, "\uff1f"

    aput-object v1, v0, v2

    const-string v1, "\uff01"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsEnableAutoCorrection:Z

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x65e5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x6708

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x91d1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x6728

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const/16 v2, 0x6c34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x706b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x571f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x7af9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x6208

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x5341

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x5927

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4e2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4e00

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x5f13

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4eba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x5fc3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x624b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x53e3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x5c38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x5eff

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x5c71

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x5973

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x7530

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x96e3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x535c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->CANGJIE_SHAPES:[Ljava/lang/Character;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$2;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListener:Lcom/touchtype_fluency/util/LoadProgressListener;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$3;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListenerForChinese:Lcom/touchtype_fluency/util/LoadProgressListener;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$4;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListenerForJapanese:Lcom/touchtype_fluency/util/LoadProgressListener;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$5;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$5;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListener:Lcom/touchtype_fluency/util/CompletionListener;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$6;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$6;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForChinese:Lcom/touchtype_fluency/util/CompletionListener;

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$7;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$7;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForJapanese:Lcom/touchtype_fluency/util/CompletionListener;

    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    sget-object v1, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_Disable_Temporary_Dynamic_Models"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mDiableTempDynamicModel:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_DisablePersonalizedData"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPersonalizedDataDefaultOff:Z

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)I
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->clearLanguagePackList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1    # Lcom/touchtype_fluency/util/LanguagePack;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->reinstallLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1    # Lcom/touchtype_fluency/util/LanguagePack;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkDefaultLanguageForSwift(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/inputmode/InputModeManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->clearLoadLangugagePackFlag(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    return p1
.end method

.method static synthetic access$2202(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    return p1
.end method

.method static synthetic access$2302(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    return p1
.end method

.method static synthetic access$2400(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Ljava/io/File;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1    # Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldLanguagePackFolder(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldKPMFolder()V

    return-void
.end method

.method static synthetic access$2600(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeKPMExFolder()V

    return-void
.end method

.method static synthetic access$302(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    return p1
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setSessionPrivateSetting()V

    return-void
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSuggestionUIThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)I
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I

    return p1
.end method

.method static synthetic access$800()Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->countDownloadingLanguagePack(Z)V

    return-void
.end method

.method private checkCurrentSequenceForJapanese(Ljava/lang/StringBuilder;[I[I)V
    .locals 21
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # [I
    .param p3    # [I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkJapaneseSequence()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    if-eqz v10, :cond_9

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    const-string v15, ""

    :cond_3
    const/16 v18, 0x8c

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    const/16 v18, 0x8c

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v8, 0x0

    const/4 v12, 0x0

    const-string v6, ""

    const/4 v5, 0x1

    if-nez v14, :cond_4

    const-string v14, ""

    :cond_4
    if-eqz v15, :cond_a

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-lez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, p2, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, p3, v18

    const/4 v12, 0x1

    :cond_5
    :goto_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_12

    if-eqz v13, :cond_12

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-lez v18, :cond_12

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLetter(C)Z

    move-result v18

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getFirtstTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v6, :cond_6

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->tokenizerSplit(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v9

    invoke-virtual {v9}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/touchtype_fluency/Sequence;->get(I)Lcom/touchtype_fluency/Term;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/touchtype_fluency/Term;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->checkPostPosition(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    aget v19, p3, v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    aput v19, p3, v18

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    :cond_8
    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    goto/16 :goto_0

    :cond_a
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-nez v18, :cond_b

    new-instance v18, Lcom/touchtype_fluency/Sequence;

    invoke-direct/range {v18 .. v18}, Lcom/touchtype_fluency/Sequence;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    new-instance v18, Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-direct/range {v18 .. v20}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, p2, v18

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v18

    add-int/lit8 v11, v18, -0x1

    :goto_4
    if-ltz v11, :cond_c

    invoke-interface {v14, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLetter(C)Z

    move-result v18

    if-nez v18, :cond_d

    :cond_c
    new-instance v18, Lcom/touchtype_fluency/Sequence;

    invoke-direct/range {v18 .. v18}, Lcom/touchtype_fluency/Sequence;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v11, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    new-instance v18, Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    const/16 v18, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    aput v19, p2, v18

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v20

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    const/16 v18, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    aput v19, p2, v18

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->tokenizerSplit(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_f
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, p2, v18

    goto :goto_5

    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    aget v19, p3, v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    aput v19, p3, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->checkPostPosition(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v18

    if-lez v18, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->get(I)Lcom/touchtype_fluency/Term;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual {v7}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->checkPostPosition(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_7

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    aget v19, p2, v18

    invoke-virtual {v7}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    aput v19, p2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/touchtype_fluency/Sequence;->remove(I)Lcom/touchtype_fluency/Term;

    goto/16 :goto_2

    :cond_11
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLetter(C)Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v13, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getFirtstTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->checkPostPosition(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    aget v19, p3, v18

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    aput v19, p3, v18

    goto/16 :goto_2

    :cond_12
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, p3, v18

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->restoredTouchHistory(Ljava/lang/String;)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v17

    if-nez v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private checkDefaultLanguageForSwift(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 2
    .param p1    # Lcom/touchtype_fluency/util/LanguagePack;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-direct {p0, v1, p1, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkLanguageEnabledForSwift(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;)Z

    :cond_0
    return-void
.end method

.method private checkLanguageEnabledForSwift(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;)Z
    .locals 11
    .param p1    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p2    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p3    # Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, "he"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v3, "iw"

    :cond_0
    if-eqz v3, :cond_1

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v5, :cond_2

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-static {v3, v5}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "0x%08x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {p3, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "0x%08x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {p3, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    const/4 v7, 0x1

    invoke-virtual {p1, p2, v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    :cond_4
    return v0

    :cond_5
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "he"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v6, "iw"

    :cond_6
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "0x%08x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {p3, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private clearLanguagePackList()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private declared-synchronized clearLoadLangugagePackFlag(I)Z
    .locals 2
    .param p1    # I

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I

    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private convertCodeforChinese(I)I
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return p1

    :sswitch_0
    const/16 p1, 0x4e00

    goto :goto_0

    :sswitch_1
    const/16 p1, 0x4e28

    goto :goto_0

    :sswitch_2
    const/16 p1, 0x4e3f

    goto :goto_0

    :sswitch_3
    const/16 p1, 0x4e36

    goto :goto_0

    :sswitch_4
    const/16 p1, 0x4e5b

    goto :goto_0

    :sswitch_5
    const/16 p1, 0x3f

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    const v1, 0x7a685457

    if-ne v0, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x3108

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x3105

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x310d

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x3113

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x3106

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x310e

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x3114

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x3107

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x310f

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x3115

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_a
    const/16 p1, 0x61

    goto :goto_0

    :pswitch_b
    const/16 p1, 0x64

    goto :goto_0

    :pswitch_c
    const/16 p1, 0x67

    goto :goto_0

    :pswitch_d
    const/16 p1, 0x6a

    goto :goto_0

    :pswitch_e
    const/16 p1, 0x6d

    goto :goto_0

    :pswitch_f
    const/16 p1, 0x70

    goto :goto_0

    :pswitch_10
    const/16 p1, 0x74

    goto :goto_0

    :pswitch_11
    const/16 p1, 0x77

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_5
        0x31 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_4
        0x31d0 -> :sswitch_0
        0x31d1 -> :sswitch_1
        0x31d3 -> :sswitch_2
        0x31d4 -> :sswitch_3
        0x31d6 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x30
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private declared-synchronized countDownloadingLanguagePack(Z)V
    .locals 1
    .param p1    # Z

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createSwiftKeySession(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;)Z
    .locals 5
    .param p1    # Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->createSession()Z
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invaild swiftkey license : Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCurrentLangauge()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v0

    return v0
.end method

.method public static getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 4

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->LANGUAGE_PACK_DB_DIR:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/touchtype_fluency/util/FileStorage;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->LANGUAGE_PACK_DB_DIR:Ljava/lang/String;

    const-string v2, "/system/sipdb"

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/FileStorage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->SwiftKeyConfigurationURL:Ljava/lang/String;

    const/4 v2, 0x4

    new-instance v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$12;

    invoke-direct {v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$12;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getInstance(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    goto :goto_0
.end method

.method public static getLanguagePackManager(Landroid/content/Context;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 5
    .param p0    # Landroid/content/Context;

    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->LANGUAGE_PACK_DB_DIR:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SwiftKey"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->LANGUAGE_PACK_DB_DIR:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->SwiftKeyConfigurationURL:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/sipdb"

    const-string v3, "zh_TW.zip"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyConfigurationURL(Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->SwiftKeyConfigurationURL:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    return-object v2
.end method

.method private getPreviewSuggestion(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPreviewFlowPredicions()Lcom/touchtype_fluency/Predictions;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getSelectedLanguageList([Lcom/diotek/ime/framework/common/Language;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1    # [Lcom/diotek/ime/framework/common/Language;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/diotek/ime/framework/common/Language;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v7

    invoke-static {v7}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v4, v0, v3

    sget-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/touchtype_fluency/util/LanguagePackManager;->findLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "zh"

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-boolean v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    invoke-virtual {v7, v6, v8}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLiveLanguage(Lcom/touchtype_fluency/util/LiveLanguagePack;Z)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v7, "ja"

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    invoke-interface {p3, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method private getSequenceType()Lcom/touchtype_fluency/Sequence$Type;
    .locals 1

    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    return-object v0
.end method

.method public static getSuggestions(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getReservePredictions()Ljava/util/ArrayList;

    move-result-object v7

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getReservePredictions()Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getReservePredictions()Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v0

    return-object v0
.end method

.method public static getSwiftKeySupportLanguageList()Ljava/lang/String;
    .locals 13

    const-string v6, ""

    sget-object v10, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-eqz v10, :cond_3

    sget-object v10, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v10}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_1
    const-string v10, "he"

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "iw_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-eqz v10, :cond_4

    sget-object v10, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v10}, Lcom/touchtype_fluency/util/LanguagePackManager;->getStorage()Lcom/touchtype_fluency/util/Storage;

    move-result-object v9

    invoke-interface {v9}, Lcom/touchtype_fluency/util/Storage;->getPreinstallDirectory()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v10, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$11;

    invoke-direct {v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$11;-><init>()V

    invoke-virtual {v8, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v0, v3

    array-length v7, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_4

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v10, "he"

    const-string v11, "iw"

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v6
.end method

.method private initLiveLanguageSetting()V
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-interface {v4, v5, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v1, :cond_0

    const-string v4, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    return-void
.end method

.method private installPreloadLanguagePack()V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "Samsung_nolimit_flow_parameter_193196a"

    new-instance v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;

    invoke-direct {v3, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-virtual {v1, v2, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->verify(Ljava/lang/String;Lcom/touchtype_fluency/util/CompletionListener;)Z
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invaild swiftkey license : Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCangjieInputMode()Z
    .locals 2

    const v0, 0x7a68484b

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChangeEnableLanguageList()Z
    .locals 3

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateEnabledLanguageList(Ljava/util/List;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isChangePersonalizedData()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_USE_STANDARD_DATA"

    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPersonalizedDataDefaultOff:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v4, v5, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    if-eq v1, v0, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    move v3, v2

    :cond_1
    return v3

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method private isChangeSelectLanguageList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z
    .locals 2
    .param p0    # Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {p0}, Lcom/touchtype_fluency/util/LanguagePack;->getPreinstallFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSecondaryKeyMode()Z
    .locals 3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    const/high16 v2, 0x6b6f0000

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_7

    :cond_0
    const/high16 v2, 0x6b610000

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_7

    :cond_1
    const/high16 v2, 0x656c0000

    if-ne v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAccentState:Z

    if-nez v2, :cond_7

    :cond_2
    const/high16 v2, 0x6c760000

    if-ne v0, v2, :cond_3

    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAccentState:Z

    if-nez v2, :cond_7

    :cond_3
    const/high16 v2, 0x61720000

    if-ne v0, v2, :cond_4

    if-nez v1, :cond_7

    :cond_4
    const/high16 v2, 0x66610000

    if-ne v0, v2, :cond_5

    if-nez v1, :cond_7

    :cond_5
    const/high16 v2, 0x75720000

    if-ne v0, v2, :cond_6

    if-nez v1, :cond_7

    :cond_6
    const/high16 v2, 0x74680000

    if-ne v0, v2, :cond_8

    if-eqz v1, :cond_8

    :cond_7
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_8
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isUpdateShiftStateForSmallLcd()Z
    .locals 1

    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 13
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard;

    const/16 v12, 0x8

    const/4 v6, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "KeyPressModelEx"

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    if-eq v5, v0, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v1

    if-nez v1, :cond_1

    if-ne v5, v12, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v6, v0

    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v4

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v12

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZ)V

    invoke-virtual {v12, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->submitTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v12

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$14;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$14;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZ)V

    invoke-virtual {v12, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->submitTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mShiftMode:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v1

    if-ne v1, v0, :cond_6

    if-eqz v5, :cond_5

    const/4 v0, 0x7

    if-eq v5, v0, :cond_5

    if-ne v5, v12, :cond_6

    :cond_5
    const/4 v10, 0x1

    :cond_6
    const/4 v11, 0x1

    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v11, 0x2

    :cond_7
    :goto_1
    move v7, v10

    move v9, v11

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v12

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)V

    invoke-virtual {v12, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->submitTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v11, 0x3

    goto :goto_1

    :cond_9
    const/4 v11, 0x1

    goto :goto_1
.end method

.method private loadLanguageModels(Z)V
    .locals 37
    .param p1    # Z

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->mkdir()Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    new-instance v9, Ljava/io/File;

    const-string v10, "blacklist"

    move-object/from16 v0, v23

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setBlacklist(Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadPunctuator()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v11

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSelectedLanguageList([Lcom/diotek/ime/framework/common/Language;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mComparator:Ljava/util/Comparator;

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isChangePersonalizedData()Z

    move-result v27

    if-nez p1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isChangeEnableLanguageList()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    const/16 v30, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isChangeSelectLanguageList(Ljava/util/List;)Z

    move-result v22

    if-nez v30, :cond_9

    if-nez v22, :cond_9

    if-eqz v27, :cond_4

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    invoke-interface {v3, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadOrUnloadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;Z)V

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v13, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForChinese:Lcom/touchtype_fluency/util/CompletionListener;

    move-object v10, v7

    invoke-interface/range {v9 .. v14}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->changeChineseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x200

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v26

    const/4 v15, 0x0

    const/4 v3, 0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_6

    const/16 v3, 0x8

    move/from16 v0, v26

    if-ne v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const/4 v15, 0x1

    :cond_7
    sget-object v13, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v17, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForJapanese:Lcom/touchtype_fluency/util/CompletionListener;

    move-object/from16 v18, v0

    move-object v14, v8

    move-object/from16 v16, v12

    invoke-interface/range {v13 .. v18}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->changeJapaneseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    goto/16 :goto_0

    :cond_8
    const/16 v30, 0x0

    goto :goto_1

    :cond_9
    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setDynamicModelsEnabled(Z)V

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setDynamicModelsEnabled(Z)V

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setDynamicModelsEnabled(Z)V

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setLiveLanguageModelsEnabled(Z)V

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setLiveLanguageModelsEnabled(Z)V

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    invoke-interface {v3, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setLiveLanguageModelsEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v30, :cond_f

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v26

    const/4 v3, 0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_b

    const/16 v3, 0x8

    move/from16 v0, v26

    if-ne v0, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const/16 v28, 0x1

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/touchtype_fluency/util/LanguagePack;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v11}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setChineseInputType(Lcom/touchtype_fluency/util/LanguagePack;Z)V

    goto :goto_3

    :cond_c
    const/16 v28, 0x0

    goto :goto_2

    :cond_d
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/touchtype_fluency/util/LanguagePack;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setJapaneseInputType(Lcom/touchtype_fluency/util/LanguagePack;Z)V

    goto :goto_4

    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListener:Lcom/touchtype_fluency/util/LoadProgressListener;

    invoke-interface {v3, v6, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListenerForChinese:Lcom/touchtype_fluency/util/LoadProgressListener;

    invoke-interface {v3, v7, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadProgressListenerForJapanese:Lcom/touchtype_fluency/util/LoadProgressListener;

    move/from16 v0, v28

    invoke-interface {v3, v8, v9, v10, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectedLanguageList(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_f
    if-eqz v27, :cond_10

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    invoke-interface {v3, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadOrUnloadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;Z)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->hashCode()I

    move-result v9

    if-eq v3, v9, :cond_1

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_11
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v33, 0x1

    :cond_12
    if-nez v33, :cond_13

    const-string v3, "zh"

    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_6
    const/16 v33, 0x0

    goto :goto_5

    :cond_14
    const-string v3, "ja"

    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_16
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/touchtype_fluency/util/LanguagePack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_17
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v32 .. v32}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v33, 0x1

    :cond_18
    if-nez v33, :cond_19

    const-string v3, "zh"

    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_8
    const/16 v33, 0x0

    goto :goto_7

    :cond_1a
    const-string v3, "ja"

    invoke-interface/range {v31 .. v31}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1b
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1c
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1d

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1d
    const/16 v3, 0x100

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListener:Lcom/touchtype_fluency/util/CompletionListener;

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    :cond_1e
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1f

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_20

    :cond_1f
    const/16 v3, 0x200

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForChinese:Lcom/touchtype_fluency/util/CompletionListener;

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-interface {v3, v0, v1, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    :cond_20
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_22

    :cond_21
    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setLoadLangugagePackFlag(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    sget-object v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCompletionListenerForJapanese:Lcom/touchtype_fluency/util/CompletionListener;

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-interface {v3, v0, v1, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectedLanguageList(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private loadPunctuator()V
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getPunctuator()Lcom/touchtype_fluency/Punctuator;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v3, "punctuation_default2.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIs:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIs:Ljava/io/InputStream;

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Punctuator;->addRules(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/DependencyNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private registerPredictionListener()V
    .locals 2

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$17;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$17;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$18;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$18;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$19;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$19;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    return-void
.end method

.method private reinstallLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 2
    .param p1    # Lcom/touchtype_fluency/util/LanguagePack;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->countDownloadingLanguagePack(Z)V

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-virtual {v0, p1, v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    return-void
.end method

.method private removeKPMExFolder()V
    .locals 9

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "KeyPressModelEx"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    aget-object v4, v0, v5

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[delete]dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private removeKPMExFolderByThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$22;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$22;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeOldKPMFolder()V
    .locals 9

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "KeyPressModel"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    aget-object v4, v0, v5

    const-string v6, "SIP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v6, "SIP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[delete]dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private removeOldKPMFolderByThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$21;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$21;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeOldLanguagePackFolder(Ljava/io/File;)V
    .locals 6
    .param p1    # Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldLanguagePackFolder(Ljava/io/File;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private removeOldLanguagePackFolderByThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$20;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$20;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setChineseInputType(Lcom/touchtype_fluency/util/LanguagePack;Z)V
    .locals 3
    .param p1    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2    # Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "stroke"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CN"

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "pinyin"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "HK"

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "cangjie"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "TW"

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "zhuyin"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurrentSwiftKeyController()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    goto :goto_0
.end method

.method private setJapaneseInputType(Lcom/touchtype_fluency/util/LanguagePack;Z)V
    .locals 3
    .param p1    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v0

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v0

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_6:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "hiragana"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "romaji"

    invoke-interface {v0, v1, p1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized setLoadLangugagePackFlag(I)V
    .locals 1
    .param p1    # I

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePackFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setParameterForChinese()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eq v0, v4, :cond_0

    const-string v1, "continuous-input"

    const-string v2, "end-decay"

    const v3, 0x3e4ccccd

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "continuous-input"

    const-string v2, "distance-decay"

    const v3, 0x3eb33333

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "continuous-input"

    const-string v2, "confidence-factor"

    const v3, 0x3f333333

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return v4
.end method

.method private setParameterForJapanese()Z
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x42480000

    const/high16 v5, 0x41200000

    const/high16 v4, 0x3f800000

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eq v0, v7, :cond_0

    const-string v1, "input-model"

    const-string v2, "infer-space-probability"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "input-model"

    const-string v2, "multi-term-leniency"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "input-model"

    const-string v2, "node-expansion-limit"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "input-model"

    const-string v2, "prefix-candidate-limit"

    const v3, 0x461c4000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "tokenizer"

    const-string v2, "use-stochastic-tokenizer"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "japanese"

    const-string v2, "partial-probability"

    const v3, 0x3c23d70a

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "japanese"

    const-string v2, "partial-skip-probability"

    const v3, 0x3727c5ac

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "japanese"

    const-string v2, "max-correction-rank"

    const/high16 v3, 0x40400000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "japanese"

    const-string v2, "max-multi-term-rank"

    const/high16 v3, 0x40a00000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "japanese"

    const-string v2, "max-prefix-rank"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "japanese"

    const-string v2, "max-partial-rank"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "results"

    const-string v2, "use-exact-match"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return v7
.end method

.method private setParameterForKorPhonepad()Z
    .locals 7

    const/4 v1, 0x0

    const v6, 0x3e4ccccd

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v3

    const/high16 v4, 0x6b6f0000

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isTraceOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    :cond_0
    const-string v3, "input-model"

    const-string v4, "use-wildcards"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v3, v4, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const-string v3, "input-model"

    const-string v4, "use-wildcards"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v3, v4, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v3, "input-model"

    const-string v4, "space-skip-probability"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "continuous-input"

    const-string v4, "feature-threshold"

    const/high16 v5, 0x3f800000

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "continuous-input"

    const-string v4, "end-decay"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "continuous-input"

    const-string v4, "length-decay"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "continuous-input"

    const-string v4, "distance-decay"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "results"

    const-string v4, "prune-ratio"

    const v5, 0x3b1d4952

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "input-model"

    const-string v4, "use-wildcards"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v3, v4, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0
.end method

.method private declared-synchronized setSessionPrivateSetting()V
    .locals 4

    const/4 v3, 0x3

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-static {v0}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setChineseSearchType(IZ)V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameterForChinese()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-static {v0}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setupParameter()V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameterForJapanese()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setupParameter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private setupParameter()V
    .locals 6

    const/4 v5, 0x1

    const v4, 0x3ecccccd

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsEnableAutoCorrection:Z

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const-string v1, "input-model"

    const-string v2, "infer-space-probability"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "input-model"

    const-string v2, "prefix-probability"

    const v3, 0x3c23d70a

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "continuous-input"

    const-string v2, "prefix-probability"

    const v3, 0x3727c5ac

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "continuous-input"

    const-string v2, "distance-decay"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "continuous-input"

    const-string v2, "confidence-factor"

    const v3, 0x3f333333

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "input-model"

    const-string v2, "downcase-probability"

    const/high16 v3, 0x3f000000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const-string v1, "results"

    const-string v2, "layout-filter-dynamic"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_5

    const-string v1, "input-model"

    const-string v2, "anykey-probability"

    const v3, 0x3827c5ac

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v1

    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-eq v1, v2, :cond_2

    const-string v1, "input"

    const-string v2, "max-displacement-ratio"

    const v3, 0x3e99999a

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameterForKorPhonepad()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    const-string v1, "input-model"

    const-string v2, "space-skip-probability"

    const v3, 0x382bf76a

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "continuous-input"

    const-string v2, "feature-threshold"

    const/high16 v3, 0x3fc00000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "continuous-input"

    const-string v2, "end-decay"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "continuous-input"

    const-string v2, "length-decay"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "continuous-input"

    const-string v2, "distance-decay"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "results"

    const-string v2, "prune-ratio"

    const v3, 0x38d1b717

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SwiftkeyWrapper] currentLangauge : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v1, "input-model"

    const-string v2, "infer-space-probability"

    const v3, 0x3d4ccccd

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "input-model"

    const-string v2, "prefix-probability"

    const v3, 0x3dcccccd

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "input-model"

    const-string v2, "anykey-probability"

    const v3, 0x3729732b

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private skipReprospectiveCorrection(Ljava/lang/StringBuilder;)Z
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isEmojiCharacter(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private updateEnabledLanguageList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mEnabledLanguagePacks:Ljava/util/List;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateRetrospectiveCorrection(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;)I
    .locals 5
    .param p1    # Lcom/touchtype_fluency/Sequence;
    .param p2    # Lcom/touchtype_fluency/Sequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->registerPredictionListener()V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->buildPredictionListener(Lcom/touchtype_fluency/Sequence;)V

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    if-lez v4, :cond_2

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungIME"

    const-string v3, "[SwiftkeyWrapper] mPredictions are returned rapidly"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2, p1, p2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    iput v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableAllModel()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method private updateSelectedLanguageList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private declared-synchronized updateSuggestionUIThread()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$8;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$8;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public breakContext()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearContext()V

    return-void
.end method

.method public breakCurrentWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getLastTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public cancelTrace()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->cancelPreviewFlow()Z

    move-result v0

    return v0
.end method

.method public checkChineseSequence()V
    .locals 5

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x8c

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v2}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    :cond_0
    return-void
.end method

.method public checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V
    .locals 22
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # [I
    .param p3    # [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkChineseSequence()V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    invoke-direct/range {p0 .. p3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkCurrentSequenceForJapanese(Ljava/lang/StringBuilder;[I[I)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    const/4 v13, 0x0

    if-eqz v5, :cond_9

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x8c

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isEmptyEditText()Z

    move-result v19

    if-eqz v19, :cond_a

    if-eqz v14, :cond_4

    if-eqz v14, :cond_a

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_a

    :cond_4
    const-string v15, ""

    const-string v11, ""

    const-string v10, ""

    :goto_1
    const/4 v4, 0x0

    const/4 v8, 0x0

    if-nez v11, :cond_5

    const-string v11, ""

    :cond_5
    if-eqz v15, :cond_d

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_c

    :cond_6
    const/16 v19, 0x0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v20

    aput v20, p2, v19

    :goto_2
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p3, v19

    const/4 v8, 0x1

    :goto_3
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    if-eqz v10, :cond_16

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_16

    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->skipReprospectiveCorrection(Ljava/lang/StringBuilder;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p3, v19

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    :cond_8
    if-eqz v8, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateRetrospectiveCorrection(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;)I

    goto/16 :goto_0

    :cond_a
    const-string v19, "SamsungIME"

    const-string v20, "SwiftkeyWrapper-checkCurrentSequence : use IC"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    const-string v15, ""

    :cond_b
    move-object v11, v14

    const/16 v19, 0x8c

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_1

    :cond_c
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p2, v19

    goto/16 :goto_2

    :cond_d
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_e

    new-instance v19, Lcom/touchtype_fluency/Sequence;

    invoke-direct/range {v19 .. v19}, Lcom/touchtype_fluency/Sequence;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    new-instance v19, Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-direct/range {v19 .. v21}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p2, v19

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v19

    add-int/lit8 v6, v19, -0x1

    :goto_6
    if-ltz v6, :cond_f

    invoke-interface {v11, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isLetter(C)Z

    move-result v19

    if-nez v19, :cond_10

    :cond_f
    new-instance v19, Lcom/touchtype_fluency/Sequence;

    invoke-direct/range {v19 .. v19}, Lcom/touchtype_fluency/Sequence;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v20, v6, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v19, Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    const/16 v19, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    aput v20, p2, v19

    goto/16 :goto_3

    :cond_10
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v21

    invoke-interface/range {v19 .. v21}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_12

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    aput v20, p2, v19

    goto/16 :goto_3

    :cond_12
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p2, v19

    goto/16 :goto_3

    :cond_13
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isLetter(C)Z

    move-result v19

    if-eqz v19, :cond_15

    new-instance v9, Lcom/touchtype_fluency/WordBreakIterator;

    invoke-direct {v9}, Lcom/touchtype_fluency/WordBreakIterator;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v3

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/touchtype_fluency/WordBreakIterator;->setText(Ljava/lang/String;)V

    const/16 v19, 0x0

    invoke-virtual {v9}, Lcom/touchtype_fluency/WordBreakIterator;->next()I

    move-result v20

    aput v20, p3, v19

    const/16 v19, 0x0

    aget v19, p3, v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_14

    if-nez v8, :cond_14

    const/16 v19, 0x0

    aget v20, p3, v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v21

    sub-int v20, v20, v21

    aput v20, p3, v19

    :goto_7
    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, p3, v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v19

    sget-object v20, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    const/16 v19, 0x0

    aget v19, p3, v19

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    const/16 v19, 0x0

    aget v19, p3, v19

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v13

    goto/16 :goto_4

    :cond_14
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p3, v19

    goto :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v19

    sget-object v20, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v13

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p3, v19

    goto/16 :goto_4

    :cond_16
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p3, v19

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->restoredTouchHistory(Ljava/lang/String;)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v17

    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public checkJapaneseSequence()Z
    .locals 12

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v9, 0x3f

    invoke-interface {v1, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v9, v7, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0xc8

    if-le v9, v10, :cond_6

    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setVerbatim(Ljava/lang/String;)V

    :cond_2
    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v9

    iput-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const-string v10, ""

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v9}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v9

    iput-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    :cond_3
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isRecaptureWord()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->doRecaptureWord(Z)V

    :cond_4
    :goto_0
    return v7

    :cond_5
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9, v7}, Lcom/diotek/ime/framework/common/InputManager;->doRecaptureWord(Z)V

    move v7, v8

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sub-int v5, v9, v10

    const/4 v4, 0x0

    if-lez v5, :cond_9

    invoke-interface {v2, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatimForPrediction()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    if-nez v3, :cond_a

    move-object v6, v0

    :goto_2
    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_c

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v8

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    move-result-object v8

    sget-object v9, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_6:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v8, v9, :cond_b

    :cond_7
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addTouchHistory(Ljava/lang/Character;)V

    :goto_3
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v8}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    :cond_8
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->doRecaptureWord(Z)V

    goto :goto_0

    :cond_9
    const-string v4, ""

    goto :goto_1

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const-string v9, ""

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public clearContext()I
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearContextExceptTouchHistory()V

    return v1
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearContext()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->storeTouchHistory(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v0, v1, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->choosePrediction(Lcom/touchtype_fluency/Sequence;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public doRecaptureForXt9(Ljava/lang/String;SZ)I
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # S
    .param p3    # Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveIndex([I)I
    .locals 2
    .param p1    # [I

    const/4 v1, 0x0

    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    aput v0, p1, v1

    return v1
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;)I
    .locals 6
    .param p1    # Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v2}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8c

    invoke-interface {v1, v2, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v2}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;I)I
    .locals 4
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # I

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    if-le v2, p2, :cond_1

    invoke-virtual {v1, p2}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return v3

    :cond_1
    invoke-virtual {v1, v3}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v0

    goto :goto_0
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContactSpecificID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInputBuffer(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1    # Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getInputBuffer()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getCurrentWord()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v1}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInputTransResult()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getFullCPSpell()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPositionByTap(II)I
    .locals 6
    .param p1    # I
    .param p2    # I

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v2

    iget-boolean v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getKey(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;IIZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkChineseSequence()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkJapaneseSequence()Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->getSuggestion(Ljava/util/ArrayList;)I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 1
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Z)I
    .locals 20
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isPreviewFlow()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getPreviewSuggestion(Ljava/util/ArrayList;)I

    move-result v17

    :goto_0
    return v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictionsAsArrayList()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v16

    if-nez v11, :cond_1

    const/16 v17, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v19, -0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    const/16 v17, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v8

    const/high16 v17, -0x10000

    and-int v17, v17, v8

    const/high16 v18, 0x656e0000

    and-int v17, v17, v18

    if-eqz v17, :cond_5

    const/4 v7, 0x1

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/touchtype_fluency/Prediction;

    if-nez p2, :cond_6

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getReservePredictions()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v9}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v15

    const-string v17, "verbatim"

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "exact-match-promoted"

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_7
    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_8
    :goto_4
    if-eqz v10, :cond_b

    const-string v17, "\ufffc"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    const/high16 v17, 0x74680000

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    const-string v17, "\\p{Space}"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v17, "\\u200b"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SWIFTKEY_VERBATIM_INDEX"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v5}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_4

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    const/4 v6, 0x1

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v17

    if-nez v17, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v17

    if-nez v17, :cond_f

    invoke-static {v14}, Lcom/diotek/ime/framework/util/Utils;->isEmojiCharacter(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    const/16 v18, 0x3002

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_14

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_14

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    const v18, 0xfffc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_13

    const/4 v3, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL_JAPAN:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_f

    if-eqz v6, :cond_f

    const/4 v3, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->DEFAULT_SYMBOL:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isExplicitTextSelection()Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_15

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_15

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/input/additionalprediction/AdditionalPrediction;->getAdditionalPrediction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_15

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public getSwiftKeyHangulCharSequenceHwKeyboard(ILjava/lang/StringBuilder;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getVerbatim()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    return-object v0
.end method

.method public halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()I
    .locals 10

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mInitializeLangaugePack:Z

    if-nez v8, :cond_3

    const/4 v5, 0x0

    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->reset()V

    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->reset()V

    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->reset()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldLanguagePackFolderByThread()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldKPMFolderByThread()V

    new-instance v6, Ljava/io/File;

    const-string v8, "/system/sipdb"

    const-string v9, "zh_TW.zip"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "SwiftKey"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->LANGUAGE_PACK_DB_DIR:Ljava/lang/String;

    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->createSwiftKeySession(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;)Z

    move-result v5

    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->createSwiftKeySession(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;)Z

    move-result v8

    and-int/2addr v5, v8

    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->createSwiftKeySession(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;)Z

    move-result v8

    and-int/2addr v5, v8

    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyConfigurationURL(Z)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->SwiftKeyConfigurationURL:Ljava/lang/String;

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v8

    sput-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-eqz v5, :cond_0

    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-nez v8, :cond_2

    :cond_0
    const-string v7, "SamsungIME"

    const-string v8, "Fail to init input engine : NullPointerException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    :cond_1
    :goto_0
    return v7

    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setCurrentSwiftKeyController()V

    sget-object v8, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setExclusionPattern()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->installPreloadLanguagePack()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->initLiveLanguageSetting()V

    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadLanguageModels(Z)V

    :cond_3
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_1

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isNeedToRemoveKPMEx()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeKPMExFolderByThread()V

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->setNeedToRemoveKPMEx(Z)V

    :cond_4
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isNeedToRemoveLPMHistory()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/util/LanguagePackManager;->getStorage()Lcom/touchtype_fluency/util/Storage;

    move-result-object v8

    invoke-interface {v8}, Lcom/touchtype_fluency/util/Storage;->getTempDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_6

    :try_start_0
    array-length v8, v4

    if-lez v8, :cond_6

    const/4 v3, 0x0

    :goto_1
    array-length v8, v4

    if-ge v3, v8, :cond_6

    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".json"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->setNeedToRemoveLPMHistory(Z)V

    goto :goto_0
.end method

.method public inputKey(I)I
    .locals 1
    .param p1    # I

    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->deleteKey()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    goto :goto_0
.end method

.method public inputKey(ILandroid/graphics/PointF;)I
    .locals 9
    .param p1    # I
    .param p2    # Landroid/graphics/PointF;

    const/4 v8, -0x5

    const-string v6, "SamsungIME"

    const-string v7, "SwiftkeyWrapper-inputKey"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v8, :cond_1

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->inputKey(I)I

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v5, p2

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v6

    const/16 v7, 0x40

    if-lt v6, v7, :cond_2

    const/high16 v6, 0x6b6f0000

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v7

    if-ne v6, v7, :cond_6

    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isSecondaryKeyMode()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6, p1, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addTouchPoint(ILandroid/graphics/PointF;)V

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isCangjieInputMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v6

    add-int/lit8 v0, v6, -0x41

    :try_start_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->CANGJIE_SHAPES:[Ljava/lang/Character;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->deleteLastInputKey()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v6, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setPredictions(Lcom/touchtype_fluency/Predictions;)V

    :cond_5
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->convertCodeforChinese(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateCPSpell(I)V

    goto :goto_0

    :cond_6
    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public inputKeyWithoutBuild(I)I
    .locals 1
    .param p1    # I

    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->deleteKey()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKeyWithoutBuild(ILandroid/graphics/PointF;)I
    .locals 6
    .param p1    # I
    .param p2    # Landroid/graphics/PointF;

    const/4 v4, -0x5

    if-ne p1, v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->inputKeyWithoutBuild(I)I

    move-result v4

    :goto_0
    return v4

    :cond_0
    move-object v3, p2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_1

    const/high16 v4, 0x6b6f0000

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v5

    if-ne v4, v5, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isSecondaryKeyMode()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4, p1, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addTouchPoint(ILandroid/graphics/PointF;)V

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isCangjieInputMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v4

    add-int/lit8 v0, v4, -0x41

    :try_start_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->CANGJIE_SHAPES:[Ljava/lang/Character;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    :cond_3
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, -0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public inputString(Ljava/lang/StringBuilder;)I
    .locals 2
    .param p1    # Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z
    .locals 2
    .param p1    # [Landroid/graphics/PointF;
    .param p2    # I
    .param p3    # [Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isAutoAceeptBeforeFlow(Lcom/touchtype_fluency/Sequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isValidWord(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmojiLMLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isEmojiLMLoaded()Z

    move-result v0

    return v0
.end method

.method public isNumericCharacter(I)Z
    .locals 1
    .param p1    # I

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivateImeOptionsCSC()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isContactSpecificContext()Z

    move-result v0

    return v0
.end method

.method public isTextCharacter(I)Z
    .locals 11
    .param p1    # I

    const/16 v10, 0x39

    const/4 v6, 0x0

    const/16 v9, 0x8

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    if-eq v3, v5, :cond_0

    const/4 v7, 0x2

    if-ne v3, v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    :cond_1
    :goto_0
    :sswitch_0
    return v5

    :cond_2
    if-eqz v1, :cond_4

    if-ne v1, v9, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v7, 0x7

    if-ne v1, v7, :cond_5

    :cond_4
    if-nez v3, :cond_5

    const/16 v7, 0xe01

    if-lt p1, v7, :cond_5

    const/16 v7, 0xe4c

    if-le p1, v7, :cond_1

    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v7

    const/high16 v8, 0x74680000

    if-ne v7, v8, :cond_6

    const/16 v7, -0x3a

    if-eq p1, v7, :cond_1

    :cond_6
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v7, 0x37

    if-eq p1, v7, :cond_7

    const/16 v7, 0x38

    if-eq p1, v7, :cond_7

    if-eq p1, v10, :cond_7

    const/16 v7, 0x30

    if-ne p1, v7, :cond_8

    :cond_7
    move v5, v6

    goto :goto_0

    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_c

    if-eq v1, v5, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-nez v7, :cond_9

    if-ne v1, v9, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    if-nez v3, :cond_a

    const/16 v7, 0x32

    if-lt p1, v7, :cond_a

    if-le p1, v10, :cond_b

    :cond_a
    const/16 v7, 0x27

    if-ne p1, v7, :cond_c

    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    goto :goto_0

    :cond_c
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    int-to-char v8, p1

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isValidCharacter(C)Z

    move-result v7

    if-nez v7, :cond_1

    if-eq v1, v5, :cond_d

    if-ne v1, v9, :cond_e

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    sparse-switch p1, :sswitch_data_0

    :cond_e
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    const v7, 0x7a685457

    if-ne v0, v7, :cond_10

    if-nez v3, :cond_10

    if-eq v1, v5, :cond_f

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-nez v7, :cond_f

    if-ne v1, v9, :cond_10

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    sparse-switch p1, :sswitch_data_1

    :cond_10
    if-eqz v4, :cond_12

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_12

    if-nez v3, :cond_12

    if-eq v1, v5, :cond_11

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-nez v7, :cond_11

    if-ne v1, v9, :cond_12

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    sparse-switch p1, :sswitch_data_2

    :cond_12
    const/high16 v6, 0x6c6f0000

    if-ne v0, v6, :cond_18

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isLaoUnicode(I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_13
    const v6, 0x7a314d4d

    if-ne v0, v6, :cond_14

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiChar(I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_14
    const/high16 v6, 0x64650000

    if-ne v0, v6, :cond_16

    if-nez v3, :cond_16

    if-eq v1, v5, :cond_15

    if-ne v1, v9, :cond_16

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_15
    const/16 v6, 0xa7

    if-eq p1, v6, :cond_1

    :cond_16
    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v2

    invoke-static {p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v6

    invoke-virtual {v2, p1, v6}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v6

    invoke-virtual {v2, p1, v6}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_17
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    goto/16 :goto_0

    :sswitch_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    goto/16 :goto_0

    :sswitch_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    goto/16 :goto_0

    :cond_18
    const/high16 v6, 0x6b6d0000

    if-ne v0, v6, :cond_13

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isKhmerUnicode(I)Z

    move-result v6

    if-eqz v6, :cond_13

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x104 -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x27 -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x2c7 -> :sswitch_0
        0x2ca -> :sswitch_0
        0x2cb -> :sswitch_0
        0x2d9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2a -> :sswitch_0
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x31d0 -> :sswitch_0
        0x31d1 -> :sswitch_0
        0x31d3 -> :sswitch_0
        0x31d4 -> :sswitch_0
        0x31d6 -> :sswitch_0
    .end sparse-switch
.end method

.method public joinChunjiin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/touchtype_fluency/Chonjiin;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public joinHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public joinNaragul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/touchtype_fluency/NaratGeul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public learnSequence(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUsePersonalizedData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnDynamicModel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public learnTempSuggestion(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mDiableTempDynamicModel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnTempDynamicModel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processTrace([Landroid/graphics/PointF;I[JBZ)S
    .locals 8
    .param p1    # [Landroid/graphics/PointF;
    .param p2    # I
    .param p3    # [J
    .param p4    # B
    .param p5    # Z

    const/4 v0, -0x1

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v1

    const/high16 v2, 0x6b6f0000

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->startChonjiinFlow()V

    :cond_1
    if-eq p4, v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->isPreviewFlow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$16;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$16;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->registerPreviewFlowPredictionListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->previewFlow(Lcom/touchtype_fluency/Sequence;[Landroid/graphics/PointF;I[JLjava/lang/String;IZ)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->processFlow([Landroid/graphics/PointF;I[J)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v0, v1, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnKeyPressModel(Lcom/touchtype_fluency/Sequence;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public removeCurrentTermFromTemporaryModel()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->removeCurrentTermFromTemporaryModel()V

    return-void
.end method

.method public removeTerm(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->removeTerm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    :cond_0
    return-void
.end method

.method public replaceKey(ILandroid/graphics/PointF;)I
    .locals 7
    .param p1    # I
    .param p2    # Landroid/graphics/PointF;

    const/16 v6, 0x40

    move-object v4, p2

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v5

    if-lt v5, v6, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    const/high16 v5, 0x6b6f0000

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v6

    if-ne v5, v6, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isSecondaryKeyMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isCangjieInputMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    add-int/lit8 v0, v5, -0x41

    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->CANGJIE_SHAPES:[Ljava/lang/Character;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->deleteLastInputKey()Z

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v5, p1, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addTouchPoint(ILandroid/graphics/PointF;)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->deleteLastInputKey()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->convertCodeforChinese(I)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateCPSpell(I)V

    :cond_4
    :goto_1
    return v2

    :cond_5
    const/4 v2, -0x1

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public resetTextFieldState()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->resetTemporaryModel()V

    return-void
.end method

.method public romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v0, v1, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setChinesePhoneticIndex(Lcom/touchtype_fluency/Sequence;I)V

    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setContactSpecificID(Ljava/lang/String;)V

    return-void
.end method

.method public setEmojiPredictionEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setEmojiPredictionEnabled(Z)V

    return-void
.end method

.method public setFieldSpecificType(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setFieldSpecificType(I)V

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setIntentionalEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setIntentionalEvent(Ljava/lang/String;)V

    return-void
.end method

.method public setIsPrivateImeOptionsCSC(Z)V
    .locals 2
    .param p1    # Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setContactSpecificID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->disableContactSpecificContext()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableContactSpecificContext()V

    goto :goto_0
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 4
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isLatinSoftFuncKey()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getHwPhonepadEnKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKoreaSoftFuncKey()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getHwPhonepadKrKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mBackupKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setSessionPrivateSetting()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/high16 v2, 0x6b6f0000

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-static {v3}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPressedRangeKey()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationChanged()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setParameterForCapsLockState(Z)V
    .locals 3
    .param p1    # Z

    if-eqz p1, :cond_0

    const-string v0, "input-model"

    const-string v1, "downcase-probability"

    const/high16 v2, 0x3f000000

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "input-model"

    const-string v1, "downcase-probability"

    const v2, 0x3ca3d70a

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setVerbatim(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    return-void
.end method

.method public setVerbatirmsInPrediction(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setReservePredictions(Ljava/util/ArrayList;)V

    return-void
.end method

.method public splitHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimSwiftkeyMemory()V
    .locals 4

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v2, v3, v1, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->trimSwiftkeyMemory(Ljava/util/List;Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    return-void
.end method

.method public updateAcuteAccentState(Z)V
    .locals 9
    .param p1    # Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAccentState:Z

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v3

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x656c0000

    if-eq v3, v0, :cond_0

    const/high16 v0, 0x6c760000

    if-ne v3, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x7

    if-eq v4, v0, :cond_1

    const/16 v0, 0x8

    if-ne v4, v0, :cond_2

    :cond_1
    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mAccentState:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "KeyPressModelEx"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v7

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mBackupKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    move v6, p1

    invoke-interface/range {v0 .. v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZLjava/util/List;)Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public updateEngine()I
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setCurrentSwiftKeyController()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearContext()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearTouchHistoryRepository()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsEnableAutoCorrection:Z

    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTraceOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "RELOAD_LANGUAGEPACK"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "RELOAD_LANGUAGEPACK"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    if-eq v2, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    :cond_2
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadLanguageModels(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setSequenceType(Lcom/touchtype_fluency/Sequence$Type;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    :cond_3
    :goto_0
    return v4

    :cond_4
    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "RELOAD_LANGUAGEPACK"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "RELOAD_LANGUAGEPACK"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    if-eq v2, v1, :cond_6

    const/4 v0, 0x1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsUseLiveLanguage:Z

    :cond_6
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadLanguageModels(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setSequenceType(Lcom/touchtype_fluency/Sequence$Type;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableAllModel()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    goto :goto_0
.end method

.method public updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p2    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    new-instance v2, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v2}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->getTouchPoint()Landroid/graphics/PointF;

    move-result-object v1

    new-instance v4, Lcom/touchtype_fluency/Point;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    sget-object v5, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    invoke-virtual {v2, v4, v5}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->getKeyCode()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4, v2, p2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateKeyPressModeling(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public updateSelectList()I
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->registerPredictionListener()V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->buildPredictionListener(Lcom/touchtype_fluency/Sequence;)V

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    if-lez v4, :cond_2

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungIME"

    const-string v3, "[SwiftkeyWrapper] mPredictions are returned rapidly"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    iput v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableAllModel()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public updateShiftState()V
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v2

    if-nez v3, :cond_0

    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mShiftMode:Z

    if-eqz v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    :cond_2
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCapslockMode:Z

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-boolean v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mShiftMode:Z

    iget-boolean v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCapslockMode:Z

    invoke-interface {v4, v7, v8}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateShiftState(ZZ)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isUpdateShiftStateForSmallLcd()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsPrediction:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTraceOn()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v4

    if-ne v4, v6, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v4, v5, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateShiftState(ZZ)V

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x7

    if-eq v0, v4, :cond_5

    const/16 v4, 0x8

    if-ne v0, v4, :cond_6

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mBackupKeyboard:Lcom/diotek/ime/framework/view/Keyboard;

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getCurrentLangauge()I

    move-result v4

    const/high16 v5, 0x6b6f0000

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-static {v5}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    move v4, v5

    goto :goto_0

    :cond_8
    move v4, v5

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mVerbatim:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->addCPPhrase(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSelectList()I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateCPSpell(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->doNoteWordDoneForXt9(I)I

    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mDiableTempDynamicModel:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnTempDynamicModel(Ljava/lang/String;)V

    :cond_2
    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mIsEnableAutoCorrection:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v2, v3, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnKeyPressModel(Lcom/touchtype_fluency/Sequence;I)V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->saveAndClear()V

    return-void
.end method
