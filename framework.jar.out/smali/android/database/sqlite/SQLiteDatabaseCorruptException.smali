.class public Landroid/database/sqlite/SQLiteDatabaseCorruptException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDatabaseCorruptException.java"


# instance fields
.field private err_msg:[Ljava/lang/String;

.field private err_num:[I

.field private mCorrupt_code:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_num:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "database disk image is malformed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "file is encrypted or is not a database"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0xb
        0x1a
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x2

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    iput v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_num:[I

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "database disk image is malformed"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "file is encrypted or is not a database"

    aput-object v4, v2, v3

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_num:[I

    aget v2, v2, v0

    iput v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0xb
        0x1a
    .end array-data
.end method


# virtual methods
.method public getCorruptCode()I
    .locals 1

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    return v0
.end method
