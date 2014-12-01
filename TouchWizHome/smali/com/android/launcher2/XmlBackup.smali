.class public Lcom/android/launcher2/XmlBackup;
.super Landroid/content/BroadcastReceiver;
.source "XmlBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/XmlBackup$1;,
        Lcom/android/launcher2/XmlBackup$Result;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final HOMESCREEN_BACKUP_EXML:Ljava/lang/String; = "/homescreen.exml"

.field private static final REQUEST_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_BACKUP_HOMESCREEN"

.field private static final REQUEST_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_HOMESCREEN"

.field private static final RESPONSE_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_BACKUP_HOMESCREEN"

.field private static final RESPONSE_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_RESTORE_HOMESCREEN"

.field private static final TAG:Ljava/lang/String; = "HomeScreenXmlBackup"

.field private static cipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/XmlBackup;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private RestoreLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    new-instance v6, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/homescreen.exml"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/android/launcher2/XmlBackup;->StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_0
    const/4 v10, 0x0

    const/4 v7, 0x0

    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v8, v11}, Lcom/android/launcher2/XmlBackup;->decryptStream(Ljava/io/InputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    const-string v16, "utf-8"

    move-object/from16 v0, v16

    invoke-interface {v12, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v12, v0}, Lcom/android/launcher2/LauncherProvider;->restoreHomeScreenDB(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    new-instance v9, Landroid/content/Intent;

    const-string v16, "com.android.launcher.action.ACTION_HOME_RESTORE"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    move-object v7, v8

    :goto_2
    const/16 v16, 0x0

    sput-boolean v16, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    new-instance v14, Landroid/content/Intent;

    const-string v16, "com.sec.android.intent.action.RESPONSE_RESTORE_HOMESCREEN"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "RESULT"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v16, "ERR_CODE"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v16, "REQ_SIZE"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v16, "SOURCE"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const/4 v15, 0x1

    const/4 v4, 0x1

    :try_start_5
    const-string v16, "HomeScreenXmlBackup"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DB Input exception = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v7, v8

    :goto_3
    const/4 v15, 0x1

    const/4 v4, 0x2

    :try_start_6
    const-string v16, "HomeScreenXmlBackup"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file exception = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v16

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    throw v16

    :catchall_1
    move-exception v16

    move-object v7, v8

    goto :goto_4

    :catch_3
    move-exception v3

    goto :goto_3
.end method

.method public static StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    const/16 v3, 0x10

    new-array v2, v3, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v4, v2

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v18, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/homescreen.exml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_1

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    new-instance v17, Lcom/android/launcher2/XmlBackup$Result;

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/launcher2/XmlBackup$Result;-><init>(Lcom/android/launcher2/XmlBackup$1;)V

    const/4 v14, 0x0

    :try_start_1
    invoke-static/range {p4 .. p4}, Lcom/android/launcher2/XmlBackup;->StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v14

    :goto_1
    const/4 v15, 0x0

    const/4 v11, 0x0

    :try_start_2
    new-instance v22, Ljava/io/StringWriter;

    invoke-direct/range {v22 .. v22}, Ljava/io/StringWriter;-><init>()V

    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v12, v14}, Lcom/android/launcher2/XmlBackup;->encryptStream(Ljava/io/OutputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/OutputStream;

    move-result-object v15

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v21

    if-nez v21, :cond_2

    const-string v23, "HomeScreenXmlBackup"

    const-string v24, "serializer is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    const-string v23, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v23, "UTF-8"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 v23, 0x0

    const-string v24, "PageCount"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v23, "com.sec.android.app.launcher.prefs"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "screencount"

    const/16 v25, -0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v23, 0x0

    const-string v24, "PageCount"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v23, 0x0

    const-string v24, "ScreenIndex"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v23, "com.sec.android.app.launcher.prefs"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "homescreenindex"

    const/16 v25, -0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v23, 0x0

    const-string v24, "ScreenIndex"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/XmlBackup;->makeHomeTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher2/XmlBackup$Result;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/XmlBackup;->makeHotseatTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v22 .. v22}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "UTF-8"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v16, 0x0

    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v7, v0, [B

    :goto_3
    const/16 v23, 0x0

    const/16 v24, 0x400

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v7, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v16

    const/16 v23, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v15, v7, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v9

    move-object v11, v12

    :goto_4
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->result:I

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    const-string v23, "HomeScreenXmlBackup"

    const-string v24, "RuntimeException occured"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    :goto_5
    new-instance v5, Landroid/content/Intent;

    const-string v23, "com.sec.android.intent.action.RESPONSE_BACKUP_HOMESCREEN"

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v23, "RESULT"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/XmlBackup$Result;->result:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v23, "ERR_CODE"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v23, "REQ_SIZE"

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v23, "SOURCE"

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v9

    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->result:I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    const-string v23, "HomeScreenXmlBackup"

    const-string v24, "RuntimeException occured"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :catch_4
    move-exception v9

    move-object v11, v12

    :goto_6
    :try_start_8
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->result:I

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    const-string v23, "HomeScreenXmlBackup"

    const-string v24, "File error occured"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_5

    :catch_5
    move-exception v9

    :try_start_9
    const-string v23, "HomeScreenXmlBackup"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception >>"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->result:I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    const-string v23, "HomeScreenXmlBackup"

    const-string v24, "Error occured while generate XML"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v23

    move-object v11, v12

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    throw v23

    :cond_3
    :try_start_a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object v11, v12

    goto/16 :goto_5

    :catchall_1
    move-exception v23

    goto :goto_7

    :catch_6
    move-exception v9

    goto :goto_6

    :catch_7
    move-exception v9

    goto/16 :goto_4
.end method

.method private close(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private close(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private createBackupShortcutIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/XmlBackup;->deleteFile(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/android/launcher2/XmlBackup;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decryptStream(Ljava/io/InputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherInputStream;

    sget-object v3, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static encryptStream(Ljava/io/OutputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    sget-object v3, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p0, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method private makeFolderTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "container="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v24, 0x0

    const-string v5, "itemType"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    packed-switch v17, :pswitch_data_0

    :goto_1
    if-eqz v24, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "intent"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v5, "_id"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v5, "icon"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v5, "title"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    if-eqz v16, :cond_1

    const/16 v22, 0x0

    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v22

    :try_start_2
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    :cond_2
    const-string v5, "screen"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v13, :cond_3

    const/4 v5, 0x0

    const-string v6, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    if-eqz v18, :cond_4

    const/4 v5, 0x0

    const-string v6, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    if-eqz v19, :cond_5

    const/4 v5, 0x0

    const-string v6, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    if-eqz v20, :cond_6

    const/4 v5, 0x0

    const-string v6, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_7

    const/4 v5, 0x0

    const-string v6, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v14, v1}, Lcom/android/launcher2/XmlBackup;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/XmlBackup;->createBackupShortcutIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    const-string v6, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    :pswitch_0
    :try_start_3
    const-string v24, "favorite"

    goto/16 :goto_1

    :pswitch_1
    const-string v24, "shortcut"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v12

    goto/16 :goto_0

    :cond_9
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private makeHomeTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher2/XmlBackup$Result;)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "container="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, -0x64

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-nez v16, :cond_1

    const/4 v6, 0x1

    :try_start_0
    move-object/from16 v0, p4

    iput v6, v0, Lcom/android/launcher2/XmlBackup$Result;->result:I

    const/4 v6, 0x1

    move-object/from16 v0, p4

    iput v6, v0, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    const-string v6, "HomeScreenXmlBackup"

    const-string v7, "fail to open Favorites cursor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x0

    const-string v7, "home"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    const-string v6, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string v6, "itemType"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const-string v6, "screen"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    const-string v6, "cellX"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string v6, "cellY"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, "spanX"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    const-string v6, "spanY"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    const-string v6, "intent"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v6, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    const-string v6, "appWidgetId"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v6, "icon"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    const/4 v15, 0x0

    if-eqz v22, :cond_3

    const/16 v21, 0x0

    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, v22

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v21

    :try_start_3
    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    :cond_3
    const/4 v14, 0x0

    const/16 v24, 0x0

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    :cond_4
    const/16 v30, 0x0

    sparse-switch v23, :sswitch_data_0

    :cond_5
    :goto_1
    if-eqz v30, :cond_f

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v14, :cond_6

    const/4 v6, 0x0

    const-string v7, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    if-eqz v24, :cond_7

    const/4 v6, 0x0

    const-string v7, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    if-eqz v26, :cond_8

    const/4 v6, 0x0

    const-string v7, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    if-eqz v32, :cond_9

    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    if-eqz v12, :cond_a

    const/4 v6, 0x0

    const-string v7, "x"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    if-eqz v13, :cond_b

    const/4 v6, 0x0

    const-string v7, "y"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    if-eqz v28, :cond_c

    const/4 v6, 0x0

    const-string v7, "spanX"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    if-eqz v29, :cond_d

    const/4 v6, 0x0

    const-string v7, "spanY"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    const/16 v6, 0x384

    move/from16 v0, v23

    if-ne v0, v6, :cond_11

    if-eqz v22, :cond_e

    const/16 v21, 0x0

    const/4 v6, 0x0

    :try_start_4
    move-object/from16 v0, v22

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v21

    :try_start_5
    const-string v6, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_e

    const/4 v6, 0x0

    const-string v7, "themeName"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    :goto_2
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    const-string v7, "home"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    if-eqz v16, :cond_10

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v6

    :catch_0
    move-exception v17

    goto :goto_3

    :sswitch_0
    :try_start_6
    const-string v30, "favorite"

    goto/16 :goto_1

    :sswitch_1
    const-string v30, "shortcut"

    goto/16 :goto_1

    :sswitch_2
    const-string v30, "appwidget"

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v25

    if-eqz v25, :cond_5

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    move-object/from16 v32, v0

    goto/16 :goto_1

    :sswitch_3
    const-string v30, "sactivitywidget"

    goto/16 :goto_1

    :sswitch_4
    const-string v30, "folder"

    goto/16 :goto_1

    :catch_1
    move-exception v17

    goto :goto_3

    :cond_11
    const/4 v6, 0x1

    move/from16 v0, v23

    if-ne v0, v6, :cond_12

    const/4 v6, 0x0

    const-string v7, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/XmlBackup;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v27

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/XmlBackup;->createBackupShortcutIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    const-string v7, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    :cond_12
    const/4 v6, 0x2

    move/from16 v0, v23

    if-ne v0, v6, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/XmlBackup;->makeFolderTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const/4 v6, 0x1

    move-object/from16 v0, p4

    iput v6, v0, Lcom/android/launcher2/XmlBackup$Result;->result:I

    const/4 v6, 0x3

    move-object/from16 v0, p4

    iput v6, v0, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    const-string v6, "HomeScreenXmlBackup"

    const-string v7, "There\'s no logs"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x4 -> :sswitch_2
        0x384 -> :sswitch_3
        0x385 -> :sswitch_3
    .end sparse-switch
.end method

.method private makeHotseatTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "container="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, -0x65

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    const-string v7, "hotseat"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v6, "_id"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v6, "itemType"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string v6, "screen"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const-string v6, "intent"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v6, "title"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const-string v6, "icon"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    const/4 v12, 0x0

    if-eqz v19, :cond_1

    const/16 v18, 0x0

    const/4 v6, 0x0

    :try_start_1
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    :cond_1
    const/4 v11, 0x0

    const/16 v21, 0x0

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    :cond_2
    const/16 v24, 0x0

    packed-switch v20, :pswitch_data_0

    :goto_0
    if-eqz v24, :cond_8

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v11, :cond_3

    const/4 v6, 0x0

    const-string v7, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    if-eqz v21, :cond_4

    const/4 v6, 0x0

    const-string v7, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    if-eqz v22, :cond_5

    const/4 v6, 0x0

    const-string v7, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    if-eqz v25, :cond_6

    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const/4 v6, 0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_b

    const/4 v6, 0x0

    const-string v7, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/launcher2/XmlBackup;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v15}, Lcom/android/launcher2/XmlBackup;->createBackupShortcutIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    const-string v7, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    :goto_1
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    const-string v7, "hotseat"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    return-void

    :catch_0
    move-exception v14

    goto :goto_2

    :pswitch_0
    :try_start_3
    const-string v24, "favorite"

    goto/16 :goto_0

    :pswitch_1
    const-string v24, "shortcut"

    goto/16 :goto_0

    :pswitch_2
    const-string v24, "folder"

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x2

    move/from16 v0, v20

    if-ne v0, v6, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/XmlBackup;->makeFolderTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v13, :cond_c

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method


# virtual methods
.method protected getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v5, "SAVE_PATH"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "SOURCE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SESSION_KEY"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ACTION"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "com.sec.android.intent.action.REQUEST_BACKUP_HOMESCREEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/launcher2/XmlBackup;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "HomeScreenXmlBackup"

    const-string v6, "onReceive REQUEST_BACKUP_HOMESCREEN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v2, :cond_1

    invoke-direct {p0, p1, v1, v4, v3}, Lcom/android/launcher2/XmlBackup;->XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v5, "com.sec.android.intent.action.REQUEST_RESTORE_HOMESCREEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/launcher2/XmlBackup;->DEBUGGABLE:Z

    if-eqz v5, :cond_3

    const-string v5, "HomeScreenXmlBackup"

    const-string v6, "onReceive REQUEST_RESTORE_HOMESCREEN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v2, :cond_1

    invoke-direct {p0, p1, v1, v4, v3}, Lcom/android/launcher2/XmlBackup;->RestoreLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v5, "HomeScreenXmlBackup"

    const-string v6, "onReceive Action value is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
