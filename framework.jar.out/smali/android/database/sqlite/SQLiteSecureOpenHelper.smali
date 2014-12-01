.class public abstract Landroid/database/sqlite/SQLiteSecureOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteSecureOpenHelper.java"


# static fields
.field private static final DEBUG_STRICT_READONLY:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEnableWriteAheadLogging:Z

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/database/sqlite/SQLiteSecureOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6

    new-instance v5, Landroid/database/DefaultSecureDatabaseErrorHandler;

    invoke-direct {v5}, Landroid/database/DefaultSecureDatabaseErrorHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteSecureOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iput p4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    iput-object p5, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-void
.end method

.method public static final changeDBPassword(Landroid/database/sqlite/SQLiteDatabase;[B)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->changeDBPassword([B)I

    move-result v0

    return v0
.end method

.method public static final convert2PlainDB(Ljava/io/File;[BLjava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->convert2PlainDB(Ljava/io/File;[BLjava/io/File;)V

    return-void
.end method

.method public static final convert2SecureDB(Ljava/io/File;Ljava/io/File;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->convert2SecureDB(Ljava/io/File;Ljava/io/File;[B)V

    return-void
.end method

.method private getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "getDatabase called recursively"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->reopenReadWrite()V

    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    iget v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Landroid/database/sqlite/SQLiteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t upgrade read-only database from version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    iput-boolean v5, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_6

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v5, :cond_6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v4

    :cond_7
    :try_start_1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    if-nez v4, :cond_8

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_8
    :try_start_2
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mEnableWriteAheadLogging:Z

    if-eqz v4, :cond_9

    const/16 v4, 0x8

    :goto_2
    iget-object v8, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_9
    move v4, v5

    goto :goto_2

    :catch_0
    move-exception v1

    if-eqz p1, :cond_a

    :try_start_3
    throw v1

    :cond_a
    sget-object v4, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for writing (will try read-only):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v2, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_e

    :try_start_4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_3
    iget v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_c
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opened "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in read-only mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-boolean v5, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :cond_e
    :try_start_6
    iget v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    if-le v3, v4, :cond_f

    iget v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v3, v4}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_f
    :try_start_8
    iget v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v3, v4}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3
.end method

.method private getDatabaseLocked(ZZ[B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 11

    const/16 v3, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    sget-object v6, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    const-string v8, "getDatabaseLocked(b,b,pwd)..."

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1

    iput-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-boolean v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "getDatabase called recursively"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-eqz p1, :cond_2

    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez p2, :cond_6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->reopenReadWrite()V

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    iget v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    if-eq v5, v6, :cond_f

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Landroid/database/sqlite/SQLiteException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t upgrade read-only database from version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    iput-boolean v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_5

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v7, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    sget-object v7, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    const-string v8, "...getDatabaseLocked(b,b,pwd)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v6

    :cond_6
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->reopenReadWrite()V

    sget-object v6, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TODO: Opening  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in read-write mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    if-nez v6, :cond_9

    if-nez p2, :cond_8

    const/4 v6, 0x0

    invoke-static {v6}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    sget-object v6, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creating "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in secure mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-static {v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->createSecureDatabase(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[B)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    if-nez p2, :cond_b

    :try_start_2
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    iget-boolean v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mEnableWriteAheadLogging:Z

    if-eqz v9, :cond_a

    :goto_2
    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v10, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-virtual {v6, v8, v3, v9, v10}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    move v3, v7

    goto :goto_2

    :cond_b
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mEnableWriteAheadLogging:Z

    if-eqz v6, :cond_d

    :goto_3
    sget-object v6, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in secure mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_c

    sget-object v6, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    const-string v8, "DB Directory does not exist"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_c
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/high16 v8, 0x10000000

    or-int/2addr v8, v3

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v4, v6, v8, v9, p3}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    move v3, v7

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_3
    throw v2

    :cond_e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_12

    :try_start_4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_4
    iget v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Opened "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in read-only mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v6, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    const-string v8, "...getDatabaseLocked(b,b,pwd)"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-boolean v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_11

    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v6, :cond_11

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_11
    sget-object v6, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    const-string v7, "...getDatabaseLocked(b,b,pwd)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    :try_start_6
    iget v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    if-le v5, v6, :cond_13

    iget v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v5, v6}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v6

    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_13
    :try_start_8
    iget v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v5, v6}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getReadableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    const-string v1, "getReadableDatabase(pwd)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->getDatabaseLocked(ZZ[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWritableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    const-string v1, "getWritableDatabase(pwd)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->getDatabaseLocked(ZZ[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t downgrade database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mEnableWriteAheadLogging:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mEnableWriteAheadLogging:Z

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
