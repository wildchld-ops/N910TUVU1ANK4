.class public Lcom/touchtype_fluency/internal/PredictorImpl;
.super Ljava/lang/Object;
.source "PredictorImpl.java"

# interfaces
.implements Lcom/touchtype_fluency/Predictor;
.implements Lcom/touchtype_fluency/Session;
.implements Lcom/touchtype_fluency/Trainer;


# instance fields
.field private inputMapperImpl:Lcom/touchtype_fluency/internal/InputMapperImpl;

.field private keyPressModelImpl:Lcom/touchtype_fluency/internal/KeyPressModelImpl;

.field private layoutFilterImpl:Lcom/touchtype_fluency/internal/LayoutFilterImpl;

.field private parameterSetImpl:Lcom/touchtype_fluency/internal/ParameterSetImpl;

.field private peer:J

.field private punctuatorImpl:Lcom/touchtype_fluency/internal/PunctuatorImpl;

.field private sentenceSegmenterImpl:Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;

.field private tokenizerImpl:Lcom/touchtype_fluency/internal/TokenizerImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getInputMapperImpl()Lcom/touchtype_fluency/internal/InputMapperImpl;
.end method

.method private native getKeyPressModelImpl()Lcom/touchtype_fluency/internal/KeyPressModelImpl;
.end method

.method private native getLayoutFilterImpl()Lcom/touchtype_fluency/internal/LayoutFilterImpl;
.end method

.method private native getParameterSetImpl()Lcom/touchtype_fluency/internal/ParameterSetImpl;
.end method

.method private native getPunctuatorImpl()Lcom/touchtype_fluency/internal/PunctuatorImpl;
.end method

.method private native getSearchTypeInt()I
.end method

.method private native getSentenceSegmenterImpl()Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;
.end method

.method private native getTokenizerImpl()Lcom/touchtype_fluency/internal/TokenizerImpl;
.end method

.method public static native initIDs()V
.end method


