.class public Lcom/android/phone/PhotoRingDB;
.super Ljava/lang/Object;
.source "PhotoRingDB.java"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;

.field private mOpenHelper:Lcom/android/phone/callsettings/LGTPhotoRingDB;

.field private phraseProjectionMap:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhotoRingDB;->mOpenHelper:Lcom/android/phone/callsettings/LGTPhotoRingDB;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "phrase"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content_path"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thumb_path"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/PhotoRingDB;->phraseProjectionMap:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhotoRingDB;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/phone/callsettings/LGTPhotoRingDB;

    iget-object v1, p0, Lcom/android/phone/PhotoRingDB;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/LGTPhotoRingDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhotoRingDB;->mOpenHelper:Lcom/android/phone/callsettings/LGTPhotoRingDB;

    iget-object v0, p0, Lcom/android/phone/PhotoRingDB;->mOpenHelper:Lcom/android/phone/callsettings/LGTPhotoRingDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public CheckPathReferencedOther(JLjava/lang/String;)Z
    .locals 11
    .param p1    # J
    .param p3    # Ljava/lang/String;

    const-string v3, "content_path=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    iget-object v0, p0, Lcom/android/phone/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phrase_table"

    iget-object v2, p0, Lcom/android/phone/PhotoRingDB;->phraseProjectionMap:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v0, v8, p1

    if-eqz v0, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CheckPhraseExist(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 12
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v11, 0x0

    const-wide/16 v9, -0x1

    if-nez p1, :cond_1

    const-string v3, "phrase is null AND data_type=?"

    :goto_0
    if-nez p2, :cond_3

    if-nez p1, :cond_2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND content_path is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v0, p0, Lcom/android/phone/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phrase_table"

    iget-object v2, p0, Lcom/android/phone/PhotoRingDB;->phraseProjectionMap:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-wide v9

    :cond_1
    const-string v3, "phrase=? AND data_type=?"

    goto :goto_0

    :cond_2
    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v11

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    aput-object p2, v4, v1

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND content_path=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v11

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    aput-object p2, v4, v2

    goto :goto_3
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhotoRingDB;->mOpenHelper:Lcom/android/phone/callsettings/LGTPhotoRingDB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingDB;->mOpenHelper:Lcom/android/phone/callsettings/LGTPhotoRingDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhotoRingDB;->mOpenHelper:Lcom/android/phone/callsettings/LGTPhotoRingDB;

    return-void
.end method

.method public deletePhrase(Ljava/lang/String;)I
    .locals 5
    .param p1    # Ljava/lang/String;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    iget-object v3, p0, Lcom/android/phone/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "phrase_table"

    invoke-virtual {v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPhraseById(J)Landroid/database/Cursor;
    .locals 9
    .param p1    # J

    const/4 v5, 0x0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/android/phone/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phrase_table"

    iget-object v2, p0, Lcom/android/phone/PhotoRingDB;->phraseProjectionMap:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    return-object v8
.end method

.method public getPhrasesByType(I)Landroid/database/Cursor;
    .locals 9
    .param p1    # I

    const/4 v5, 0x0

    const-string v3, "data_type=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v7, "_id DESC"

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/android/phone/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phrase_table"

    iget-object v2, p0, Lcom/android/phone/PhotoRingDB;->phraseProjectionMap:[Ljava/lang/String;

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    return-object v8
.end method

.method public insertPhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "phrase"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "thumb_path"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "phrase_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public updatePhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "phrase"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "content_path"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "thumb_path"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "data_type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    iget-object v4, p0, Lcom/android/phone/PhotoRingDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "phrase_table"

    invoke-virtual {v4, v5, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
