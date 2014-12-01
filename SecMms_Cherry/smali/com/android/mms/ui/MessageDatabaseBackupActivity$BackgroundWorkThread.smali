.class Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
.super Ljava/lang/Thread;
.source "MessageDatabaseBackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageDatabaseBackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundWorkThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEncPathName:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPathName:Ljava/lang/String;

.field private mWorkMode:I

.field private mZipPathName:Ljava/lang/String;

.field private mszKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private CopyDir(Ljava/io/File;)V
    .locals 6

    if-nez p1, :cond_0

    const-string v3, "MessageDatabaseBackupActivity"

    const-string v4, "copyDir::START::ERROR::fileIn is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MessageDatabaseBackupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyDir::sPathIn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/data/data/com.android.mms/"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MessageDatabaseBackupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyDir::sDirName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MessageDatabaseBackupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyDir::sPathOut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CreateDir(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private CopyFile(Ljava/io/File;)V
    .locals 14

    if-nez p1, :cond_0

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::START::ERROR::fileIn is null"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v11, "MessageDatabaseBackupActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "copyFile::sPathIn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "/data/data/com.android.mms/"

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "MessageDatabaseBackupActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "copyFile::sPathOut="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    if-nez v5, :cond_3

    :cond_1
    if-eqz v3, :cond_9

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_1
    if-eqz v5, :cond_a

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_2
    :goto_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_b

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_5
    :try_start_5
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::00::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_3

    :catchall_0
    move-exception v11

    :goto_8
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    if-eqz v4, :cond_6

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v13

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    throw v11

    :cond_5
    :try_start_a
    const-string v12, "MessageDatabaseBackupActivity"

    const-string v13, "fis NullException"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    const-string v12, "MessageDatabaseBackupActivity"

    const-string v13, "copyFile::01::"

    invoke-static {v12, v13, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v12, "MessageDatabaseBackupActivity"

    const-string v13, "IOException caught while closing fis"

    invoke-static {v12, v13, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_6
    :try_start_b
    const-string v12, "MessageDatabaseBackupActivity"

    const-string v13, "fos NullException"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    const-string v12, "MessageDatabaseBackupActivity"

    const-string v13, "copyFile::01::"

    invoke-static {v12, v13, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v12, "MessageDatabaseBackupActivity"

    const-string v13, "IOException caught while closing fos"

    invoke-static {v12, v13, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_7
    :try_start_c
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "fis NullException"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_6

    :catch_3
    move-exception v0

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fis"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_8
    :try_start_d
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "fos NullException"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_7

    :catch_4
    move-exception v0

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fos"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_9
    :try_start_e
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "fis NullException"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fis"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_a
    :try_start_f
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "fos NullException"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fos"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_b
    if-eqz v3, :cond_c

    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    :goto_b
    if-eqz v5, :cond_d

    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    :goto_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setExecutable(ZZ)Z

    goto/16 :goto_3

    :cond_c
    :try_start_12
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "fis NullException"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fis"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_d
    :try_start_13
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "fos NullException"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fos"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catchall_1
    move-exception v11

    move-object v2, v3

    goto/16 :goto_8

    :catchall_2
    move-exception v11

    move-object v4, v5

    move-object v2, v3

    goto/16 :goto_8

    :catch_9
    move-exception v0

    move-object v2, v3

    goto/16 :goto_5

    :catch_a
    move-exception v0

    move-object v4, v5

    move-object v2, v3

    goto/16 :goto_5
.end method

.method private CreateDir(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v5, v2, :cond_2

    :cond_0
    const-string v2, "MessageDatabaseBackupActivity"

    const-string v3, "createDir::sPath is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "MessageDatabaseBackupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDir::sPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v5, v2, :cond_3

    const-string v2, "MessageDatabaseBackupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDir::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exists!!! Delete START!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DeleteDir(Ljava/io/File;)Z

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-ne v5, v2, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    const-string v2, "MessageDatabaseBackupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDir::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " make!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MessageDatabaseBackupActivity"

    const-string v3, "createDir::"

    invoke-static {v2, v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v2, "MessageDatabaseBackupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDir::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " make Fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private CreateSecurityKey(Ljava/lang/String;)[B
    .locals 8

    const/16 v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    rem-int v6, v4, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    div-int/2addr v4, v1

    new-array v0, v4, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    mul-int v3, v2, v1

    add-int v6, v3, v1

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private DecryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, p3}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CreateSecurityKey(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Ljava/security/Key;Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->Decription(Ljava/io/File;Ljava/io/File;)Z
    invoke-static {v2, v4, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->access$600(Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    move v4, v0

    goto :goto_0
.end method

.method private EncryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, p3}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CreateSecurityKey(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Ljava/security/Key;Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->Encryption(Ljava/io/File;Ljava/io/File;)Z
    invoke-static {v2, v4, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->access$500(Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    move v4, v0

    goto :goto_0
.end method

.method private ExcuteZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z
    .locals 17

    const/4 v4, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v10, 0x0

    :goto_0
    array-length v15, v3

    if-ge v10, v15, :cond_2

    aget-object v15, v3, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ExcuteZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v4, 0x0

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/util/zip/ZipEntry;

    invoke-direct {v14, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/util/zip/ZipEntry;->setTime(J)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v15, 0x2800

    new-array v7, v15, [B

    const/4 v11, 0x0

    :goto_1
    const/4 v15, 0x0

    const/16 v16, 0x2800

    move/from16 v0, v16

    invoke-virtual {v6, v7, v15, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    const/4 v15, -0x1

    if-eq v11, v15, :cond_3

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v15, v11}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v9

    move-object v5, v6

    :goto_2
    const/4 v4, 0x0

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_3
    return v4

    :cond_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    const/4 v4, 0x0

    goto :goto_3

    :catchall_0
    move-exception v15

    :goto_5
    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_6
    throw v15

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_6

    :catchall_1
    move-exception v15

    move-object v5, v6

    goto :goto_5

    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method private MessageDataBackup(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    const-string v7, "MessageDatabaseBackupActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MessageDataBackup::START::sRootPath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v10, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_2

    :try_start_1
    const-string v7, "MessageDatabaseBackupActivity"

    const-string v8, "MessageDataBackup::ERROR::if(null == file)"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_1
    const-string v7, "MessageDatabaseBackupActivity"

    const-string v8, "MessageDataBackup::"

    invoke-static {v7, v8, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v7, "MessageDatabaseBackupActivity"

    const-string v8, "MessageDataBackup::ERROR::if(null == aFiles)"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    array-length v5, v0

    const-string v7, "MessageDatabaseBackupActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MessageDataBackup::nCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_2
    if-le v5, v6, :cond_6

    aget-object v2, v0, v6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-ne v10, v7, :cond_4

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CopyDir(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDataBackup(Ljava/lang/String;)V

    :goto_3
    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-ne v10, v7, :cond_5

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CopyFile(Ljava/io/File;)V

    goto :goto_3

    :cond_5
    const-string v7, "MessageDatabaseBackupActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MessageDataBackup::ERROR::fTemp is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_6
    move-object v3, v4

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private MessageDbToZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v9, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v10, 0x8

    :try_start_3
    invoke-virtual {v9, v10}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    invoke-direct {p0, v9, p1, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ExcuteZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v0

    if-eqz v9, :cond_1

    :try_start_4
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :cond_3
    :goto_3
    move-object v8, v9

    move-object v1, v2

    move-object v5, v6

    :cond_4
    :goto_4
    move v10, v0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_5
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v0, 0x0

    if-eqz v8, :cond_5

    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_6
    :goto_7
    if-eqz v5, :cond_4

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    :catch_1
    move-exception v4

    const/4 v0, 0x0

    goto :goto_4

    :catchall_0
    move-exception v10

    :goto_8
    if-eqz v8, :cond_7

    :try_start_b
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :cond_7
    :goto_9
    if-eqz v1, :cond_8

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :cond_8
    :goto_a
    if-eqz v5, :cond_9

    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    :cond_9
    :goto_b
    throw v10

    :catch_2
    move-exception v4

    const/4 v0, 0x0

    goto :goto_a

    :catch_3
    move-exception v4

    const/4 v0, 0x0

    goto :goto_b

    :catch_4
    move-exception v4

    const/4 v0, 0x0

    goto :goto_9

    :catch_5
    move-exception v4

    const/4 v0, 0x0

    goto :goto_7

    :catch_6
    move-exception v4

    const/4 v0, 0x0

    goto :goto_6

    :catch_7
    move-exception v4

    const/4 v0, 0x0

    goto :goto_2

    :catch_8
    move-exception v4

    const/4 v0, 0x0

    goto :goto_3

    :catch_9
    move-exception v4

    const/4 v0, 0x0

    goto :goto_1

    :catchall_1
    move-exception v10

    move-object v5, v6

    goto :goto_8

    :catchall_2
    move-exception v10

    move-object v1, v2

    move-object v5, v6

    goto :goto_8

    :catchall_3
    move-exception v10

    move-object v8, v9

    move-object v1, v2

    move-object v5, v6

    goto :goto_8

    :catch_a
    move-exception v3

    move-object v5, v6

    goto :goto_5

    :catch_b
    move-exception v3

    move-object v1, v2

    move-object v5, v6

    goto :goto_5

    :catch_c
    move-exception v3

    move-object v8, v9

    move-object v1, v2

    move-object v5, v6

    goto :goto_5
.end method

.method private unZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v19, Ljava/util/zip/ZipInputStream;

    new-instance v20, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v4

    move-object v13, v12

    :goto_0
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v16

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v0, v15

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    move-object/from16 v7, p2

    const/4 v14, 0x0

    :goto_1
    array-length v0, v15

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v15, v14

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    new-instance v9, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_15

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-object v4, v5

    move-object v12, v13

    :goto_2
    move-object v5, v4

    move-object v13, v12

    goto/16 :goto_0

    :cond_1
    const/16 v20, 0x2800

    move/from16 v0, v20

    new-array v3, v0, [B

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/16 v20, 0x2800

    move/from16 v0, v20

    invoke-direct {v4, v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_3
    const/16 v20, 0x0

    const/16 v21, 0x2800

    :try_start_4
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v6

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v6, v0, :cond_6

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v3, v0, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catch_0
    move-exception v8

    move-object/from16 v18, v19

    move-object v10, v11

    :goto_4
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_2

    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_2
    :goto_5
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_3
    :goto_6
    if-eqz v10, :cond_4

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    :cond_4
    :goto_7
    if-eqz v18, :cond_5

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    :cond_5
    :goto_8
    return-void

    :cond_6
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_2

    :catch_1
    move-exception v8

    move-object/from16 v18, v19

    move-object v10, v11

    :goto_9
    :try_start_b
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v12, :cond_8

    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    :cond_8
    :goto_a
    if-eqz v4, :cond_9

    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    :cond_9
    :goto_b
    if-eqz v10, :cond_a

    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    :cond_a
    :goto_c
    if-eqz v18, :cond_5

    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_8

    :catch_2
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing zipInputStream"

    :goto_d
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_b
    if-eqz v11, :cond_c

    :try_start_10
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    :cond_c
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_14
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v13, :cond_d

    :try_start_11
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    :cond_d
    :goto_e
    if-eqz v5, :cond_e

    :try_start_12
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    :cond_e
    :goto_f
    if-eqz v11, :cond_f

    :try_start_13
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    :cond_f
    :goto_10
    if-eqz v19, :cond_10

    :try_start_14
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    :cond_10
    :goto_11
    move-object/from16 v18, v19

    move-object v10, v11

    move-object v4, v5

    move-object v12, v13

    goto :goto_8

    :catchall_0
    move-exception v20

    :goto_12
    if-eqz v12, :cond_11

    :try_start_15
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3

    :cond_11
    :goto_13
    if-eqz v4, :cond_12

    :try_start_16
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    :cond_12
    :goto_14
    if-eqz v10, :cond_13

    :try_start_17
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5

    :cond_13
    :goto_15
    if-eqz v18, :cond_14

    :try_start_18
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6

    :cond_14
    :goto_16
    throw v20

    :catch_3
    move-exception v8

    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing fileOutputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :catch_4
    move-exception v8

    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing bufferedOutputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :catch_5
    move-exception v8

    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing fileInputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :catch_6
    move-exception v8

    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing zipInputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :catch_7
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing fileOutputStream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_8
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing bufferedOutputStream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catch_9
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing fileInputStream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_a
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing zipInputStream"

    goto/16 :goto_d

    :catch_b
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing fileOutputStream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :catch_c
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing bufferedOutputStream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_d
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing fileInputStream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :catch_e
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing fileOutputStream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :catch_f
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing bufferedOutputStream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :catch_10
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing fileInputStream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :catch_11
    move-exception v8

    const-string v20, "MessageDatabaseBackupActivity"

    const-string v21, "IOException caught while closing zipInputStream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    :catchall_1
    move-exception v20

    move-object v10, v11

    goto/16 :goto_12

    :catchall_2
    move-exception v20

    move-object/from16 v18, v19

    move-object v10, v11

    move-object v4, v5

    move-object v12, v13

    goto/16 :goto_12

    :catchall_3
    move-exception v20

    move-object/from16 v18, v19

    move-object v10, v11

    move-object v4, v5

    goto/16 :goto_12

    :catchall_4
    move-exception v20

    move-object/from16 v18, v19

    move-object v10, v11

    goto/16 :goto_12

    :catch_12
    move-exception v8

    goto/16 :goto_9

    :catch_13
    move-exception v8

    move-object v10, v11

    goto/16 :goto_9

    :catch_14
    move-exception v8

    move-object/from16 v18, v19

    move-object v10, v11

    move-object v4, v5

    move-object v12, v13

    goto/16 :goto_9

    :catch_15
    move-exception v8

    move-object/from16 v18, v19

    move-object v10, v11

    move-object v4, v5

    goto/16 :goto_9

    :catch_16
    move-exception v8

    goto/16 :goto_4

    :catch_17
    move-exception v8

    move-object v10, v11

    goto/16 :goto_4

    :catch_18
    move-exception v8

    move-object/from16 v18, v19

    move-object v10, v11

    move-object v4, v5

    move-object v12, v13

    goto/16 :goto_4

    :catch_19
    move-exception v8

    move-object/from16 v18, v19

    move-object v10, v11

    move-object v4, v5

    goto/16 :goto_4

    :cond_15
    move-object v4, v5

    move-object v12, v13

    goto/16 :goto_2
.end method


# virtual methods
.method public ConvertEncryptedFileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DecryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MessageDatabaseBackupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecryptFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public ConvertZipToEncryptedFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->EncryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const-string v2, "MessageDatabaseBackupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EncryptFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public DeleteDir(Ljava/lang/String;)V
    .locals 7

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DeleteDir(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public DeleteDir(Ljava/io/File;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v6, "MessageDatabaseBackupActivity"

    const-string v7, "deleteDir::children is null"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v3, 0x0

    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_2

    new-instance v6, Ljava/io/File;

    aget-object v7, v1, v3

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DeleteDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v6, "MessageDatabaseBackupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteDir::children[nI]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is Delete"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    move v5, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "MessageDatabaseBackupActivity"

    const-string v6, "deleteDir::"

    invoke-static {v5, v6, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public MessageDbBackup(Ljava/lang/String;)Z
    .locals 10

    const/4 v6, 0x1

    const-string v0, "content://mms-sms/msgbackup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "target_directory_path"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return v6

    :catch_0
    move-exception v8

    :try_start_1
    const-string v0, "MessageDatabaseBackupActivity"

    const-string v2, "MessageDbBackup Error"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    if-eqz v7, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public MessageDbRestore(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const-string v6, "content://mms-sms/msgrestore"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "source_directory_path"

    invoke-virtual {v6, v7, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v1, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v6, "MessageDatabaseBackupActivity"

    const-string v7, "MessageDbRestore Error"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v6
.end method

.method public run()V
    .locals 13

    const/4 v12, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mWorkMode:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$300(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput v7, v4, Landroid/os/Message;->arg1:I

    const-string v9, "filename"

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDbBackup(Ljava/lang/String;)Z

    move-result v6

    const-string v9, "/data/data/com.android.mms/"

    invoke-direct {p0, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDataBackup(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDbToZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mszKey:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ConvertZipToEncryptedFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    new-instance v1, Ljava/io/File;

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_TEMP_RESULT_ZIP_FOLDER_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$100()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DeleteDir(Ljava/io/File;)Z

    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DeleteDir(Ljava/lang/String;)V

    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$300(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    if-eqz v6, :cond_4

    :goto_1
    iput v7, v3, Landroid/os/Message;->arg1:I

    const-string v7, "filename"

    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    move v7, v8

    goto :goto_1

    :pswitch_1
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$300(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput v7, v4, Landroid/os/Message;->arg1:I

    const-string v9, "filename"

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v6, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mszKey:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ConvertEncryptedFileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$200()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->unZip(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const v10, 0x7f0b0204

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$200()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDbRestore(Ljava/lang/String;)Z

    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$300(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v12, v3, Landroid/os/Message;->what:I

    if-eqz v6, :cond_8

    :goto_3
    iput v7, v3, Landroid/os/Message;->arg1:I

    const-string v7, "filename"

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$200()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    const-string v9, "MessageDatabaseBackupActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "szEncPathName("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") can\'t be decrypted"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v9, "MessageDatabaseBackupActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "szEncPathName("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") isn\'t founded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v7, v8

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mWorkMode:I

    iput-object p2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_TEMP_RESULT_ZIP_FOLDER_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".edb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mszKey:Ljava/lang/String;

    return-void
.end method
