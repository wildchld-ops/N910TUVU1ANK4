.class public final Lcom/visionobjects/textwidget/d/a/d;
.super Ljava/lang/Object;
.source "SegmentFactory.java"


# direct methods
.method public static a(Lcom/visionobjects/stylus/core/Segment;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/stylus/core/Segment;

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/d/a/d;->b(Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/d/a/d;->c(Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public static a(Lcom/visionobjects/stylus/core/Segment;I)Lcom/visionobjects/stylus/core/Segment;
    .locals 13

    new-instance v6, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {v6}, Lcom/visionobjects/stylus/core/Segment;-><init>()V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->baseline()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/visionobjects/stylus/core/Segment;->setBaseline(F)V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->baselineSkew()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/visionobjects/stylus/core/Segment;->setBaselineSkew(F)V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->midlineShift()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/visionobjects/stylus/core/Segment;->setMidlineShift(F)V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v7

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->candidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Candidate;

    invoke-virtual {v0, v7}, Lcom/visionobjects/stylus/core/Candidate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    new-instance v2, Lcom/visionobjects/stylus/core/Candidate;

    invoke-direct {v2}, Lcom/visionobjects/stylus/core/Candidate;-><init>()V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->type()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/visionobjects/stylus/core/Candidate;->setType(I)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->flags()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/visionobjects/stylus/core/Candidate;->setFlags(I)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->normalizedRecognitionScore()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/visionobjects/stylus/core/Candidate;->setNormalizedRecognitionScore(F)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->resemblanceScore()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/visionobjects/stylus/core/Candidate;->setResemblanceScore(F)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/d/a/d;->b(Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    const-string v1, "\u0e4d\u0e32"

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/d/a/d;->a(Lcom/visionobjects/stylus/core/Segment;Ljava/lang/String;)Lcom/visionobjects/stylus/core/Segment;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/visionobjects/stylus/core/Candidate;->append(Lcom/visionobjects/stylus/core/Segment;)V

    move-object v1, v0

    goto :goto_1

    :cond_0
    move-object v1, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v2}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/Candidate;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_8

    new-instance v9, Lcom/visionobjects/stylus/core/Candidate;

    invoke-direct {v9}, Lcom/visionobjects/stylus/core/Candidate;-><init>()V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->type()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/visionobjects/stylus/core/Candidate;->setType(I)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->flags()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/visionobjects/stylus/core/Candidate;->setFlags(I)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->normalizedRecognitionScore()F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/visionobjects/stylus/core/Candidate;->setNormalizedRecognitionScore(F)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->resemblanceScore()F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/visionobjects/stylus/core/Candidate;->setResemblanceScore(F)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move-object v4, v3

    move-object v3, v2

    move v2, v0

    :goto_3
    add-int v0, v2, v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    add-int v0, v2, v1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    const/4 v5, 0x0

    invoke-static {v0, v4}, Lcom/visionobjects/textwidget/d/a/d;->c(Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v4}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/visionobjects/textwidget/d/a/d;->a(Lcom/visionobjects/stylus/core/Segment;Ljava/lang/String;)Lcom/visionobjects/stylus/core/Segment;

    move-result-object v5

    add-int/lit8 v3, v1, 0x1

    const/4 v1, 0x1

    move v12, v1

    move-object v1, v5

    move v5, v12

    :goto_4
    if-eqz v5, :cond_5

    add-int v0, v2, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_3

    invoke-virtual {v9, v1}, Lcom/visionobjects/stylus/core/Candidate;->append(Lcom/visionobjects/stylus/core/Segment;)V

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object v4, v0

    move-object v12, v1

    move v1, v3

    move-object v3, v12

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v9, v4}, Lcom/visionobjects/stylus/core/Candidate;->append(Lcom/visionobjects/stylus/core/Segment;)V

    :cond_6
    add-int v4, v2, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_4

    invoke-virtual {v9, v0}, Lcom/visionobjects/stylus/core/Candidate;->append(Lcom/visionobjects/stylus/core/Segment;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v6, v9}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/Candidate;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v6, v0}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/Candidate;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v6, v0}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/Candidate;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->selectedIndex()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/visionobjects/stylus/core/Segment;->select(I)Z

    return-object v6

    :cond_b
    move v12, v1

    move-object v1, v3

    move v3, v12

    goto :goto_4
.end method

.method public static a(Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)Lcom/visionobjects/stylus/core/Segment;
    .locals 2

    new-instance v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {v0, p0}, Lcom/visionobjects/stylus/core/Segment;-><init>(Lcom/visionobjects/stylus/core/Segment;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/visionobjects/stylus/core/Segment;->grafted(Lcom/visionobjects/stylus/core/Segment;I)Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/visionobjects/stylus/core/Segment;Ljava/lang/String;)Lcom/visionobjects/stylus/core/Segment;
    .locals 3

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    new-instance v1, Lcom/visionobjects/stylus/core/Candidate;

    invoke-direct {v1}, Lcom/visionobjects/stylus/core/Candidate;-><init>()V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/Candidate;->setType(I)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->flags()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/Candidate;->setFlags(I)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->normalizedRecognitionScore()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/Candidate;->setNormalizedRecognitionScore(F)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->resemblanceScore()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/visionobjects/stylus/core/Candidate;->setResemblanceScore(F)V

    invoke-virtual {v1, p1}, Lcom/visionobjects/stylus/core/Candidate;->setLabel(Ljava/lang/String;)V

    new-instance v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {v0}, Lcom/visionobjects/stylus/core/Segment;-><init>()V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->baseline()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/visionobjects/stylus/core/Segment;->setBaseline(F)V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->baselineSkew()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/visionobjects/stylus/core/Segment;->setBaselineSkew(F)V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->midlineShift()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/visionobjects/stylus/core/Segment;->setMidlineShift(F)V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/Candidate;)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectLastCandidate()Z

    return-object v0
.end method

.method private static b(Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/visionobjects/textwidget/g/a;->b(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xe33

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/visionobjects/textwidget/g/a;->d(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/visionobjects/textwidget/g/a;->c(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v0, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
