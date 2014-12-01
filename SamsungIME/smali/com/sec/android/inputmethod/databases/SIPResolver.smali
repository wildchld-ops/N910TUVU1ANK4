.class public Lcom/sec/android/inputmethod/databases/SIPResolver;
.super Ljava/lang/Object;
.source "SIPResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;,
        Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;
    }
.end annotation


# instance fields
.field ProviderAuth:Ljava/lang/String;

.field context:Landroid/content/Context;

.field cr:Landroid/content/ContentResolver;

.field cursor:Landroid/database/Cursor;

.field hanja_db:Landroid/database/sqlite/SQLiteDatabase;

.field private mFrequencyUpdateTask:Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mLastHangle:Ljava/lang/String;

.field private mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

.field m_query:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.sec.android.inputmethod.databases.SipProvider"

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->ProviderAuth:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mLastHangle:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cr:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public FrequencyUpdateHanja(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mFrequencyUpdateTask:Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mFrequencyUpdateTask:Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mFrequencyUpdateTask:Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v1, Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;-><init>(Lcom/sec/android/inputmethod/databases/SIPResolver;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mFrequencyUpdateTask:Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    goto :goto_0
.end method

.method public FrequencyUpdateHanjaDB(Ljava/lang/String;)Ljava/lang/Void;
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->ProviderAuth:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "usedNum"

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hanja like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cr:Landroid/content/ContentResolver;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    :cond_0
    const-string v0, "usedNum"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cr:Landroid/content/ContentResolver;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v4
.end method

.method public SearchHanja(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;-><init>(Lcom/sec/android/inputmethod/databases/SIPResolver;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    goto :goto_0
.end method

.method public SearchHanjaDB(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mLastHangle:Ljava/lang/String;

    :cond_0
    iget-object v9, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->ProviderAuth:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "hanja"

    aput-object v0, v2, v10

    const-string v0, "mean"

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mLastHangle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "usedNum DESC"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->m_query:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cr:Landroid/content/ContentResolver;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->m_query:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    move-object v8, v6

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->m_query:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHanjaCandidate()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->m_query:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->m_query:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
