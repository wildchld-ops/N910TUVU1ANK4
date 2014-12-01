.class public Lcom/android/launcher2/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherProvider$SqlArguments;,
        Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings"

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

.field static final CSC_FILE_MAINMENU:Ljava/lang/String; = "/system/csc/default_application_order.xml"

.field static final CSC_FILE_WORKSPACE:Ljava/lang/String; = "/system/csc/default_workspace.xml"

.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0xe

.field private static final DEBUGGABLE:Z

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field public static final PREFS_HIDDENADD_HOMEFOLDERIDS:Ljava/lang/String; = "HomeFolderIds"

.field public static final PREFS_PREFESTIVAL:Ljava/lang/String; = "PrefsPreFestival"

.field public static final PREFS_PRESECRET:Ljava/lang/String; = "PrefsPreSecret"

.field static final TABLE_APPORDER:Ljava/lang/String; = "appOrder"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field static final TABLE_PUBLIC_PREFERENCES:Ljava/lang/String; = "prefs"

.field private static final TAG:Ljava/lang/String; = "LauncherProvider"

.field private static mApp:Lcom/android/launcher2/LauncherApplication;

.field private static mBasePathForRestore:Ljava/lang/String;

.field private static mIsRestoreHomeScreen:Z


# instance fields
.field protected mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    const-string v0, "content://com.sec.android.app.launcher.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$100()Lcom/android/launcher2/LauncherApplication;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/launcher2/LauncherProvider;->getBitmapFromBackupPath(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v2, :cond_2

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v0, :cond_0

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getBitmapFromBackupPath(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public LoadAttReady2GoDB(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addHomeFolderItems(JLcom/android/launcher2/HomeFolderItem;)V
    .locals 11

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    :try_start_0
    const-string v4, "INSERT into favorites (_id, itemType, container, screen, cellX, cellY, spanX, spanY, title, intent, iconType, secret, festival) values(?,?,?,?,?,?,?,?,?,?,?,?,?)"

    const-string v6, "INSERT into favorites (_id, itemType, container, screen, cellX, cellY, spanX, spanY, title, intent, iconType, secret, festival) values(?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p3}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {p3, v2}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    iget-wide v8, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v8, :cond_0

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v8, :cond_2

    :cond_0
    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :goto_1
    const/4 v6, 0x3

    invoke-virtual {v5, v6, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v6, 0x4

    iget v8, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    int-to-long v8, v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v6, 0x5

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v6, 0x6

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v6, 0x7

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v6, 0x8

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v6, 0x9

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/16 v6, 0xa

    invoke-virtual {v0}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/16 v6, 0xb

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v8, 0xc

    iget-boolean v6, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v6, :cond_4

    move v6, v7

    :goto_2
    int-to-long v9, v6

    invoke-virtual {v5, v8, v9, v10}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v6, 0xd

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8

    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v2

    invoke-static {v4, v1, v5, v6, v7}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    array-length v4, p2

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return v1
.end method

.method public generateNewHomeId()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewMenuId()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v0

    return-wide v0
.end method

.method getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    return-object v0
.end method

.method public getScreenCount()I
    .locals 6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    int-to-long v2, v4

    :try_start_0
    const-string v4, "SELECT value FROM prefs WHERE key=\'numScreens\'"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    long-to-int v4, v2

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
.end method

.method public getScreenIndex()I
    .locals 7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, -0x1

    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v5

    int-to-long v3, v5

    :try_start_0
    const-string v5, "SELECT value  FROM prefs WHERE key=\'defaultScreen\'"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    long-to-int v5, v3

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v5, "LauncherProvider"

    const-string v6, "Could not get screen index from db"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method public getShortcutInfo(Lcom/android/launcher2/HomeItem;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 9

    new-instance v5, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v5}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT title, icon  FROM favorites WHERE _id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :goto_0
    return-object v5

    :catch_0
    move-exception v2

    :try_start_1
    const-string v6, "LauncherProvider"

    const-string v7, "Could not get icon from the database"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    throw v6
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v2, v2}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.android.cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.android.cursor.item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v5, v1, v6, v4, p2}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    goto :goto_0
.end method

.method public loadFrontApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFrontAppOrder()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public moveAppOrderModify(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "UPDATE appOrder set screen=? where _id=?"

    const-string v5, "UPDATE appOrder set screen=? where _id=?"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    const/4 v5, 0x1

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v5, 0x2

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public moveFavorites(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$FavoritePos;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "UPDATE favorites set container=?,screen=?,cellX=?,cellY=?,secret=?,festival=? where _id=?"

    const-string v5, "UPDATE favorites set container=?,screen=?,cellX=?,cellY=?,secret=?,festival=? where _id=?"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    const/4 v5, 0x1

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v5, 0x2

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v5, 0x3

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellX:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v5, 0x4

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellY:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v5, 0x5

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->secret:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v5, 0x6

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->festival:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v5, 0x7

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v5, 0x0

    new-instance v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object v2, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object v9
.end method

.method public restoreHomeScreenDB(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    sput-object p2, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    # setter for: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v2, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$502(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "favorites"

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    const-string v3, "favorites"

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$600(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    const-string v3, "favorites"

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$600(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    :cond_0
    return v1
.end method

.method protected sendNotify(Landroid/net/Uri;)V
    .locals 3

    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method switchToDynamicMode(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->switchToDynamicIfNecessary(I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return v1
.end method

.method public updateAppItems(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_0

    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder insert folder: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v4, :cond_1

    const-string v10, "INSERT into appOrder (_id,screen,cell,title,secret,color) values(?,?,?,?,?,?)"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    :cond_1
    const/4 v10, 0x1

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v4, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v10, 0x2

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v11, v11

    invoke-virtual {v4, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v10, 0x3

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v11, v11

    invoke-virtual {v4, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v10, :cond_9

    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    :goto_1
    const/4 v12, 0x5

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v10, :cond_a

    const-wide/16 v10, 0x1

    :goto_2
    invoke-virtual {v4, v12, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v11, 0x6

    sget-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v10, :cond_b

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    :goto_3
    int-to-long v12, v10

    invoke-virtual {v4, v11, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_2

    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder insert folder: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10

    :cond_9
    const/4 v10, 0x4

    :try_start_1
    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-wide/16 v10, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v10, -0x1

    goto/16 :goto_3

    :pswitch_1
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_c

    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update folder: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-nez v8, :cond_d

    const-string v10, "UPDATE appOrder set screen=?,cell=?,title=?,secret=? where _id=?"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    :cond_d
    const/4 v10, 0x1

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v11, v11

    invoke-virtual {v8, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v10, 0x2

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v11, v11

    invoke-virtual {v8, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v10, :cond_f

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    :goto_4
    const/4 v12, 0x4

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v10, :cond_10

    const-wide/16 v10, 0x1

    :goto_5
    invoke-virtual {v8, v12, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v10, 0x5

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v8, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_e

    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update folder: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    :cond_f
    const/4 v10, 0x3

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_4

    :cond_10
    const-wide/16 v10, 0x0

    goto :goto_5

    :pswitch_2
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_11

    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update title: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-nez v9, :cond_12

    const-string v10, "UPDATE appOrder set title=? where _id=?"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    :cond_12
    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v10, :cond_13

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    :goto_6
    const/4 v10, 0x2

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    :cond_13
    const/4 v10, 0x1

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_6

    :pswitch_3
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_14

    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder create app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    if-nez v3, :cond_15

    const-string v10, "INSERT into appOrder (_id,folderId,screen,cell,hidden,title,componentName,secret) values(?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    :cond_15
    const/4 v10, 0x1

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v3, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v10, 0x2

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v3, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v10, 0x3

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v11, v11

    invoke-virtual {v3, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v10, 0x4

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v11, v11

    invoke-virtual {v3, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v12, 0x5

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    if-eqz v10, :cond_17

    const-wide/16 v10, 0x1

    :goto_7
    invoke-virtual {v3, v12, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v10, :cond_18

    const/4 v10, 0x6

    invoke-virtual {v3, v10}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    :goto_8
    const/4 v10, 0x7

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/16 v12, 0x8

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v10, :cond_19

    const-wide/16 v10, 0x1

    :goto_9
    invoke-virtual {v3, v12, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_16

    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder create app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    :cond_17
    const-wide/16 v10, 0x0

    goto/16 :goto_7

    :cond_18
    const/4 v10, 0x6

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_19
    const-wide/16 v10, 0x0

    goto :goto_9

    :pswitch_4
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_1a

    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-nez v6, :cond_1b

    const-string v10, "UPDATE appOrder set folderId=?,screen=?,cell=?,hidden=?,title=?,secret=? where _id=?"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    :cond_1b
    const/4 v10, 0x1

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v6, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v10, 0x2

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v11, v11

    invoke-virtual {v6, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v10, 0x3

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v11, v11

    invoke-virtual {v6, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v12, 0x4

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    if-eqz v10, :cond_1d

    const-wide/16 v10, 0x1

    :goto_a
    invoke-virtual {v6, v12, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v10, :cond_1e

    const/4 v10, 0x5

    invoke-virtual {v6, v10}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    :goto_b
    const/4 v12, 0x6

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v10, :cond_1f

    const-wide/16 v10, 0x1

    :goto_c
    invoke-virtual {v6, v12, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v10, 0x7

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v6, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_1c

    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    :cond_1d
    const-wide/16 v10, 0x0

    goto/16 :goto_a

    :cond_1e
    const/4 v10, 0x5

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto/16 :goto_b

    :cond_1f
    const-wide/16 v10, 0x0

    goto/16 :goto_c

    :pswitch_5
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_20

    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder delete item: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    if-nez v1, :cond_21

    const-string v10, "DELETE from appOrder where _id=?"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    :cond_21
    const/4 v10, 0x1

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v1, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    :pswitch_6
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_22

    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update color: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-nez v7, :cond_23

    const-string v10, "UPDATE appOrder set color=? where _id=?"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    :cond_23
    const/4 v11, 0x1

    sget-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v10, :cond_24

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    :goto_d
    int-to-long v12, v10

    invoke-virtual {v7, v11, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v10, 0x2

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v7, v10, v11, v12}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    :cond_24
    const/4 v10, -0x1

    goto :goto_d

    :cond_25
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_26
    if-eqz v8, :cond_27

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_27
    if-eqz v9, :cond_28

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_28
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_29
    if-eqz v6, :cond_2a

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_2a
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_2b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public updateScreenCount()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "UPDATE prefs SET value=? WHERE key=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v2, 0x2

    const-string v3, "numScreens"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_0
    return-void
.end method

.method public updateScreenIdFavorites(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$FavoritePos;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "UPDATE favorites set screen=? where _id=?"

    const-string v5, "UPDATE favorites set screen=? where _id=?"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    const/4 v5, 0x1

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v5, 0x2

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public updateScreenIndex()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "UPDATE prefs SET value=? WHERE key=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v2, 0x2

    const-string v3, "defaultScreen"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_0
    return-void
.end method
