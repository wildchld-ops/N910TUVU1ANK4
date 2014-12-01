.class public Landroid/os/storage/sensitive/DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBOpenHelper.java"


# static fields
.field public static final COLUMN_CLIENT:Ljava/lang/String; = "client_id"

.field public static final COLUMN_EDEK:Ljava/lang/String; = "dek"

.field public static final COLUMN_FLAGS:Ljava/lang/String; = "flags"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_UUID:Ljava/lang/String; = "uuid"

.field private static final CREATE_CLIENTS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS clients(_id  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL UNIQUE);"

.field private static final CREATE_DATA:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS data(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, uuid TEXT NOT NULL UNIQUE, flags INTEGER NOT NULL, client_id INTEGER NOT NULL REFERENCES clients (_id), dek BLOB NOT NULL);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "ls_data.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_CLIENTS:Ljava/lang/String; = "clients"

.field public static final TABLE_DATA:Ljava/lang/String; = "data"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ls_data.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS clients(_id  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL UNIQUE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS data(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, uuid TEXT NOT NULL UNIQUE, flags INTEGER NOT NULL, client_id INTEGER NOT NULL REFERENCES clients (_id), dek BLOB NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
