.class Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RcsOperationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsOperationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/rcs/RcsOperationsProvider;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsOperationsProvider;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;->this$0:Lcom/android/mms/rcs/RcsOperationsProvider;

    const-string v0, "rcsoperation.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p2, p0, Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "mms/RcsOperationProvider"

    const-string v1, "DatabaseHelper/onCreate"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "create table rcs_msgs (_id integer primary key autoincrement, date long not null, body text, session_id text, thread_id long not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "mms/RcsOperationProvider"

    const-string v1, "DatabaseHelper/onCreate"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS rcs_msgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/RcsOperationsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
