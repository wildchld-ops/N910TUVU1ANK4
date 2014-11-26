.class public Lcom/android/settings/nfc/OsaifuConfigAccess;
.super Ljava/lang/Object;
.source "OsaifuConfigAccess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNfcTypeSettings()Z
    .locals 12

    const/4 v8, 0x7

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/osaifu/osaifu.cfg"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v3, v8, [B

    const/4 v5, 0x0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return v5

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eqz v4, :cond_e

    const-string v7, "00001,2"

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x7

    invoke-direct {v8, v3, v9, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "OsaifuConfigAccess"

    const-string v8, "Japan DCM Model Type BF"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v5, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v7, "OsaifuConfigAccess"

    const-string v8, "Japan KDDI Model or FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    :try_start_4
    throw v0

    move-result v4

    if-eqz v4, :cond_b

    const-string v7, "00001,2"

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x7

    invoke-direct {v8, v3, v9, v10}, Ljava/lang/String;-><init>([BII)V

    throw v7

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "OsaifuConfigAccess"

    const-string v8, "Japan DCM Model Type BF"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v5, 0x1

    :cond_4
    :goto_3
    if-eqz v0, :cond_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :cond_6
    :goto_5
    if-eqz v0, :cond_7

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_6
    throw v7

    :catchall_0
    move-exception v7

    if-eqz v0, :cond_6

    :try_start_7
    throw v0

    move-result v4

    if-eqz v4, :cond_5

    const-string v8, "00001,2"

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-direct {v9, v3, v10, v11}, Ljava/lang/String;-><init>([BII)V

    throw v8

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "OsaifuConfigAccess"

    const-string v9, "Japan DCM Model Type BF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v5, 0x1

    goto :goto_5

    :catch_2
    move-exception v2

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v2

    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_7

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catch_4
    move-exception v2

    goto :goto_7

    :catchall_1
    move-exception v7

    if-eqz v0, :cond_8

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_8
    :goto_8
    throw v7

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :cond_9
    :try_start_b
    const-string v8, "OsaifuConfigAccess"

    const-string v9, "Japan DCM Model Type Other"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v5, 0x0

    goto :goto_5

    :catch_6
    move-exception v2

    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v0, :cond_0

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v2

    goto :goto_4

    :catchall_2
    move-exception v7

    if-eqz v0, :cond_a

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :cond_a
    :goto_9
    throw v7

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    :cond_c
    :try_start_f
    const-string v7, "OsaifuConfigAccess"

    const-string v8, "Japan DCM Model Type Other"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    const/4 v5, 0x0

    goto :goto_3

    :catch_9
    move-exception v2

    :goto_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :catch_a
    move-exception v2

    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v1, :cond_3

    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto/16 :goto_2

    :catch_b
    move-exception v2

    goto :goto_a

    :catchall_3
    move-exception v7

    if-eqz v1, :cond_d

    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    :cond_d
    :goto_b
    throw v7

    :catch_c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_f
    :try_start_13
    const-string v7, "OsaifuConfigAccess"

    const-string v8, "Japan DCM Model Type Other"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    const/4 v5, 0x0

    goto/16 :goto_1
.end method
