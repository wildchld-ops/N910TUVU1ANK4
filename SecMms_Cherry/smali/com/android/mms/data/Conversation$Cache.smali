.class Lcom/android/mms/data/Conversation$Cache;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;
    }
.end annotation


# static fields
.field private static final DUMP:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/Conversation.Cache"

.field private static sInstance:Lcom/android/mms/data/Conversation$Cache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/mms/data/Conversation$Cache;

    invoke-direct {v0}, Lcom/android/mms/data/Conversation$Cache;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    return-void
.end method

.method static conversationInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v7, v7, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChoseongSearch()Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    invoke-static {p0}, Lcom/android/mms/util/HangulUtils;->haveKoreanConsonants(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v6
.end method

.method static conversationInfoCursor(Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 21
    .param p0    # Ljava/lang/String;

    new-instance v14, Landroid/database/MatrixCursor;

    sget-object v15, Lcom/android/mms/data/Conversation;->THREAD_SEARCH_COLUMNS:[Ljava/lang/String;

    invoke-direct {v14, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v16, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v16

    :try_start_0
    sget-object v15, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v15, v15, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    :try_start_1
    new-instance v15, Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;

    invoke-direct {v15}, Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;-><init>()V

    invoke-static {v11, v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v6, 0x0

    :goto_1
    :try_start_2
    array-length v15, v11

    if-ge v6, v15, :cond_9

    aget-object v3, v11, v6

    check-cast v3, Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipientIds()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v12

    const-string v15, ", "

    invoke-virtual {v12, v15}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v17

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v15

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v15}, Lcom/android/mms/data/Conversation;->queryThreadExist(JLandroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v15, "Mms/Conversation.Cache"

    const-string v17, "conversationInfoCursor sorting error "

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_3
    array-length v15, v11

    if-ge v6, v15, :cond_0

    const-string v17, "Mms/Conversation.Cache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "objConversations time : "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v15, v11, v6

    check-cast v15, Lcom/android/mms/data/Conversation;

    invoke-virtual {v15}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_1
    move-exception v7

    const-string v15, "Mms/Conversation.Cache"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "conversationInfoCursor sorting error "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v15

    if-eqz v15, :cond_3

    sget-boolean v15, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v15, :cond_3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v15

    if-nez v15, :cond_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v10, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getValidPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getValidPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4
    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {v3}, Lcom/android/mms/data/Conversation$Cache;->createThreadInfoRow(Lcom/android/mms/data/Conversation;)[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->isPhoneNumberWithPlus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 p0, v10

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {v3}, Lcom/android/mms/data/Conversation$Cache;->createThreadInfoRow(Lcom/android/mms/data/Conversation;)[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChoseongSearch()Z

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/HangulUtils;->haveKoreanConsonants(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {v3}, Lcom/android/mms/data/Conversation$Cache;->createThreadInfoRow(Lcom/android/mms/data/Conversation;)[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v15

    if-eqz v15, :cond_1

    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/mms/data/Conversation;->getPinyinNameAndNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v15}, Lcom/android/mms/data/Conversation;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {v3}, Lcom/android/mms/data/Conversation$Cache;->createThreadInfoRow(Lcom/android/mms/data/Conversation;)[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v14
.end method

.method static conversationInfoCursorForFindo([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 21
    .param p0    # [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v12, p0

    new-instance v14, Landroid/database/MatrixCursor;

    sget-object v15, Lcom/android/mms/data/Conversation;->THREAD_SEARCH_COLUMNS:[Ljava/lang/String;

    invoke-direct {v14, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v16, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v16

    :try_start_0
    sget-object v15, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v15, v15, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    :try_start_1
    new-instance v15, Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;

    invoke-direct {v15}, Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;-><init>()V

    invoke-static {v11, v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    :try_start_2
    array-length v15, v11

    if-ge v9, v15, :cond_8

    aget-object v3, v11, v9

    check-cast v3, Lcom/android/mms/data/Conversation;

    if-nez v12, :cond_1

    invoke-static {v3}, Lcom/android/mms/data/Conversation$Cache;->createThreadInfoRow(Lcom/android/mms/data/Conversation;)[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v15, 0xc7

    if-ne v9, v15, :cond_7

    monitor-exit v16

    :goto_1
    return-object v14

    :catch_0
    move-exception v6

    const/4 v7, 0x0

    :goto_2
    array-length v15, v11

    if-ge v7, v15, :cond_0

    const-string v17, "Mms/Conversation.Cache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "objConversations time : "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v15, v11, v7

    check-cast v15, Lcom/android/mms/data/Conversation;

    invoke-virtual {v15}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_1
    move-exception v6

    const/4 v7, 0x0

    :goto_3
    array-length v15, v11

    if-ge v7, v15, :cond_0

    const-string v17, "Mms/Conversation.Cache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "objConversations time : "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v15, v11, v7

    check-cast v15, Lcom/android/mms/data/Conversation;

    invoke-virtual {v15}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    array-length v15, v12

    if-lez v15, :cond_5

    const/4 v7, 0x0

    :goto_4
    array-length v15, v12

    if-ge v7, v15, :cond_5

    rem-int/lit8 v15, v7, 0x2

    if-nez v15, :cond_2

    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    aget-object v17, v12, v7

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_2
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v15

    if-eqz v15, :cond_4

    aget-object v15, v12, v7

    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v17, "-"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aget-object v15, v12, v7

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChoseongSearch()Z

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    aget-object v15, v12, v7

    invoke-static {v15}, Lcom/android/mms/util/HangulUtils;->haveKoreanConsonants(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aget-object v15, v12, v7

    invoke-static {v15}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    array-length v15, v12

    div-int/lit8 v15, v15, 0x2

    add-int/lit8 v15, v15, 0x1

    if-ne v15, v4, :cond_6

    invoke-static {v3}, Lcom/android/mms/data/Conversation$Cache;->createThreadInfoRow(Lcom/android/mms/data/Conversation;)[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_6
    const/4 v4, 0x0

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_8
    monitor-exit v16

    goto/16 :goto_1

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15
.end method

.method static conversationInfoOneBubbleCursor(Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 25
    .param p0    # Ljava/lang/String;

    new-instance v23, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/mms/ui/SearchActivity;->SEARCH_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v24, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v24

    :try_start_0
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    :try_start_1
    new-instance v2, Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;

    invoke-direct {v2}, Lcom/android/mms/data/Conversation$Cache$SortLastestThreads;-><init>()V

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v15, 0x0

    :goto_1
    :try_start_2
    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v15, v2, :cond_8

    aget-object v12, v20, v15

    check-cast v12, Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipientIds()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v21

    const-string v2, ", "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/data/Conversation;->queryThreadExist(JLandroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :catch_0
    move-exception v14

    const-string v2, "Mms/Conversation.Cache"

    const-string v3, "conversationInfoCursor sorting error "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v15, v2, :cond_0

    const-string v3, "Mms/Conversation.Cache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "objConversations time : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v2, v20, v15

    check-cast v2, Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :catch_1
    move-exception v16

    const-string v2, "Mms/Conversation.Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conversationInfoCursor sorting error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v2, :cond_3

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/16 v19, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getValidPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getValidPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :cond_4
    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v12}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "thread"

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipientIds()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Lcom/android/mms/ui/SearchActivity;->makeSubTitleRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageUtils;->isPhoneNumberWithPlus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v12}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 p0, v19

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "thread"

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipientIds()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Lcom/android/mms/ui/SearchActivity;->makeSubTitleRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChoseongSearch()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/HangulUtils;->haveKoreanConsonants(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v12}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-static {v11}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "thread"

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipientIds()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Lcom/android/mms/ui/SearchActivity;->makeSubTitleRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v23
.end method

.method private static createThreadInfoRow(Lcom/android/mms/data/Conversation;)[Ljava/lang/Object;
    .locals 5
    .param p0    # Lcom/android/mms/data/Conversation;

    const/4 v4, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v4, v0, v1

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getDisplayRecipientIds()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method static dumpCache()V
    .locals 0

    return-void
.end method

.method static get(J)Lcom/android/mms/data/Conversation;
    .locals 3
    .param p0    # J

    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;
    .locals 7
    .param p0    # Lcom/android/mms/data/ContactList;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v4

    :try_start_0
    const-string v5, "Mms/Conversation.Cache"

    const-string v6, "get(ContactList)"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v5, v5, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    monitor-exit v4

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    sget-object v5, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v5, v5, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isChatClosed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_0
.end method

.method static get(Ljava/lang/String;)Lcom/android/mms/data/Conversation;
    .locals 7
    .param p0    # Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v4

    :try_start_0
    const-string v5, "Mms/Conversation.Cache"

    const-string v6, "get(sessionId)"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v5, v5, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    monitor-exit v4

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    sget-object v5, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v5, v5, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_0
.end method

.method static getInstance()Lcom/android/mms/data/Conversation$Cache;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-object v0
.end method

.method static keepOnly(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v2, "Mms/Conversation.Cache"

    const-string v3, "keepOnly()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static put(Lcom/android/mms/data/Conversation;)V
    .locals 7
    .param p0    # Lcom/android/mms/data/Conversation;

    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_0

    const-string v1, "Mms/Conversation.Cache"

    const-string v3, "invalid threadID ignore put conversation cache"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v1, v1, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache already contains "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " threadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/mms/data/Conversation;->mThreadId:J
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v1, v1, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static remove(J)V
    .locals 3
    .param p0    # J

    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v0, v0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
