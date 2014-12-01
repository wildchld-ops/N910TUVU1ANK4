.class public Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
.super Ljava/lang/Object;
.source "PhoneNumberLocatorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;
    }
.end annotation


# static fields
.field public static isAutoUpdating:Z

.field private static isLanguageChange:Z

.field public static sDownloadFailTime:I

.field public static tryTimes:I


# instance fields
.field private final EVENT_COPY_FINISH:I

.field private final EVENT_DOWNLOAD_FINISH:I

.field private final EVENT_FILE_EXCEPTION:I

.field private final EVENT_HTTP_EXCEPTION:I

.field private final EVENT_USER_CANCELED:I

.field private final EVENT_VERSION_SAME:I

.field private final READ_TIMEOUT_SEC:I

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private final extraSize:I

.field private isAutoUpdateType:Z

.field private mContext:Landroid/content/Context;

.field private mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isLanguageChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->extraSize:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_DOWNLOAD_FINISH:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_HTTP_EXCEPTION:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_FILE_EXCEPTION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_VERSION_SAME:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_COPY_FINISH:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->EVENT_USER_CANCELED:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->READ_TIMEOUT_SEC:I

    return-void
.end method

.method public static CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v8, 0x2000

    :try_start_2
    new-array v0, v8, [B

    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    move-object v6, v7

    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_3
    :goto_2
    throw v8

    :cond_4
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    if-eqz v7, :cond_6

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_3
    invoke-static {p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->changePermission(Ljava/lang/String;)V

    const/4 v8, 0x1

    return v8

    :catch_0
    move-exception v8

    if-eqz v7, :cond_6

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    goto :goto_3

    :catchall_1
    move-exception v8

    if-eqz v7, :cond_7

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_7
    :goto_4
    throw v8

    :catch_2
    move-exception v9

    if-eqz v6, :cond_3

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    :catch_3
    move-exception v9

    goto :goto_2

    :catchall_2
    move-exception v8

    if-eqz v6, :cond_8

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_8
    :goto_5
    throw v8

    :catch_4
    move-exception v8

    goto :goto_3

    :catch_5
    move-exception v9

    goto :goto_4

    :catch_6
    move-exception v9

    goto :goto_2

    :catch_7
    move-exception v9

    goto :goto_5

    :catchall_3
    move-exception v8

    goto :goto_1

    :catchall_4
    move-exception v8

    move-object v3, v4

    goto :goto_1
.end method

.method private DeleteFile(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isLanguageChange:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesBeforeUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesForSuccess()V

    return-void
.end method

.method private static changePermission(Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    return-void
.end method

.method public static isChinese(C)Z
    .locals 2
    .param p0    # C

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMessyCode(Ljava/lang/String;)Z
    .locals 4
    .param p0    # Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-char v0, v1, v2

    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isChinese(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "PhoneNumberLocatorDownloader"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "PhoneNumberLocatorDownloader"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private saveValuesBeforeUpdate()V
    .locals 4

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastUpdateTime"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getCurrentTime()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "updateSuccess"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    :goto_0
    const-string v1, "tryTimes"

    sget v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    sput v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    goto :goto_0
.end method

.method private saveValuesForSuccess()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "saveValuesForSuccess()"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bTryAgain10"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastUpdateTime"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getCurrentTime()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tryTimes"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "updateSuccess"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method getBufferUnicodeString([BII)Ljava/lang/String;
    .locals 9
    .param p1    # [B
    .param p2    # I
    .param p3    # I

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x80

    new-array v0, v7, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_0

    add-int v7, p2, v3

    aget-byte v7, p1, v7

    aput-byte v7, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_1

    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_2

    add-int/lit8 v7, p3, -0x1

    if-ge v3, v7, :cond_2

    aget-byte v7, v0, v3

    if-nez v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v0, v7

    if-nez v7, :cond_2

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    :cond_1
    new-array v5, v1, [B

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    aget-byte v7, v0, v3

    aput-byte v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBufferUnicodeString buffer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "End"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-16LE"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-object v6

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, ""

    goto :goto_4
.end method

.method public getCurrentTime()I
    .locals 3

    const-string v2, "getCurrentTime"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;
    .locals 9
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x20

    new-array v0, v5, [B

    new-instance v4, Lcom/android/phone/callsettings/VersionInfo;

    invoke-direct {v4}, Lcom/android/phone/callsettings/VersionInfo;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVersionInfo file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ois: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_0

    const-string v5, "displayVersion count error"

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    iget-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    const-string v6, "Korean"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    const-string v6, "Korean"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    :cond_1
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_2

    const-string v5, "lastUpdate count error"

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_3

    const-string v5, "dbSize count error"

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    iget-wide v5, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVersionInfo version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lastUpdate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dbSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "End"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v2, 0x0

    :cond_5
    :goto_1
    return-object v4

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v2, 0x0

    :cond_6
    :goto_3
    throw v5

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_2
.end method

.method public readDownloadFileInfo(Lcom/android/phone/callsettings/DownloadFileInfo;)V
    .locals 26
    .param p1    # Lcom/android/phone/callsettings/DownloadFileInfo;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v15, 0x0

    const/16 v3, 0x2000

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v5, v0, [B

    const/16 v23, 0x2000

    move/from16 v0, v23

    new-array v4, v0, [B

    :try_start_0
    new-instance v16, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "r"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    move-wide/from16 v23, v0

    cmp-long v23, v23, v19

    if-eqz v23, :cond_2

    const-string v23, "PhoneNumberLocatorDownloader"

    const-string v24, "file size not correct"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v16, :cond_c

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v15, 0x0

    goto :goto_0

    :catch_0
    move-exception v23

    move-object/from16 v15, v16

    goto :goto_0

    :cond_2
    const-wide/16 v23, 0x0

    cmp-long v23, v19, v23

    if-lez v23, :cond_3

    const-wide/16 v23, 0x0

    :try_start_3
    move-object/from16 v0, v16

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_3
    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v8

    if-gez v8, :cond_4

    const-string v23, "buffermark count error"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->startmarker:J

    new-instance v11, Ljava/util/zip/CRC32;

    invoke-direct {v11}, Ljava/util/zip/CRC32;-><init>()V

    const-wide/16 v23, 0xc

    sub-long v17, v19, v23

    :goto_1
    const-wide/16 v23, 0x0

    cmp-long v23, v17, v23

    if-lez v23, :cond_7

    const-wide/16 v23, 0x2000

    cmp-long v23, v17, v23

    if-ltz v23, :cond_5

    const/16 v23, 0x0

    const/16 v24, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v17, v17, v23

    invoke-virtual {v11, v4}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v14

    move-object/from16 v15, v16

    :goto_2
    :try_start_4
    const-string v23, "PhoneNumberLocatorDownloader"

    const-string v24, "read error when read marks and crc32 from file"

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v15, :cond_0

    :try_start_5
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_5
    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v23, v0

    :try_start_6
    move/from16 v0, v23

    new-array v4, v0, [B

    const/16 v23, 0x0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v8

    if-gez v8, :cond_6

    const-string v23, "bufferdata count error"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v11, v4}, Ljava/util/zip/CRC32;->update([B)V

    const-wide/16 v17, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {v11}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->crc32CalculateFromData:J

    const-wide/16 v23, 0x8

    cmp-long v23, v19, v23

    if-lez v23, :cond_8

    const-wide/16 v23, 0x8

    sub-long v23, v19, v23

    move-object/from16 v0, v16

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_8
    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v8

    if-gez v8, :cond_9

    const-string v23, "buffermark2 count error"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v9

    move-object/from16 v0, p1

    iput-wide v9, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->crc32ReadFromFile:J

    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v8

    if-gez v8, :cond_a

    const-string v23, "buffermark3 count error"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->endmarker:J

    const-string v23, "PhoneNumberLocatorDownloader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "start marker = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\ncrc32 = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\ncrc32 = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\nendmark = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v16, :cond_c

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v23

    move-object/from16 v15, v16

    goto/16 :goto_0

    :catchall_0
    move-exception v23

    :goto_3
    if-eqz v15, :cond_b

    :try_start_8
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v15, 0x0

    :cond_b
    :goto_4
    throw v23

    :catch_3
    move-exception v23

    goto/16 :goto_0

    :catch_4
    move-exception v24

    goto :goto_4

    :catchall_1
    move-exception v23

    move-object/from16 v15, v16

    goto :goto_3

    :catch_5
    move-exception v14

    goto/16 :goto_2

    :cond_c
    move-object/from16 v15, v16

    goto/16 :goto_0
.end method

.method public readUnsignedInt([B)J
    .locals 11
    .param p1    # [B

    const/4 v8, 0x0

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    const/4 v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x8

    shl-long v2, v8, v10

    const/4 v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v4, v8, v10

    const/4 v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long v6, v8, v10

    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public setCallback(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setTypeAuto(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    return-void
.end method

.method public startDownloadThread()V
    .locals 3

    const/4 v2, 0x1

    const-string v1, "startDownloadThread"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->startThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto :goto_0
.end method

.method public stopDownloadThread()V
    .locals 2

    const-string v0, "stopDownloadThread"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->stopThread()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;

    :cond_1
    return-void
.end method
