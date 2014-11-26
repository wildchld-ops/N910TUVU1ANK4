.class public Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;
.super Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;
.source "SwiftkeyJapaneseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

.field private static mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;


# instance fields
.field private final JAPANESE_POSTPOSITION:[Ljava/lang/String;

.field private isLoadKeypressModelError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;-><init>()V

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->isLoadKeypressModelError:Z

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u306f"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "\u304c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u3092"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u306e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u3082"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u306b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u304b\u3089"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u307e\u3067"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u3067"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u3068"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u3088\u308a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u3078"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->JAPANESE_POSTPOSITION:[Ljava/lang/String;

    return-void
.end method

.method private addLayoutKey(Ljava/util/HashSet;C)V
    .locals 9
    .param p2    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v8}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/touchtype_fluency/InputMapper;->getAccentedVariantsList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    array-length v5, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v4, v7}, Lcom/touchtype_fluency/InputMapper;->getAccentedVariantsList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    array-length v5, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v2, v3

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private addLayoutKey(Ljava/util/HashSet;[Ljava/lang/Character;)V
    .locals 2
    .param p2    # [Ljava/lang/Character;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->addLayoutKey(Ljava/util/HashSet;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getContextLength(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->isValidCharacter(C)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    return-object v0
.end method

.method private getJapaneseInputType(Z)Ljava/lang/String;
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    const-string v0, "hiragana"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "romaji"

    goto :goto_0
.end method

.method private japaneseJoin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/touchtype_fluency/Japanese;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addTouchHistory(Ljava/lang/Character;)V
    .locals 0
    .param p1    # Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->addTouchHistory(Ljava/lang/Character;)V

    return-void
.end method

.method public addTouchPoint(ILandroid/graphics/PointF;)V
    .locals 2
    .param p1    # I
    .param p2    # Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAlreadyAddTouchHistory:Z

    return-void
.end method

.method public buildPredictionListener(Lcom/touchtype_fluency/Sequence;)V
    .locals 4
    .param p1    # Lcom/touchtype_fluency/Sequence;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearReservePredictions()V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->japaneseJoin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    :goto_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<buildPredictionListener>  before getPredictions - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<###buildPredictionListener>  after getPredictions - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    goto :goto_0
.end method

.method public buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;
    .locals 3
    .param p1    # Lcom/touchtype_fluency/Sequence;
    .param p2    # Lcom/touchtype_fluency/Sequence;
    .param p3    # I

    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    iget p3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->japaneseJoin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {p0, p1, v1, p3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    return-object v1

    :cond_1
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    goto :goto_0
.end method

.method protected buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;
    .locals 3
    .param p1    # Lcom/touchtype_fluency/Sequence;
    .param p2    # Lcom/touchtype_fluency/TouchHistory;
    .param p3    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->japaneseJoin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    goto :goto_0
.end method

.method protected buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;
    .locals 3
    .param p1    # Lcom/touchtype_fluency/Sequence;
    .param p2    # Lcom/touchtype_fluency/TouchHistory;
    .param p3    # I

    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setContactSpecificSequence(Lcom/touchtype_fluency/Sequence;Z)Z

    invoke-super {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setFieldSpecificSequence(Lcom/touchtype_fluency/Sequence;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-virtual {p0, p3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/touchtype_fluency/Predictor;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    return-object v0
.end method

.method public changeJapaneseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z
    .locals 10
    .param p2    # Z
    .param p3    # Ljava/lang/String;
    .param p4    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p5    # Lcom/touchtype_fluency/util/CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez p2, :cond_1

    const-string v8, "hiragana"

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCurrentInputType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v8, "hiragana"

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCurrentInputType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->getJapaneseInputType(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p4, v3, v8}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    move-object v2, v3

    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_5

    new-array v8, v6, [Lcom/touchtype_fluency/util/LanguagePack;

    aput-object v2, v8, v7

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5, v5, p4, p5}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    if-eqz p2, :cond_4

    sget-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->HIRAGANA:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    sput-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    :goto_0
    return v6

    :cond_4
    sget-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->ROMAJI:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    sput-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    goto :goto_0

    :cond_5
    move v6, v7

    goto :goto_0
.end method

.method public checkPostPosition(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->JAPANESE_POSTPOSITION:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->JAPANESE_POSTPOSITION:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public createSession()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    const/16 v0, 0x5a

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    invoke-super {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->createSession()Z

    move-result v0

    return v0
.end method

.method public deleteKey()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v5}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v5

    if-le v5, v3, :cond_3

    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatim(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4, v2}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v3}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method public fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/touchtype_fluency/CharacterWidth;->fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v4, :cond_2

    const/high16 v4, 0x6a610000

    if-ne p2, v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v4, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v3

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeSequenceRemove(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->checkPostPosition(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeSequenceRemove(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v4, Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-direct {v4, v3, v1}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    :goto_0
    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    const/4 v5, 0x6

    invoke-interface {v4, p1, v5}, Lcom/touchtype_fluency/Tokenizer;->splitContextCurrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/touchtype_fluency/ContextCurrentWord;

    new-instance v5, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v5}, Lcom/touchtype_fluency/Sequence;-><init>()V

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->tokenizerSplit(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    new-instance v1, Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-direct {v1, v0, p2}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/touchtype_fluency/ContextCurrentWord;

    new-instance v2, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v2}, Lcom/touchtype_fluency/Sequence;-><init>()V

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;II)I
    .locals 1
    .param p1    # Lcom/touchtype_fluency/Sequence;
    .param p2    # Lcom/touchtype_fluency/TouchHistory;
    .param p3    # I
    .param p4    # I

    const/4 v0, -0x1

    return v0
.end method

.method protected getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;
    .locals 4
    .param p1    # I

    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    sget-object v2, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->DISABLED:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    sget-object v3, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->JAPANESE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-object v0
.end method

.method public halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/touchtype_fluency/CharacterWidth;->halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/touchtype_fluency/Japanese;->hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidCharacter(C)Z
    .locals 1
    .param p1    # C

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isHiraganaKey(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isRomajiKey(C)Z

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

.method public katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/touchtype_fluency/Japanese;->katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z
    .locals 17
    .param p1    # Ljava/io/File;
    .param p2    # Lcom/diotek/ime/framework/view/Keyboard;
    .param p3    # I
    .param p4    # I
    .param p5    # Z
    .param p6    # Z

    const-string v4, ""

    if-nez p2, :cond_0

    const-string v14, "SamsungIME"

    const-string v15, "[loadKeyPressModel] keyboard is null!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v14}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {v14, v7}, Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;->loadJpnMultiCharacterMap(Lcom/touchtype_fluency/InputMapper;)V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    const/16 v14, 0x28

    invoke-direct {v3, v14}, Ljava/util/HashMap;-><init>(I)V

    new-instance v9, Ljava/util/HashMap;

    const/16 v14, 0x10

    invoke-direct {v9, v14}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz p5, :cond_5

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v14, :cond_3

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    if-lez v14, :cond_3

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_3

    iget v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v15, v15, 0x2

    add-int v12, v14, v15

    iget v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v15, v15, 0x2

    add-int v13, v14, v15

    const/4 v2, 0x0

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    new-array v2, v14, [Ljava/lang/Character;

    const/4 v5, 0x0

    :goto_2
    array-length v14, v2

    if-ge v5, v14, :cond_2

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v14, v14, v5

    int-to-char v14, v14

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    aput-object v14, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->addLayoutKey(Ljava/util/HashSet;[Ljava/lang/Character;)V

    new-instance v14, Lcom/touchtype_fluency/Point;

    int-to-float v15, v12

    int-to-float v0, v13

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v14}, Lcom/touchtype_fluency/KeyShape;->pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v14

    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v14, :cond_1

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_1

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v2, 0x0

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    new-array v11, v14, [Ljava/lang/String;

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    new-array v2, v14, [Ljava/lang/String;

    const/4 v5, 0x1

    :goto_3
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    if-ge v5, v14, :cond_4

    add-int/lit8 v14, v5, -0x1

    iget-object v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v15, v15, v5

    int-to-char v15, v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v14

    add-int/lit8 v14, v5, -0x1

    iget-object v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v15, v15, v5

    int-to-char v15, v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-char v14, v14

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-char v14, v14

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v14, :cond_1

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "StrEmpty"

    iget-object v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    iget v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v15, v15, 0x2

    add-int v12, v14, v15

    iget v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v15, v15, 0x2

    add-int v13, v14, v15

    const/4 v2, 0x0

    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/Character;

    const/4 v14, 0x0

    iget-object v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    aput-object v15, v2, v14

    const/4 v14, 0x0

    aget-object v14, v2, v14

    invoke-virtual {v14}, Ljava/lang/Character;->charValue()C

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->addLayoutKey(Ljava/util/HashSet;C)V

    new-instance v14, Lcom/touchtype_fluency/Point;

    int-to-float v15, v12

    int-to-float v0, v13

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v14}, Lcom/touchtype_fluency/KeyShape;->pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v14

    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getKeyModelHashCodeEx(Ljava/util/HashMap;)I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v15}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadCurrentKeyPressModelFileName(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->shouldLoadKeyPressModel(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearTouchHistoryRepository()V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->cancelPreviewFlow()Z

    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZLjava/util/List;)Z
    .locals 1
    .param p1    # Ljava/io/File;
    .param p2    # Lcom/diotek/ime/framework/view/Keyboard;
    .param p3    # I
    .param p4    # I
    .param p5    # Z
    .param p6    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/diotek/ime/framework/view/Keyboard;",
            "IIZZ",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z

    move-result v0

    return v0
.end method

.method public loadKeyPressModelForHWR(II)Z
    .locals 1
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x0

    return v0
.end method

.method public loadKorCharacterMap(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;Z)V
    .locals 1
    .param p2    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p3    # Lcom/touchtype_fluency/util/LoadProgressListener;
    .param p4    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/LoadProgressListener;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setDynamicModelsEnabled(Z)V

    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    if-eqz p4, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->HIRAGANA:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->ROMAJI:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    goto :goto_0
.end method

.method public romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/touchtype_fluency/Japanese;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/touchtype_fluency/TouchHistory;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    return-void
.end method
