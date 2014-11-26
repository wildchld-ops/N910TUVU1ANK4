.class public Lcom/touchtype/samsung/supportlibrary/initialinput/InitialInput;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/initialinput/InitialInput;->a:[C

    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/initialinput/InitialInput;->b:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3142s
        0x3143s
        0x3148s
        0x3149s
        0x3137s
        0x3138s
        0x3131s
        0x3132s
        0x3145s
        0x3146s
        0x3141s
        0x3134s
        0x314es
        0x3139s
        0x3147s
        0x314as
        0x314bs
        0x314ds
        0x314cs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x314fs
        0x3153s
        0x3157s
        0x315cs
        0x3161s
        0x3163s
        0x3151s
        0x3155s
        0x315bs
        0x3160s
        0x3150s
        0x3152s
        0x3154s
        0x3156s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/touchtype/samsung/supportlibrary/initialinput/InitialInput;->a:[C

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-char v4, v2, v1

    if-ne v4, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(C)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/touchtype/samsung/supportlibrary/initialinput/InitialInput;->b:[C

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-char v4, v2, v1

    if-ne v4, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isKoreanInitialOnly(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p1, :cond_0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/touchtype/samsung/supportlibrary/initialinput/InitialInput;->a(C)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static promoteInitialExpandedPredictions(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;Z)Lcom/touchtype_fluency/Predictions;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v8, :cond_0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "encoding:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_d

    move-object v7, v2

    move v2, v5

    :goto_2
    if-nez v2, :cond_0

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v2, 0x0

    move v15, v2

    move v2, v4

    move v4, v15

    :goto_3
    if-ge v4, v13, :cond_a

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/touchtype/samsung/supportlibrary/initialinput/InitialInput;->b(C)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v5}, Lcom/touchtype/samsung/supportlibrary/initialinput/InitialInput;->a(C)Z

    move-result v14

    if-eqz v14, :cond_5

    if-ge v2, v8, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v5, v14, :cond_4

    const/4 v2, 0x0

    :goto_4
    if-eqz v12, :cond_6

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const-string v7, "verbatim"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "wildcards"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const/4 v2, 0x1

    move-object v7, v4

    goto :goto_2

    :cond_3
    const-string v7, "input:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_b

    move-object v3, v4

    :goto_5
    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_0

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    invoke-static {v10}, Lcom/touchtype/samsung/supportlibrary/initialinput/a;->a(Ljava/util/ArrayList;)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    return-object v1

    :cond_a
    move v2, v3

    goto :goto_4

    :cond_b
    move-object v3, v2

    move-object v7, v4

    move v2, v5

    goto/16 :goto_2

    :cond_c
    move-object v2, v3

    move-object v3, v4

    goto :goto_5

    :cond_d
    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto :goto_5

    :cond_e
    move v2, v5

    move-object v7, v4

    goto/16 :goto_2
.end method
