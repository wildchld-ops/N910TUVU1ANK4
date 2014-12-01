.class Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GlanceDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/glance/GlanceDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/glance/GlanceDBHelper;


# direct methods
.method constructor <init>(Lcom/android/mms/glance/GlanceDBHelper;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;->this$0:Lcom/android/mms/glance/GlanceDBHelper;

    const-string v0, "message_glance.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p2, p0, Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "Mms/GlanceDBHelper"

    const-string v1, "DatabaseHelper/onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "create table logs (_id integer primary key autoincrement, address text not null, deleted integer default 0, incoming integer default 0, outgoing integer default 0, isreuquestasps integer default 0, isreuquestasspam integer default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table events (_id integer primary key autoincrement, address text not null, deleted integer default 0, eventType integer default 0, eventDate integer default 0, body text, title text, eventLocation text, dtstart integer, dtend integer, eventTimezone integer, eventEndTimezone integer, events_id integer, allDay integer  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE priority_sender (_id INTEGER PRIMARY KEY AUTOINCREMENT,address TEXT,pri INTEGER,thread_id INTEGER,msg_type INTEGER,msg_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "Mms/GlanceDBHelper"

    const-string v1, "DatabaseHelper/onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS logs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS priority_sender"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/glance/GlanceDBHelper$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
