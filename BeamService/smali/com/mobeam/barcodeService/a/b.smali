.class public Lcom/mobeam/barcodeService/a/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mobeam/barcodeService/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobeam/barcodeService/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/mobeam/barcodeService/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/mobeam/barcodeService/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mobeam/barcodeService/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/mobeam/barcodeService/a/b;
    .locals 2

    new-instance v0, Lcom/mobeam/barcodeService/a/b;

    const-string v1, "mobeam.db"

    invoke-direct {v0, p0, v1}, Lcom/mobeam/barcodeService/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(J)I
    .locals 5

    const-string v0, "beaming_record"

    const-string v1, "beaming_timestamp <= ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/mobeam/barcodeService/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/ContentValues;)J
    .locals 3

    iget-object v0, p0, Lcom/mobeam/barcodeService/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "beaming_record"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Landroid/database/Cursor;
    .locals 5

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "beaming_record"

    invoke-direct {p0, v0, v4, v4, v4}, Lcom/mobeam/barcodeService/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "beaming_record"

    const-string v1, "app_package = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const-string v3, "beaming_timestamp ASC"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mobeam/barcodeService/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const-string v0, "applications"

    const-string v1, "app_package = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mobeam/barcodeService/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4

    const-string v0, "applications"

    const-string v1, "app_package = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/mobeam/barcodeService/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4

    const-string v0, "applications"

    const-string v1, "app_package = ? AND app_userid = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {p0, v0, p3, v1, v2}, Lcom/mobeam/barcodeService/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobeam/barcodeService/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "applications"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object v0, Lcom/mobeam/barcodeService/a/b;->a:Ljava/lang/String;

    sget-object v0, Lcom/mobeam/barcodeService/a/b;->a:Ljava/lang/String;

    const-string v0, "create table applications(_id integer primary key autoincrement,app_package text not null,app_userid text not null,license_expiry integer,license_status integer,grace_expiry integer,app_auth blob);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table beaming_record(_id integer primary key autoincrement,app_package text not null,app_id text not null,barcode_type text,campaign_id text,product text,beaming_pattern text not null,beaming_duration integer,beaming_timestamp integer,beaming_location text,beaming_status integer,beaming_success_factor integer,actual_beaming_duration integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    sget-object v0, Lcom/mobeam/barcodeService/a/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpgrade: v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x5

    if-ne v0, p3, :cond_0

    sget-object v0, Lcom/mobeam/barcodeService/a/b;->a:Ljava/lang/String;

    const-string v0, "DROP TABLE IF EXISTS applications"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table applications(_id integer primary key autoincrement,app_package text not null,app_userid text not null,license_expiry integer,license_status integer,grace_expiry integer,app_auth blob);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x7

    if-ne v0, p3, :cond_1

    sget-object v0, Lcom/mobeam/barcodeService/a/b;->a:Ljava/lang/String;

    const-string v0, "DROP TABLE IF EXISTS beaming_record"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table beaming_record(_id integer primary key autoincrement,app_package text not null,app_id text not null,barcode_type text,campaign_id text,product text,beaming_pattern text not null,beaming_duration integer,beaming_timestamp integer,beaming_location text,beaming_status integer,beaming_success_factor integer,actual_beaming_duration integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/mobeam/barcodeService/a/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mobeam/barcodeService/a/b;->a:Ljava/lang/String;

    goto :goto_1
.end method
