.class public interface abstract Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
.super Ljava/lang/Object;
.source "SwiftkeyManager.java"


# virtual methods
.method public abstract addCPPhrase(ILjava/lang/String;)Z
.end method

.method public abstract addCPSpell(I)V
.end method

.method public abstract addString(Ljava/lang/String;)V
.end method

.method public abstract addTouchHistory(Ljava/lang/Character;)V
.end method

.method public abstract addTouchPoint(ILandroid/graphics/PointF;)V
.end method

.method public abstract buildPredictionListener(Lcom/touchtype_fluency/Sequence;)V
.end method

.method public abstract buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;
.end method

.method public abstract cancelPreviewFlow()Z
.end method

.method public abstract changeChineseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z
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
.end method

.method public abstract changeJapaneseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z
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
.end method

.method public abstract checkPostPosition(Ljava/lang/String;)Z
.end method

.method public abstract choosePrediction(Lcom/touchtype_fluency/Sequence;I)V
.end method

.method public abstract clearContext()V
.end method

.method public abstract clearContextExceptTouchHistory()V
.end method

.method public abstract clearIntentionalEvents()V
.end method

.method public abstract clearTouchHistoryRepository()V
.end method

.method public abstract createSession()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation
.end method

.method public abstract deleteKey()Z
.end method

.method public abstract deleteLastInputKey()Z
.end method

.method public abstract disableContactSpecificContext()V
.end method

.method public abstract enableAllModel()V
.end method

.method public abstract enableContactSpecificContext()V
.end method

.method public abstract enableLanguageModel(Ljava/lang/String;)Z
.end method

.method public abstract fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getClosestKey(II)I
.end method

.method public abstract getContactSpecificID()Ljava/lang/String;
.end method

.method public abstract getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;
.end method

.method public abstract getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;
.end method

.method public abstract getFieldSpecificType()I
.end method

.method public abstract getFirtstTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFullCPSpell()Ljava/lang/String;
.end method

.method public abstract getInputBuffer()Ljava/lang/StringBuilder;
.end method

.method public abstract getKey(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;IIZ)I
.end method

.method public abstract getLastTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;II)I
.end method

.method public abstract getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;III)I
.end method

.method public abstract getMostLikelyKey(II)I
.end method

.method public abstract getPhoneticSpellGroup(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract getPredictions()Lcom/touchtype_fluency/Predictions;
.end method

.method public abstract getPredictionsAsArrayList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPredictor()Lcom/touchtype_fluency/Predictor;
.end method

.method public abstract getPreviewFlowPredicions()Lcom/touchtype_fluency/Predictions;
.end method

.method public abstract getReservePredictions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
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
.end method

.method public abstract getSwiftKeyConfigurationURL(Z)Ljava/lang/String;
.end method

.method public abstract getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;
.end method

.method public abstract getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;
.end method

.method public abstract getTokenizer()Lcom/touchtype_fluency/Tokenizer;
.end method

.method public abstract getTouchHistory()Lcom/touchtype_fluency/TouchHistory;
.end method

.method public abstract getTrainer()Lcom/touchtype_fluency/Trainer;
.end method

.method public abstract halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isAutoAceeptBeforeFlow(Lcom/touchtype_fluency/Sequence;)Z
.end method

.method public abstract isContactSpecificContext()Z
.end method

.method public abstract isEmojiLMLoaded()Z
.end method

.method public abstract isEmojiPredictionEnabled()Z
.end method

.method public abstract isPreviewFlow()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract isValidCharacter(C)Z
.end method

.method public abstract isValidWord(Ljava/lang/String;)Z
.end method

.method public abstract katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract learnDynamicModel(Ljava/lang/String;)V
.end method

.method public abstract learnFieldSpecificContext(Ljava/lang/String;I)V
.end method

.method public abstract learnKeyPressModel(Lcom/touchtype_fluency/Sequence;I)V
.end method

.method public abstract learnTempDynamicModel(Ljava/lang/String;)V
.end method

.method public abstract loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z
.end method

.method public abstract loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZLjava/util/List;)Z
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
.end method

.method public abstract loadKeyPressModelForHWR(II)Z
.end method

.method public abstract loadKorCharacterMap(I)V
.end method

.method public abstract loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/LoadProgressListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;Z)V
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
.end method

.method public abstract loadOrUnloadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;Z)V
.end method

.method public abstract previewFlow(Lcom/touchtype_fluency/Sequence;[Landroid/graphics/PointF;I[JLjava/lang/String;IZ)I
.end method

.method public abstract processFlow([Landroid/graphics/PointF;I[J)V
.end method

.method public abstract registerPreviewFlowPredictionListener(Lcom/touchtype_fluency/util/PredictionsListener;)V
.end method

.method public abstract removeCurrentTermFromTemporaryModel()V
.end method

.method public abstract removeTerm(I)Z
.end method

.method public abstract replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract resetParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract resetTemporaryModel()V
.end method

.method public abstract restoredTouchHistory(Ljava/lang/String;)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public abstract romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract saveAndClear()V
.end method

.method public abstract setBlacklist(Ljava/lang/String;)V
.end method

.method public abstract setChinesePhoneticIndex(Lcom/touchtype_fluency/Sequence;I)V
.end method

.method public abstract setChineseSearchType(IZ)V
.end method

.method public abstract setContactSpecificID(Ljava/lang/String;)V
.end method

.method public abstract setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V
.end method

.method public abstract setDynamicModelsEnabled(Z)V
.end method

.method public abstract setEmojiPredictionEnabled(Z)V
.end method

.method public abstract setExclusionPattern()V
.end method

.method public abstract setFieldSpecificType(I)V
.end method

.method public abstract setIntentionalEvent(Ljava/lang/String;)V
.end method

.method public abstract setLiveLanguageModelsEnabled(Z)V
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Float;)V
.end method

.method public abstract setPredictions(Lcom/touchtype_fluency/Predictions;)V
.end method

.method public abstract setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V
.end method

.method public abstract setPreviewFlowPredicions(Lcom/touchtype_fluency/Predictions;)V
.end method

.method public abstract setReservePredictions(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSequenceType(Lcom/touchtype_fluency/Sequence$Type;)V
.end method

.method public abstract setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V
.end method

.method public abstract setTouchHistory(Ljava/lang/String;)V
.end method

.method public abstract startChonjiinFlow()V
.end method

.method public abstract storeTouchHistory(Ljava/lang/String;I)V
.end method

.method public abstract tokenizerSplit(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;
.end method

.method public abstract trimSwiftkeyMemory(Ljava/util/List;Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/SwiftKeySession;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateCPSpell(I)V
.end method

.method public abstract updateKeyPressModeling(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/StringBuilder;)V
.end method

.method public abstract updateShiftState(ZZ)V
.end method
