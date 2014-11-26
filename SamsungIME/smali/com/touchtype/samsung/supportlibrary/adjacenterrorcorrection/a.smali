.class final Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;
.super Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/Point;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;-><init>()V

    iput-object p1, p0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->b:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->b:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    :goto_1
    :try_start_4
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The keypress model file was not found on the path: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    move-object v11, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    :goto_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->c:Ljava/util/HashMap;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "prior-mean"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v0, Lcom/touchtype_fluency/Point;

    invoke-direct {v0}, Lcom/touchtype_fluency/Point;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_2

    new-instance v0, Lcom/touchtype_fluency/Point;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L

    div-double/2addr v6, v8

    double-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L

    div-double/2addr v7, v9

    double-to-int v1, v7

    int-to-float v1, v1

    invoke-direct {v0, v6, v1}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    move-object v1, v0

    :goto_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "characters"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_3

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_1
    move-exception v3

    move-object v3, v2

    move-object v2, v0

    :goto_7
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The keypress model file could not be read on the path: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_4

    :cond_2
    new-instance v0, Lcom/touchtype_fluency/Point;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    double-to-int v1, v7

    int-to-float v1, v1

    invoke-direct {v0, v6, v1}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    move-object v1, v0

    goto :goto_5

    :cond_3
    iget-object v5, p0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->c:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    :cond_5
    return-void

    :catchall_2
    move-exception v3

    move-object v11, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v11

    goto/16 :goto_2

    :catchall_3
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto/16 :goto_2

    :catchall_4
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    :catch_2
    move-exception v2

    move-object v2, v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_7

    :catch_5
    move-exception v3

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_1

    :catch_6
    move-exception v2

    move-object v2, v3

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_1

    :catch_7
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final chooseMostLikelyCharacter(Lcom/touchtype_fluency/Predictor;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;)Ljava/lang/String;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->chooseMostLikelyCharacter(Lcom/touchtype_fluency/Predictor;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final chooseMostLikelyCharacter(Lcom/touchtype_fluency/Predictor;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;I)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->a:Ljava/lang/String;

    const-string v3, "predictor should not be null for chooseMostLikelyCharacter"

    invoke-static {v1, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->a:Ljava/lang/String;

    const-string v3, "context should not be null for chooseMostLikelyCharacter"

    invoke-static {v1, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    const/4 v1, 0x1

    :goto_2
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->a:Ljava/lang/String;

    const-string v3, "currentWord should not be null for chooseMostLikelyCharacter"

    invoke-static {v1, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    const/4 v1, 0x1

    :goto_3
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->a:Ljava/lang/String;

    const-string v3, "input should not be null for chooseMostLikelyCharacter"

    invoke-static {v1, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    const v8, 0x7f7fffff

    const v7, 0x7f7fffff

    const v6, 0x7f7fffff

    const v5, 0x7f7fffff

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->c:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v9, v6

    move v10, v7

    move-object v6, v3

    move v7, v8

    move v8, v5

    move-object v3, v4

    move-object v5, v2

    move-object v4, v1

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Point;

    invoke-virtual {v2}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v11

    invoke-virtual/range {p4 .. p4}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {v2}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v12

    invoke-virtual/range {p4 .. p4}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v15

    sub-float/2addr v12, v15

    mul-float/2addr v11, v11

    mul-float/2addr v12, v12

    add-float/2addr v12, v11

    invoke-virtual {v2}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v11

    invoke-virtual/range {p4 .. p4}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v15

    cmpl-float v11, v11, v15

    if-ltz v11, :cond_f

    cmpg-float v11, v12, v7

    if-gez v11, :cond_f

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v7, v3

    move v11, v12

    :goto_5
    invoke-virtual {v2}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v3

    invoke-virtual/range {p4 .. p4}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v15

    cmpg-float v3, v3, v15

    if-gtz v3, :cond_0

    cmpg-float v3, v12, v10

    if-gez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v6, v3

    move v10, v12

    :cond_0
    invoke-virtual {v2}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v3

    invoke-virtual/range {p4 .. p4}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v15

    cmpl-float v3, v3, v15

    if-ltz v3, :cond_e

    cmpg-float v3, v12, v9

    if-gez v3, :cond_e

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move v5, v12

    :goto_6
    invoke-virtual {v2}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v2

    invoke-virtual/range {p4 .. p4}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v9

    cmpg-float v2, v2, v9

    if-gtz v2, :cond_d

    cmpg-float v2, v12, v8

    if-gez v2, :cond_d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move v2, v12

    :goto_7
    move-object v4, v1

    move v8, v2

    move v9, v5

    move-object v5, v3

    move-object v3, v7

    move v7, v11

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_5
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    if-gez p5, :cond_6

    invoke-interface/range {p1 .. p4}, Lcom/touchtype_fluency/Predictor;->getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-interface {v13, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_9
    if-eqz v1, :cond_8

    :goto_a
    return-object v1

    :cond_6
    invoke-interface/range {p1 .. p5}, Lcom/touchtype_fluency/Predictor;->getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    goto :goto_9

    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/KeyPressModel;->closestKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    :cond_9
    array-length v2, v1

    move/from16 v0, p5

    if-lt v0, v2, :cond_b

    array-length v2, v1

    rem-int p5, p5, v2

    :cond_a
    :goto_b
    aget-object v1, v1, p5

    goto :goto_a

    :cond_b
    if-gez p5, :cond_a

    array-length v2, v1

    if-lez v2, :cond_c

    const/16 p5, 0x0

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    goto :goto_a

    :cond_d
    move-object v1, v4

    move v2, v8

    goto :goto_7

    :cond_e
    move-object v3, v5

    move v5, v9

    goto/16 :goto_6

    :cond_f
    move v11, v7

    move-object v7, v3

    goto/16 :goto_5
.end method
