.class public Lcom/touchtype/personalizer/PersonalizationRequest;
.super Ljava/lang/Object;
.source "PersonalizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;,
        Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;
    }
.end annotation


# static fields
.field private static final DELAYS:[I

.field private static final DELETE_REQUEST_TIMEOUT:I = 0x2710

.field private static final LOOPER_TRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

.field private mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private mListener:Lcom/touchtype/personalizer/PersonalizationListener;

.field private mMergeResult:Z

.field private mParams:Ljava/lang/String;

.field private mPollCount:I

.field private mPoller:Ljava/lang/Thread;

.field private mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/personalizer/PersonalizationRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizationRequest;->DELAYS:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x4
        0x4
        0x4
        0x4
        0x8
        0x8
        0x8
        0x8
        0x10
        0x10
        0x10
        0x10
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    new-instance v0, Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/touchtype_fluency/service/util/UrlManager;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    iput-object p4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getInstance(Landroid/content/Context;)Lcom/touchtype/personalizer/PersonalizationKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/personalizer/PersonalizationListener;Landroid/content/Context;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    new-instance v0, Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-direct {v0, p1, p2, p6}, Lcom/touchtype_fluency/service/util/UrlManager;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    iput-object p5, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;

    iput-object p4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mDownloadPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-static {p6}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getInstance(Landroid/content/Context;)Lcom/touchtype/personalizer/PersonalizationKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/touchtype/personalizer/PersonalizationRequest;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z

    return v0
.end method

.method static synthetic access$102(Lcom/touchtype/personalizer/PersonalizationRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z

    return p1
.end method

.method static synthetic access$1100(Ljava/net/URL;)Ljava/net/URL;
    .locals 1

    invoke-static {p0}, Lcom/touchtype/personalizer/PersonalizationRequest;->addRandToUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/touchtype/personalizer/PersonalizationRequest;)I
    .locals 1

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I

    return v0
.end method

.method static synthetic access$1208(Lcom/touchtype/personalizer/PersonalizationRequest;)I
    .locals 2

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/touchtype/personalizer/PersonalizationRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/service/util/ServerBusyException;,
            Lcom/touchtype_fluency/service/util/ServerApiException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizationRequest;->makeInitialRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/touchtype/personalizer/PersonalizationRequest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype_fluency/service/util/UrlManager;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    sget-object v0, Lcom/touchtype/personalizer/PersonalizationRequest;->DELAYS:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/touchtype/personalizer/PersonalizationRequest;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/touchtype/personalizer/PersonalizationRequest;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private addAuthToParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v7}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getApiKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v7}, Lcom/touchtype_fluency/service/util/UrlManager;->getGUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    const-string v7, "No SHA-1 algorithm found"

    invoke-static {v6, v7}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "&"

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "auth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v6, "?"

    goto :goto_2
.end method

.method private addLocaleLanguageInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "&"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "locale_country="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "&"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "locale_language="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    monitor-enter v3

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    const-string v7, "?"

    goto/16 :goto_0

    :cond_3
    const-string v7, "?"

    goto :goto_1

    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_5

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "&"

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "languages_enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_4
    return-object p1

    :cond_6
    const-string v7, "?"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    goto :goto_4
.end method

.method private static addRandToUrl(Ljava/net/URL;)Ljava/net/URL;
    .locals 8

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v4, "&"

    :goto_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x98967f

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v5

    :cond_0
    const-string v4, "?"

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    :try_start_1
    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    goto :goto_1

    :catchall_0
    move-exception v5

    throw v5
.end method

.method private addTextRetentionToParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&retain_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeInitialRequest()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/service/util/ServerBusyException;,
            Lcom/touchtype_fluency/service/util/ServerApiException;
        }
    .end annotation

    iget-object v9, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v9}, Lcom/touchtype_fluency/service/util/UrlManager;->getInitialUrl()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v9, "POST"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object v9, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/touchtype/personalizer/PersonalizationRequest;->addTextRetentionToParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    iget-object v9, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/touchtype/personalizer/PersonalizationRequest;->addAuthToParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    iget-object v9, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/touchtype/personalizer/PersonalizationRequest;->addLocaleLanguageInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    sget-object v9, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Querying URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v11}, Lcom/touchtype_fluency/service/util/UrlManager;->getInitialUrl()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with params "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v9, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    sget-object v9, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "makeInitialRequest: got response "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v6, :sswitch_data_0

    sget-object v9, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Personalization servers returned invalid HTTP result "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/touchtype_fluency/service/util/ServerApiException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Initial request, expected 301 or 503, got "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/touchtype_fluency/service/util/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v9

    :sswitch_0
    const-string v1, ""

    const-string v5, ""

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "request_id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    :goto_2
    iget-object v9, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v9, v5}, Lcom/touchtype_fluency/service/util/UrlManager;->setRequestId(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v9

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    throw v9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :sswitch_1
    sget-object v9, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    const-string v10, "Personalization servers are returning busy"

    invoke-static {v9, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/touchtype_fluency/service/util/ServerBusyException;

    const-string v10, "Servers returned busy"

    invoke-direct {v9, v10}, Lcom/touchtype_fluency/service/util/ServerBusyException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_1
    move-exception v9

    goto :goto_1

    :catch_2
    move-exception v10

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x1f7 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public deleteRemoteData(Lcom/touchtype/personalizer/PersonalizationListener;)V
    .locals 4

    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/touchtype/personalizer/PersonalizationRequest;->addAuthToParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v3}, Lcom/touchtype_fluency/service/util/UrlManager;->getDeleteUrlString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/touchtype/personalizer/PersonalizationRequest$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/touchtype/personalizer/PersonalizationRequest$2;-><init>(Lcom/touchtype/personalizer/PersonalizationRequest;Ljava/lang/String;Lcom/touchtype/personalizer/PersonalizationListener;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public start()V
    .locals 1

    new-instance v0, Lcom/touchtype/personalizer/PersonalizationRequest$1;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizationRequest$1;-><init>(Lcom/touchtype/personalizer/PersonalizationRequest;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPoller:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPoller:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPoller:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
