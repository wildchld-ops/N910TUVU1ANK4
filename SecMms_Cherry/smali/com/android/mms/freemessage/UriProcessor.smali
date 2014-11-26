.class public Lcom/android/mms/freemessage/UriProcessor;
.super Ljava/lang/Object;
.source "UriProcessor.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1    # Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/freemessage/UriProcessor;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private decodeOnTheBasisOfSemicolonSeparatedLastPathSegment(Landroid/net/Uri;)[Landroid/net/Uri;
    .locals 13
    .param p1    # Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, ":"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, ":"

    invoke-static {v6, v11}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const/16 v12, 0x2f

    invoke-static {v2, v12}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v12

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    array-length v11, v7

    new-array v10, v11, [Landroid/net/Uri;

    const/4 v3, 0x0

    move-object v0, v7

    array-length v8, v0

    const/4 v5, 0x0

    move v4, v3

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v9, v0, v5

    add-int/lit8 v3, v4, 0x1

    invoke-static {v1, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/mms/freemessage/UriProcessor;->check(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    aput-object v11, v10, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :cond_1
    return-object v10
.end method


# virtual methods
.method protected check(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1    # Landroid/net/Uri;

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    iget-object v3, p0, Lcom/android/mms/freemessage/UriProcessor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, p1

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected getUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 2
    .param p1    # Ljava/lang/Object;

    instance-of v1, p1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/mms/freemessage/UriProcessor;->check(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/freemessage/UriProcessor;->check(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public process(Landroid/content/Intent;)[Landroid/net/Uri;
    .locals 17
    .param p1    # Landroid/content/Intent;

    if-nez p1, :cond_1

    const/4 v15, 0x0

    :cond_0
    :goto_0
    return-object v15

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_2

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v15, v0, [Landroid/net/Uri;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/mms/freemessage/UriProcessor;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/mms/freemessage/UriProcessor;->decodeOnTheBasisOfSemicolonSeparatedLastPathSegment(Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object v15

    if-nez v15, :cond_0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v15, v0, [Landroid/net/Uri;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    goto :goto_0

    :cond_5
    instance-of v0, v6, [Ljava/lang/Object;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    check-cast v6, [Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, [Ljava/lang/Object;

    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v15, v0, [Landroid/net/Uri;

    const/4 v10, 0x0

    move-object v1, v3

    array-length v14, v1

    const/4 v12, 0x0

    move v11, v10

    :goto_1
    if-ge v12, v14, :cond_0

    aget-object v2, v1, v12

    add-int/lit8 v10, v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/freemessage/UriProcessor;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v16

    aput-object v16, v15, v11

    add-int/lit8 v12, v12, 0x1

    move v11, v10

    goto :goto_1

    :cond_6
    instance-of v0, v6, Ljava/util/AbstractCollection;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object v4, v6

    check-cast v4, Ljava/util/AbstractCollection;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v15, v0, [Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/freemessage/UriProcessor;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v16

    if-eqz v16, :cond_7

    add-int/lit8 v11, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/freemessage/UriProcessor;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v16

    aput-object v16, v15, v10

    move v10, v11

    goto :goto_2

    :cond_8
    if-lez v10, :cond_4

    goto/16 :goto_0

    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0
.end method
