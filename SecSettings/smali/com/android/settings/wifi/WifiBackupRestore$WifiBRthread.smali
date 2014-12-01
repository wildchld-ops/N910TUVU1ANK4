.class Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;
.super Ljava/lang/Object;
.source "WifiBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiBRthread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHotspotEnabled:Z

.field mIntent:Landroid/content/Intent;

.field mWifiEnabled:Z

.field final synthetic this$0:Lcom/android/settings/wifi/WifiBackupRestore;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x8

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    const-string v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method CheckWifiState()I
    .locals 9

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mWifiEnabled:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mHotspotEnabled:Z

    const/4 v3, 0x0

    if-nez v2, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    if-nez v2, :cond_2

    const-wide/16 v7, 0x3e8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    :cond_2
    if-eqz v2, :cond_4

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "WifiBackupRestore"

    const-string v5, ">>>>> WIFI ON <<<<<"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v4, v6

    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v5

    goto :goto_0

    :cond_4
    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "WifiBackupRestore"

    const-string v6, ">>>>> Failed to WIFI ON <<<<<"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v6

    goto :goto_0
.end method

.method public StreamCrypt(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    # setter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiBackupRestore;->access$102(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    # setter for: Lcom/android/settings/wifi/WifiBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiBackupRestore;->access$202(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method

.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$200()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherInputStream;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method encrypt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget-object v14, v14, Lcom/android/settings/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->StreamCrypt(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget v14, v14, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    if-nez v14, :cond_5

    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v10

    move-object v5, v6

    move-object v8, v9

    :cond_0
    :goto_0
    const/4 v12, 0x0

    const/16 v14, 0x400

    :try_start_3
    new-array v1, v14, [B

    :goto_1
    if-eqz v8, :cond_a

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_a

    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_2
    :try_start_4
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, -0x1

    if-eqz v10, :cond_1

    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    return v13

    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget v14, v14, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8

    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v3, v4

    move-object v10, v11

    goto :goto_0

    :catchall_0
    move-exception v14

    :goto_4
    if-eqz v10, :cond_6

    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_9
    :goto_5
    throw v14

    :catch_1
    move-exception v7

    const-string v15, "WifiBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ioexception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x1

    goto :goto_5

    :catch_2
    move-exception v7

    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/4 v13, -0x1

    goto :goto_3

    :cond_a
    if-eqz v10, :cond_b

    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_d
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v7

    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v14

    move-object v8, v9

    goto :goto_4

    :catchall_2
    move-exception v14

    move-object v5, v6

    move-object v8, v9

    goto/16 :goto_4

    :catchall_3
    move-exception v14

    move-object v3, v4

    goto/16 :goto_4

    :catch_4
    move-exception v2

    move-object v8, v9

    goto/16 :goto_2

    :catch_5
    move-exception v2

    move-object v5, v6

    move-object v8, v9

    goto/16 :goto_2

    :catch_6
    move-exception v2

    move-object v3, v4

    goto/16 :goto_2
.end method

.method public encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$200()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method

.method makeXML(Ljava/lang/String;)I
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "wifi_wpaconf.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/FileWriter;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, ""

    const-string v7, "Wi-Fi"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, ""

    const-string v7, "model"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, ""

    const-string v7, "model"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, ""

    const-string v7, "conf"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "wpa_supplicant.conf"

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, ""

    const-string v7, "conf"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, ""

    const-string v7, "Wi-Fi"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v3, v4

    :cond_1
    :goto_1
    return v1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    const-string v6, "WifiBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeXML exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, -0x1

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, -0x1

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_4
    throw v6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, -0x1

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, -0x1

    goto :goto_0

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v3, v4

    goto :goto_2
.end method

.method readXML(Ljava/lang/String;)I
    .locals 17

    const/4 v11, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    new-instance v6, Ljava/io/FileReader;

    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "wifi_wpaconf.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    const/4 v7, 0x0

    const-string v13, ""

    const-string v2, ""

    :goto_0
    const/4 v14, 0x1

    if-eq v9, v14, :cond_7

    const/4 v14, 0x2

    if-ne v9, v14, :cond_2

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "model"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "conf"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    const/4 v7, 0x1

    :cond_1
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    :cond_2
    const/4 v14, 0x4

    if-ne v9, v14, :cond_5

    if-eqz v7, :cond_4

    const-string v14, "model"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/settings/wifi/WifiBackupRestore;->xmlModel:Ljava/lang/String;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[readXML] model : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->xmlModel:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v10

    move-object v5, v6

    :goto_2
    :try_start_2
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "runtimeException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, -0x1

    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    move v12, v11

    :goto_4
    return v12

    :cond_4
    if-eqz v7, :cond_1

    :try_start_4
    const-string v14, "conf"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[readXML] xmlConf : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v5, v6

    :goto_5
    :try_start_5
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "read XML Error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v11, -0x1

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    :goto_6
    move v12, v11

    goto :goto_4

    :cond_5
    const/4 v14, 0x3

    if-ne v9, v14, :cond_1

    :try_start_7
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_6

    const-string v14, "model"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_6
    if-eqz v7, :cond_1

    const-string v14, "conf"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v14

    if-eqz v14, :cond_1

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_7
    if-eqz v6, :cond_8

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_8
    move-object v5, v6

    goto/16 :goto_3

    :catchall_0
    move-exception v14

    :goto_7
    if-eqz v5, :cond_9

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_9
    throw v14

    :catch_3
    move-exception v4

    goto :goto_6

    :catch_4
    move-exception v4

    goto :goto_6

    :catch_5
    move-exception v4

    move-object v5, v6

    move v12, v11

    goto/16 :goto_4

    :catchall_1
    move-exception v14

    move-object v5, v6

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v10

    goto/16 :goto_2
.end method

.method public run()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    const-string v21, "WifiBackupRestore"

    const-string v22, "intent is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SAVE_PATH"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "ACTION"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "SESSION_KEY"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "SOURCE"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_2

    const-string v21, "WifiBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[BACKUP] path : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", action : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mSource : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    if-nez v6, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->CheckWifiState()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_3
    const-string v21, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v21, 0x0

    cmp-long v21, v10, v21

    if-nez v21, :cond_5

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_4

    const-string v21, "WifiBackupRestore"

    const-string v22, "There is no conf file"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_7

    :cond_6
    const-string v21, "WifiBackupRestore"

    const-string v22, "There is no networks to backup"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_7
    :try_start_0
    new-instance v20, Landroid/os/StatFs;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    if-nez v20, :cond_a

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_8

    const-string v21, "WifiBackupRestore"

    const-string v22, "checking memory fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v12

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_9

    const-string v21, "WifiBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v21

    move/from16 v0, v21

    int-to-long v8, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v21

    move/from16 v0, v21

    int-to-long v4, v0

    mul-long v14, v8, v4

    cmp-long v21, v14, v10

    if-gez v21, :cond_c

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_b

    const-string v21, "WifiBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "freeSpaceInBytes : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", confSize : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/16 v21, 0x1

    const/16 v22, 0x2

    long-to-int v0, v10

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_c
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    const/16 v21, 0x3d

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v21, "OPTION"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v21, "PATH"

    const-string v22, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v21

    if-nez v21, :cond_f

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_d

    const-string v21, "WifiBackupRestore"

    const-string v22, "BACK UP !!!!!!!!!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-string v21, "/data/misc/wifi/temp.conf"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "wpa_supplicant.conf"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_e

    const-string v21, "WifiBackupRestore"

    const-string v22, "encrypt fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_f
    const-string v21, "WifiBackupRestore"

    const-string v22, "Failed to write networks"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->makeXML(Ljava/lang/String;)I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_11

    const-string v21, "WifiBackupRestore"

    const-string v22, "makeXML fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_12
    new-instance v13, Ljava/io/File;

    const-string v21, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_13
    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v6, v0, :cond_0

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SAVE_PATH"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "ACTION"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "SESSION_KEY"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "SOURCE"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_15

    const-string v21, "WifiBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RESTORE] path : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", action : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mSource : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    if-nez v6, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->CheckWifiState()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->readXML(Ljava/lang/String;)I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    const-string v21, "WifiBackupRestore"

    const-string v22, "xml parsing error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_17
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_1c

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_18

    const-string v21, "WifiBackupRestore"

    const-string v22, "decrypt fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_19
    new-instance v13, Ljava/io/File;

    const-string v21, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    const/16 v21, 0x3d

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v21, "OPTION"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v21, "PATH"

    const-string v22, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v21

    if-nez v21, :cond_1b

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_1a

    const-string v21, "WifiBackupRestore"

    const-string v22, "RESTORE !!!!!!!!!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    new-instance v13, Ljava/io/File;

    const-string v21, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_1b
    const-string v21, "WifiBackupRestore"

    const-string v22, "Failed to read networks"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_1c
    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000()Z

    move-result v21

    if-eqz v21, :cond_1d

    const-string v21, "WifiBackupRestore"

    const-string v22, "can\'t read file"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_1e
    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v6, v0, :cond_0

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0
.end method

.method sendResponse(III)V
    .locals 4

    const-string v1, "WifiBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "r:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",rs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget v1, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.intent.action.RESPONSE_BACKUP_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ERR_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SOURCE"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mWifiEnabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mHotspotEnabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget v1, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "com.sec.android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
