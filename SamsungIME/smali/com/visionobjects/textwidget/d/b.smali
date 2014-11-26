.class public final Lcom/visionobjects/textwidget/d/b;
.super Ljava/lang/Object;
.source "RecognizerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/d/b$b;,
        Lcom/visionobjects/textwidget/d/b$a;,
        Lcom/visionobjects/textwidget/d/b$d;,
        Lcom/visionobjects/textwidget/d/b$e;,
        Lcom/visionobjects/textwidget/d/b$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/visionobjects/stylus/core/InputMethod;

.field private c:Lcom/visionobjects/stylus/core/InputMethodListener;

.field private d:Z

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[B

.field private h:F

.field private i:Ljava/lang/String;

.field private j:F

.field private k:Lcom/visionobjects/stylus/core/InkField;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Runnable;

.field private n:Z

.field private o:Z

.field private p:Lcom/visionobjects/textwidget/d/b$a;

.field private q:Landroid/graphics/RectF;

.field private r:Lcom/visionobjects/textwidget/d/b$c;

.field private s:Lcom/visionobjects/textwidget/d/b$e;

.field private t:Lcom/visionobjects/textwidget/d/b$d;


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/visionobjects/textwidget/d/b;->j:F

    iput p2, p0, Lcom/visionobjects/textwidget/d/b;->h:F

    const-string v0, ""

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->l()V

    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/d/b;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/visionobjects/textwidget/d/b;->b(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V

    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/d/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/d/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkField;->topLevelSegment()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v2

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-direct {v0, v1}, Lcom/visionobjects/stylus/core/InkField;-><init>(Lcom/visionobjects/stylus/core/InkField;)V

    new-instance v1, Lcom/visionobjects/stylus/core/InkTag;

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InkField;->setTag(Lcom/visionobjects/stylus/core/InkTag;)V

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b;->q:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->j:F

    iget-object v2, p0, Lcom/visionobjects/textwidget/d/b;->q:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2}, Lcom/visionobjects/textwidget/d/a/a;->a(Lcom/visionobjects/stylus/core/InkField;FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkField;->pendingStrokes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InkField;->setPendingStrokes(Ljava/util/List;)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v1, v0}, Lcom/visionobjects/stylus/core/InputMethod;->setField(Lcom/visionobjects/stylus/core/InkField;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->r:Lcom/visionobjects/textwidget/d/b$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->r:Lcom/visionobjects/textwidget/d/b$c;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/d/b$c;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    :cond_2
    return-void

    :cond_3
    const-string v0, "RecognizerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error configuring handwriting recognition engine ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/stylus/core/InputMethod;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    return-object v0
.end method

.method private b(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/visionobjects/textwidget/d/b;->e:[Ljava/lang/String;

    :cond_0
    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/visionobjects/textwidget/d/b;->f:[Ljava/lang/String;

    :cond_1
    if-eqz p5, :cond_2

    iput-object p5, p0, Lcom/visionobjects/textwidget/d/b;->g:[B

    :cond_2
    invoke-static {}, Lcom/visionobjects/textwidget/d/a;->a()Lcom/visionobjects/textwidget/d/a;

    move-result-object v3

    iget-object v4, p0, Lcom/visionobjects/textwidget/d/b;->e:[Ljava/lang/String;

    if-eqz v4, :cond_5

    array-length v5, v4

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_5

    aget-object v6, v4, v0

    if-eqz v6, :cond_4

    const-string v7, "ak-iso"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v1

    :goto_1
    iget-boolean v4, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    if-eq v0, v4, :cond_6

    iput-boolean v1, p0, Lcom/visionobjects/textwidget/d/b;->n:Z

    :goto_2
    invoke-virtual {v3, p1, v0}, Lcom/visionobjects/textwidget/d/a;->a(IZ)Lcom/visionobjects/stylus/core/InputMethod;

    move-result-object v4

    iput-object v4, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    iget-object v4, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->l()V

    invoke-direct {p0, v2}, Lcom/visionobjects/textwidget/d/b;->a(Z)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iput-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->n:Z

    goto :goto_2

    :cond_7
    iput p1, p0, Lcom/visionobjects/textwidget/d/b;->a:I

    iput-object p2, p0, Lcom/visionobjects/textwidget/d/b;->i:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/visionobjects/textwidget/d/b;->j:F

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/d/b;->a()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/visionobjects/textwidget/d/a/a;->a(FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    :cond_8
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    :cond_9
    new-instance v0, Lcom/visionobjects/textwidget/d/b$b;

    iget-boolean v4, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    invoke-direct {v0, p0, v4}, Lcom/visionobjects/textwidget/d/b$b;-><init>(Lcom/visionobjects/textwidget/d/b;Z)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->c:Lcom/visionobjects/stylus/core/InputMethodListener;

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->c:Lcom/visionobjects/stylus/core/InputMethodListener;

    iget-boolean v4, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    invoke-virtual {v3, p1, v0, v4}, Lcom/visionobjects/textwidget/d/a;->a(ILcom/visionobjects/stylus/core/InputMethodListener;Z)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    const/16 v3, 0xfff

    invoke-virtual {v0, v3}, Lcom/visionobjects/stylus/core/InputMethod;->disableGestures(I)V

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x4

    :goto_4
    iget-object v3, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v3, v0}, Lcom/visionobjects/stylus/core/InputMethod;->enableGestures(I)V

    new-instance v5, Lcom/visionobjects/stylus/core/InputMethodConfig;

    invoke-direct {v5}, Lcom/visionobjects/stylus/core/InputMethodConfig;-><init>()V

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v2

    const-string v0, "zh"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ja"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_a
    const/4 v0, 0x5

    :goto_5
    const-string v3, "zh"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "ja"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "hi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_b
    const/16 v3, 0xa28

    invoke-static {v3, p6}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_6
    const-string v6, "zh"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "ja"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "ko"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "hi"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_c
    const/4 v4, 0x3

    :goto_7
    const v6, 0x2dde304

    invoke-virtual {v5, v6}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setProductID(I)V

    invoke-virtual {v5, p2}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setLocale(Ljava/lang/String;)V

    const/16 v6, 0xdd

    invoke-virtual {v5, v6}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setSpeedQualityCompromise(I)V

    const-wide/16 v6, 0x5

    invoke-virtual {v5, v1, v6, v7}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setCandidateListSize(IJ)V

    const/4 v6, 0x2

    int-to-long v7, v0

    invoke-virtual {v5, v6, v7, v8}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setCandidateListSize(IJ)V

    invoke-virtual {v5, v3}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setFreezeTimeout(I)V

    invoke-virtual {v5, v4}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setUnfreezeWordCount(I)V

    iget v0, p0, Lcom/visionobjects/textwidget/d/b;->h:F

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setCoordinateResolution(F)V

    invoke-virtual {v5, v1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setStrictAlienCharacters(Z)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->e:[Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/visionobjects/textwidget/d/b;->e:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_8
    if-ge v0, v4, :cond_12

    aget-object v6, v3, v0

    if-eqz v6, :cond_d

    invoke-virtual {v5, v6}, Lcom/visionobjects/stylus/core/InputMethodConfig;->addResource(Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    const/16 v0, 0x5fc

    goto/16 :goto_4

    :cond_f
    move v0, v1

    goto :goto_5

    :cond_10
    const/16 v3, 0x28a

    invoke-static {v3, p6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_6

    :cond_11
    move v4, v1

    goto :goto_7

    :cond_12
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->f:[Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/visionobjects/textwidget/d/b;->f:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_9
    if-ge v0, v4, :cond_14

    aget-object v6, v3, v0

    if-eqz v6, :cond_13

    invoke-virtual {v5, v6}, Lcom/visionobjects/stylus/core/InputMethodConfig;->addLexiconEntry(Ljava/lang/String;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_14
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->g:[B

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->g:[B

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setCertificate([B)V

    :cond_15
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->config()Lcom/visionobjects/stylus/core/InputMethodConfig;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_a
    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->failed()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->l()V

    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/d/b;->a(Z)V

    goto/16 :goto_3

    :cond_16
    move v0, v2

    goto :goto_a

    :cond_17
    new-instance v0, Lcom/visionobjects/textwidget/d/b$a;

    invoke-direct {v0, p0, v2}, Lcom/visionobjects/textwidget/d/b$a;-><init>(Lcom/visionobjects/textwidget/d/b;B)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    new-array v1, v1, [Lcom/visionobjects/stylus/core/InputMethodConfig;

    aput-object v5, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3
.end method

.method static synthetic c(Lcom/visionobjects/textwidget/d/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$e;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->s:Lcom/visionobjects/textwidget/d/b$e;

    return-object v0
.end method

.method static synthetic e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->t:Lcom/visionobjects/textwidget/d/b$d;

    return-object v0
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->n:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/visionobjects/textwidget/d/b;->j:F

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/d/b;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/d/a/a;->a(FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->n:Z

    iput-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->r:Lcom/visionobjects/textwidget/d/b$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->r:Lcom/visionobjects/textwidget/d/b$c;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/d/b$c;->d()V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->field()Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    goto :goto_0
.end method

.method private m()Z
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->q:Landroid/graphics/RectF;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 7

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->a:I

    iget-object v2, p0, Lcom/visionobjects/textwidget/d/b;->i:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/visionobjects/textwidget/d/b;->a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V

    :cond_1
    return-void
.end method

.method public final a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V
    .locals 8

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/visionobjects/textwidget/d/c;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/visionobjects/textwidget/d/c;-><init>(Lcom/visionobjects/textwidget/d/b;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p6}, Lcom/visionobjects/textwidget/d/b;->b(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->q:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    :goto_0
    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->j:F

    invoke-static {v0, v1, p1}, Lcom/visionobjects/textwidget/d/a/a;->a(Lcom/visionobjects/stylus/core/InkField;FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/d/b;->a(Lcom/visionobjects/stylus/core/InkField;)V

    :cond_1
    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b;->q:Landroid/graphics/RectF;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->field()Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0, p1}, Lcom/visionobjects/stylus/core/InputMethod;->setField(Lcom/visionobjects/stylus/core/InkField;)V

    goto :goto_0
.end method

.method public final a(Lcom/visionobjects/textwidget/d/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b;->r:Lcom/visionobjects/textwidget/d/b$c;

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/d/b$d;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b;->t:Lcom/visionobjects/textwidget/d/b$d;

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/d/b$e;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b;->s:Lcom/visionobjects/textwidget/d/b$e;

    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/b;)V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    :cond_0
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/b;->a()Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/b;->a()Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InputMethod;->addStroke(Lcom/visionobjects/stylus/core/InkItem;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->errorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v0, :cond_0

    const-string v0, "StylusCore library is not loaded"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->errorString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 3

    invoke-static {}, Lcom/visionobjects/textwidget/d/a;->a()Lcom/visionobjects/textwidget/d/a;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->a:I

    iget-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/d/a;->b(IZ)Lcom/visionobjects/stylus/core/InputMethodListener;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b;->c:Lcom/visionobjects/stylus/core/InputMethodListener;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/d/b$a;->a()V

    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->c:Lcom/visionobjects/stylus/core/InputMethodListener;

    invoke-static {}, Lcom/visionobjects/textwidget/d/a;->a()Lcom/visionobjects/textwidget/d/a;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->a:I

    iget-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/d/a;->c(IZ)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->penDown()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->penUp()V

    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->field()Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/a/e;->c(Lcom/visionobjects/stylus/core/InkField;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/visionobjects/stylus/core/InputMethodConfig;
    .locals 3

    invoke-static {}, Lcom/visionobjects/textwidget/d/a;->a()Lcom/visionobjects/textwidget/d/a;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->a:I

    iget-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/d/a;->a(IZ)Lcom/visionobjects/stylus/core/InputMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->config()Lcom/visionobjects/stylus/core/InputMethodConfig;

    move-result-object v0

    return-object v0
.end method
