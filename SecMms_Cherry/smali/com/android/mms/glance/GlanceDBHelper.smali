.class public Lcom/android/mms/glance/GlanceDBHelper;
.super Ljava/lang/Object;
.source "GlanceDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final COLUMN_INDEX_PRIORITY_SENDER_ADDRESS:I = 0x1

.field public static final COLUMN_INDEX_PRIORITY_SENDER_ID:I = 0x0

.field public static final COLUMN_INDEX_PRIORITY_SENDER_MSG_ID:I = 0x5

.field public static final COLUMN_INDEX_PRIORITY_SENDER_MSG_TYPE:I = 0x4

.field public static final COLUMN_INDEX_PRIORITY_SENDER_PRIORITY:I = 0x2

.field public static final COLUMN_INDEX_PRIORITY_SENDER_THREAD_ID:I = 0x3

.field public static final COLUMN_PRIORITY_SENDER_ADDRESS:Ljava/lang/String; = "address"

.field public static final COLUMN_PRIORITY_SENDER_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_PRIORITY_SENDER_MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final COLUMN_PRIORITY_SENDER_MSG_TYPE:Ljava/lang/String; = "msg_type"

.field public static final COLUMN_PRIORITY_SENDER_PRIORITY:Ljava/lang/String; = "pri"

.field public static final COLUMN_PRIORITY_SENDER_THREAD_ID:Ljava/lang/String; = "thread_id"

.field private static final DATABASE_EVENTS_TABLE:Ljava/lang/String; = "events"

.field private static final DATABASE_LOGS_TABLE:Ljava/lang/String; = "logs"

.field private static final DATABASE_NAME:Ljava/lang/String; = "message_glance.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final ET_ADD_TO_PRIORITY_SENDER:I = 0x2

.field public static final ET_ADD_TO_SPAM_NUMBER:I = 0x3

.field public static final ET_BIRTHDAY:I = 0x0

.field public static final ET_EVENT_REMINDER:I = 0x1

.field public static final ET_TOTAL:I = 0x4

.field private static final EVENTS_DATABASE_CREATE:Ljava/lang/String; = "create table events (_id integer primary key autoincrement, address text not null, deleted integer default 0, eventType integer default 0, eventDate integer default 0, body text, title text, eventLocation text, dtstart integer, dtend integer, eventTimezone integer, eventEndTimezone integer, events_id integer, allDay integer  );"

.field public static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_ADDRESS_INDEX:I = 0x1

.field public static final KEY_BODY:Ljava/lang/String; = "body"

.field public static final KEY_DELETED:Ljava/lang/String; = "deleted"

.field public static final KEY_EVENTDATE:Ljava/lang/String; = "eventDate"

.field public static final KEY_EVENTS_ID:Ljava/lang/String; = "events_id"

.field public static final KEY_EVENTTYPE:Ljava/lang/String; = "eventType"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_ID_INDEX:I = 0x0

.field public static final KEY_INCOMING:Ljava/lang/String; = "incoming"

.field public static final KEY_ISREQUESTASPS:Ljava/lang/String; = "isreuquestasps"

.field public static final KEY_ISREQUESTASSPAM:Ljava/lang/String; = "isreuquestasspam"

.field public static final KEY_OUTGOING:Ljava/lang/String; = "outgoing"

.field private static final LOGS_DATABASE_CREATE:Ljava/lang/String; = "create table logs (_id integer primary key autoincrement, address text not null, deleted integer default 0, incoming integer default 0, outgoing integer default 0, isreuquestasps integer default 0, isreuquestasspam integer default 0);"

.field public static final PRIORITY_PROJECTION:[Ljava/lang/String;

.field public static final PRIORITY_SENDER_ALL_COLUMNS:[Ljava/lang/String;

.field public static final PRIORITY_SENDER_COLUMNS:[Ljava/lang/String;

.field private static final TABLE_PRIORITY_SENDER:Ljava/lang/String; = "priority_sender"

.field private static final TAG:Ljava/lang/String; = "Mms/GlanceDBHelper"

.field public static final TYPE_GLANCE_EVENTS:I = 0x1

.field public static final TYPE_GLANCE_LOGS:I = 0x0

.field public static final TYPE_PRIORITY_SENDER:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGlanceDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mGlanceDbHelper:Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "pri"

    aput-object v1, v0, v5

    const-string v1, "thread_id"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "msg_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/glance/GlanceDBHelper;->PRIORITY_SENDER_ALL_COLUMNS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "pri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/glance/GlanceDBHelper;->PRIORITY_SENDER_COLUMNS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "pri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/glance/GlanceDBHelper;->PRIORITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/glance/GlanceDBHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getTableName(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "logs"

    goto :goto_0

    :pswitch_1
    const-string v0, "events"

    goto :goto_0

    :pswitch_2
    const-string v0, "priority_sender"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/glance/GlanceDBHelper;->mGlanceDbHelper:Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/glance/GlanceDBHelper;->mGlanceDbHelper:Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/String;
    .param p3    # I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/glance/GlanceDBHelper;->mGlanceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p3}, Lcom/android/mms/glance/GlanceDBHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Mms/GlanceDBHelper"

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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMaxPriority()J
    .locals 12

    const/4 v11, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/glance/GlanceDBHelper;->mGlanceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "priority_sender"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "MAX(pri)"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v9
.end method

.method public insert(Landroid/content/ContentValues;I)J
    .locals 4
    .param p1    # Landroid/content/ContentValues;
    .param p2    # I

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/glance/GlanceDBHelper;->mGlanceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2}, Lcom/android/mms/glance/GlanceDBHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/GlanceDBHelper"

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

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public open()Lcom/android/mms/glance/GlanceDBHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    new-instance v0, Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;

    iget-object v1, p0, Lcom/android/mms/glance/GlanceDBHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;-><init>(Lcom/android/mms/glance/GlanceDBHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/glance/GlanceDBHelper;->mGlanceDbHelper:Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;

    iget-object v0, p0, Lcom/android/mms/glance/GlanceDBHelper;->mGlanceDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/glance/GlanceDBHelper;->mGlanceDbHelper:Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/glance/GlanceDBHelper;->mGlanceDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-object p0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 10
    .param p1    # [Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/glance/GlanceDBHelper;->mGlanceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p5}, Lcom/android/mms/glance/GlanceDBHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    return-object v8

    :catch_0
    move-exception v9

    const-string v0, "Mms/GlanceDBHelper"

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 5
    .param p1    # Landroid/content/ContentValues;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;
    .param p4    # I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/glance/GlanceDBHelper;->mGlanceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p4}, Lcom/android/mms/glance/GlanceDBHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Mms/GlanceDBHelper"

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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
