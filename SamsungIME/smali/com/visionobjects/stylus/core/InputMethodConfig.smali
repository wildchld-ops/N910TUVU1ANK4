.class public Lcom/visionobjects/stylus/core/InputMethodConfig;
.super Ljava/lang/Object;
.source "InputMethodConfig.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InputMethodConfig__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InputMethodConfig;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InputMethodConfig;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InputMethodConfig__SWIG_1(JLcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InputMethodConfig;-><init>(JZ)V

    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    goto :goto_0
.end method


# virtual methods
.method public addLexicon(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/visionobjects/stylus/core/ListString;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListString;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListString;->native_add(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListString;->getCPtr(Lcom/visionobjects/stylus/core/ListString;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_addLexicon(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/ListString;)V

    return-void
.end method

.method public addLexiconEntry(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_addLexiconEntry(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    return-void
.end method

.method public addResource(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_addResource(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    return-void
.end method

.method public addResourceDir(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_addResourceDir(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    return-void
.end method

.method public autoIso()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_autoIso(JLcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public candidateListSize(I)J
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_candidateListSize(JLcom/visionobjects/stylus/core/InputMethodConfig;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public certificate()Lcom/visionobjects/stylus/core/VectorChar;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/VectorChar;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_certificate(JLcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VectorChar;-><init>(JZ)V

    return-object v0
.end method

.method public coordinateResolution()F
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_coordinateResolution(JLcom/visionobjects/stylus/core/InputMethodConfig;)F

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InputMethodConfig(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InputMethodConfig;->delete()V

    return-void
.end method

.method public freezeTimeout()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_freezeTimeout(JLcom/visionobjects/stylus/core/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public isPrefixRecognition()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_isPrefixRecognition(JLcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public locale()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_locale(JLcom/visionobjects/stylus/core/InputMethodConfig;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public localeTextDirection()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_localeTextDirection(JLcom/visionobjects/stylus/core/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public missingResources()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_missingResources(JLcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public nativeEquals(Lcom/visionobjects/stylus/core/InputMethodConfig;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_nativeEquals(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/InputMethodConfig;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_notEquals(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public productID()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_productID(JLcom/visionobjects/stylus/core/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public resources()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_resources(JLcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public searchResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_searchResource(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public setAutoIso(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setAutoIso(JLcom/visionobjects/stylus/core/InputMethodConfig;Z)V

    return-void
.end method

.method public setCandidateListSize(IJ)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setCandidateListSize(JLcom/visionobjects/stylus/core/InputMethodConfig;IJ)V

    return-void
.end method

.method public setCertificate([B)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setCertificate(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    return-void
.end method

.method public setCoordinateResolution(F)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setCoordinateResolution(JLcom/visionobjects/stylus/core/InputMethodConfig;F)V

    return-void
.end method

.method public setFreezeTimeout(I)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setFreezeTimeout(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setLocale(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    return-void
.end method

.method public setPrefixRecognition(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setPrefixRecognition(JLcom/visionobjects/stylus/core/InputMethodConfig;Z)V

    return-void
.end method

.method public setProductID(I)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setProductID(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V

    return-void
.end method

.method public setSpeedQualityCompromise(I)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setSpeedQualityCompromise(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V

    return-void
.end method

.method public setStrictAlienCharacters(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setStrictAlienCharacters(JLcom/visionobjects/stylus/core/InputMethodConfig;Z)V

    return-void
.end method

.method public setUnfreezeWordCount(I)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setUnfreezeWordCount(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V

    return-void
.end method

.method public setUnfreezeWordsAccrossLines(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setUnfreezeWordsAccrossLines(JLcom/visionobjects/stylus/core/InputMethodConfig;Z)V

    return-void
.end method

.method public speedQualityCompromise()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_speedQualityCompromise(JLcom/visionobjects/stylus/core/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public strictAlienCharacters()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_strictAlienCharacters(JLcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public supplementaryLexicon()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_supplementaryLexicon(JLcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public unfreezeWordCount()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_unfreezeWordCount(JLcom/visionobjects/stylus/core/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public unfreezeWordsAccrossLines()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_unfreezeWordsAccrossLines(JLcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public updateLexicon(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/visionobjects/stylus/core/ListString;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListString;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListString;->native_add(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListString;->getCPtr(Lcom/visionobjects/stylus/core/ListString;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_updateLexicon(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/ListString;)V

    return-void
.end method