# virtual methods
.method public addSequence(Lcom/touchtype_fluency/Sequence;)V
    .locals 1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->addSequence(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public native addSequence(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public addTermMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->addTermMapping(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public native addTermMapping(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public native batchLoad([Lcom/touchtype_fluency/ModelSetDescription;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native batchUnload([Lcom/touchtype_fluency/ModelSetDescription;)V
.end method

.method public native clearLayoutKeys()V
.end method

.method public native createStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;F)V
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->inputMapperImpl:Lcom/touchtype_fluency/internal/InputMapperImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->inputMapperImpl:Lcom/touchtype_fluency/internal/InputMapperImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/internal/InputMapperImpl;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->keyPressModelImpl:Lcom/touchtype_fluency/internal/KeyPressModelImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->keyPressModelImpl:Lcom/touchtype_fluency/internal/KeyPressModelImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/internal/KeyPressModelImpl;->dispose()V

    :cond_1
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->layoutFilterImpl:Lcom/touchtype_fluency/internal/LayoutFilterImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->layoutFilterImpl:Lcom/touchtype_fluency/internal/LayoutFilterImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/internal/LayoutFilterImpl;->dispose()V

    :cond_2
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->parameterSetImpl:Lcom/touchtype_fluency/internal/ParameterSetImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->parameterSetImpl:Lcom/touchtype_fluency/internal/ParameterSetImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/internal/ParameterSetImpl;->dispose()V

    :cond_3
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->tokenizerImpl:Lcom/touchtype_fluency/internal/TokenizerImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->tokenizerImpl:Lcom/touchtype_fluency/internal/TokenizerImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/internal/TokenizerImpl;->dispose()V

    :cond_4
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->sentenceSegmenterImpl:Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->sentenceSegmenterImpl:Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;->dispose()V

    :cond_5
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->punctuatorImpl:Lcom/touchtype_fluency/internal/PunctuatorImpl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->punctuatorImpl:Lcom/touchtype_fluency/internal/PunctuatorImpl;

    invoke-virtual {v0}, Lcom/touchtype_fluency/internal/PunctuatorImpl;->dispose()V

    :cond_6
    invoke-virtual {p0}, Lcom/touchtype_fluency/internal/PredictorImpl;->disposeInternal()V

    return-void
.end method

.method public native disposeInternal()V
.end method

.method public native enableModels(Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public native get(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;
.end method

.method public native getBlacklist()Ljava/lang/String;
.end method

.method public native getCorrections(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;
.end method

.method public declared-synchronized getInputMapper()Lcom/touchtype_fluency/InputMapper;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->inputMapperImpl:Lcom/touchtype_fluency/internal/InputMapperImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getInputMapperImpl()Lcom/touchtype_fluency/internal/InputMapperImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->inputMapperImpl:Lcom/touchtype_fluency/internal/InputMapperImpl;

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->inputMapperImpl:Lcom/touchtype_fluency/internal/InputMapperImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->keyPressModelImpl:Lcom/touchtype_fluency/internal/KeyPressModelImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getKeyPressModelImpl()Lcom/touchtype_fluency/internal/KeyPressModelImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->keyPressModelImpl:Lcom/touchtype_fluency/internal/KeyPressModelImpl;

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->keyPressModelImpl:Lcom/touchtype_fluency/internal/KeyPressModelImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutFilter()Lcom/touchtype_fluency/LayoutFilter;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->layoutFilterImpl:Lcom/touchtype_fluency/internal/LayoutFilterImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getLayoutFilterImpl()Lcom/touchtype_fluency/internal/LayoutFilterImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->layoutFilterImpl:Lcom/touchtype_fluency/internal/LayoutFilterImpl;

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->layoutFilterImpl:Lcom/touchtype_fluency/internal/LayoutFilterImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;
.end method

.method public getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;I)Ljava/lang/String;
.end method

.method public native getMostLikelyLanguage(Lcom/touchtype_fluency/Sequence;)Ljava/lang/String;
.end method

.method public getNgramCounts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/Term;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getNgramCounts(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public native getNgramCounts(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/TagSelector;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/Term;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public getNovelTerms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getNovelTerms(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public native getNovelTerms(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/TagSelector;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public declared-synchronized getParameterSet()Lcom/touchtype_fluency/ParameterSet;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->parameterSetImpl:Lcom/touchtype_fluency/internal/ParameterSetImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getParameterSetImpl()Lcom/touchtype_fluency/internal/ParameterSetImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->parameterSetImpl:Lcom/touchtype_fluency/internal/ParameterSetImpl;

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->parameterSetImpl:Lcom/touchtype_fluency/internal/ParameterSetImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;
.end method

.method public getPredictor()Lcom/touchtype_fluency/Predictor;
    .locals 0

    return-object p0
.end method

.method public declared-synchronized getPunctuator()Lcom/touchtype_fluency/Punctuator;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->punctuatorImpl:Lcom/touchtype_fluency/internal/PunctuatorImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getPunctuatorImpl()Lcom/touchtype_fluency/internal/PunctuatorImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->punctuatorImpl:Lcom/touchtype_fluency/internal/PunctuatorImpl;

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->punctuatorImpl:Lcom/touchtype_fluency/internal/PunctuatorImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchType()Lcom/touchtype_fluency/Predictor$SearchType;
    .locals 2

    invoke-static {}, Lcom/touchtype_fluency/Predictor$SearchType;->values()[Lcom/touchtype_fluency/Predictor$SearchType;

    move-result-object v0

    invoke-direct {p0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getSearchTypeInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public declared-synchronized getSentenceSegmenter()Lcom/touchtype_fluency/SentenceSegmenter;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->sentenceSegmenterImpl:Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getSentenceSegmenterImpl()Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->sentenceSegmenterImpl:Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->sentenceSegmenterImpl:Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getTags(Lcom/touchtype_fluency/TagSelector;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getTags(Lcom/touchtype_fluency/TagSelector;)[Ljava/lang/String;
.end method

.method public getTermCounts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getTermCounts(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public native getTermCounts(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/TagSelector;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public getTermsFromThreshold(J)[Lcom/touchtype_fluency/Term;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getTermCounts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-ltz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/touchtype_fluency/Term;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/touchtype_fluency/Term;

    return-object v0
.end method

.method public declared-synchronized getTokenizer()Lcom/touchtype_fluency/Tokenizer;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->tokenizerImpl:Lcom/touchtype_fluency/internal/TokenizerImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/touchtype_fluency/internal/PredictorImpl;->getTokenizerImpl()Lcom/touchtype_fluency/internal/TokenizerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->tokenizerImpl:Lcom/touchtype_fluency/internal/TokenizerImpl;

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/internal/PredictorImpl;->tokenizerImpl:Lcom/touchtype_fluency/internal/TokenizerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTrainer()Lcom/touchtype_fluency/Trainer;
    .locals 0

    return-object p0
.end method

.method public native learnFrom(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V
.end method

.method public native learnFrom(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V
.end method

.method public native learnFrom(Lcom/touchtype_fluency/TouchHistory;[Ljava/lang/String;)V
.end method

.method public learnMappings()V
    .locals 1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->learnMappings(Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public native learnMappings(Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public learnMappingsFrom(Lcom/touchtype_fluency/Prediction;)V
    .locals 1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V
    .locals 1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/touchtype_fluency/internal/PredictorImpl;->learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-void
.end method

.method public learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;)V
    .locals 1

    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->NORMAL:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-void
.end method

.method public native learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V
.end method

.method public native load(Lcom/touchtype_fluency/ModelSetDescription;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public queryTerm(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->enabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/touchtype_fluency/internal/PredictorImpl;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public native queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;Ljava/lang/String;)Z
.end method

.method public removeTerm(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public native removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public removeTerm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->removeTerm(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method public native removeTerm(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public native setBlacklist(Ljava/lang/String;)V
.end method

.method public native setIntentionalEvents(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native setLayoutKeys(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native setParameterLearning(Z)V
.end method

.method public native setSearchType(Lcom/touchtype_fluency/Predictor$SearchType;)V
.end method

.method public native trimMemory()V
.end method

.method public native unload(Lcom/touchtype_fluency/ModelSetDescription;)V
.end method

.method public native verify(Lcom/touchtype_fluency/ModelSetDescription;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    sget-object v1, Lcom/touchtype_fluency/Trainer$ModelFileVersion;->Latest_Version:Lcom/touchtype_fluency/Trainer$ModelFileVersion;

    invoke-virtual {p0, v0, v1}, Lcom/touchtype_fluency/internal/PredictorImpl;->write(Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V

    return-void
.end method

.method public write(Lcom/touchtype_fluency/TagSelector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/touchtype_fluency/Trainer$ModelFileVersion;->Latest_Version:Lcom/touchtype_fluency/Trainer$ModelFileVersion;

    invoke-virtual {p0, p1, v0}, Lcom/touchtype_fluency/internal/PredictorImpl;->write(Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V

    return-void
.end method

.method public native write(Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/touchtype_fluency/internal/PredictorImpl;->write(Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V

    return-void
.end method
