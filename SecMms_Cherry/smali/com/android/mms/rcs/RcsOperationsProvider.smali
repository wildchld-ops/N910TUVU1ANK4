.class public Lcom/android/mms/rcs/RcsOperationsProvider;
.super Ljava/lang/Object;
.source "RcsOperationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE_RCSMSGS:Ljava/lang/String; = "create table rcs_msgs (_id integer primary key autoincrement, date long not null, body text, session_id text, thread_id long not null);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "rcsoperation.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final NOT_TRIED:I = 0x0

.field public static final RCS_BODY:Ljava/lang/String; = "body"

.field public static final RCS_CHATID:Ljava/lang/String; = "session_id"

.field public static final RCS_DATE:Ljava/lang/String; = "date"

.field public static final RCS_THREADID:Ljava/lang/String; = "thread_id"

.field private static final TABLE_RCSMSGS:Ljava/lang/String; = "rcs_msgs"

.field private static final TAG:Ljava/lang/String; = "mms/RcsOperationProvider"

.field public static final TRIED_ALREADY:I = 0x1


# instance fields
.field private final mRcsOperationsDBContext:Landroid/content/Context;

.field private mRcsOperationsDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mRcsOperationsDbHelper:Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDBContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDbHelper:Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDbHelper:Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "mms/RcsOperationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete() - ERROR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/ContentValues;

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const-string v1, "mms/RcsOperationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert() - ERROR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open()Lcom/android/mms/rcs/RcsOperationsProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    new-instance v0, Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDBContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;-><init>(Lcom/android/mms/rcs/RcsOperationsProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDbHelper:Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDbHelper:Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-object p0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    return-object v8

    :catch_0
    move-exception v9

    const-string v0, "mms/RcsOperationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query() - ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/ContentValues;
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/rcs/RcsOperationsProvider;->mRcsOperationsDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "mms/RcsOperationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update() - ERROR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
