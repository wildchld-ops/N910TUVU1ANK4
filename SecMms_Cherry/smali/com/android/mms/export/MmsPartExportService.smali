.class public Lcom/android/mms/export/MmsPartExportService;
.super Landroid/app/IntentService;
.source "MmsPartExportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/export/MmsPartExportService$1;,
        Lcom/android/mms/export/MmsPartExportService$DisplayToast;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsPartExportService"


# instance fields
.field private mToastHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "attachment_export"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 3

    :try_start_0
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/MmsPartExportService"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method private setAsRingtone(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "Mms/MmsPartExportService"

    const-string v4, "setAsRingtone"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_data"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_ringtone"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "is_notification"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "is_alarm"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "is_music"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "Mms/MmsPartExportService"

    const-string v4, "newUri is not null. so setAsRingtone!!!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private showToast(II)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/mms/export/MmsPartExportService;->showToast(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/export/MmsPartExportService;->mToastHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/export/MmsPartExportService$DisplayToast;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/export/MmsPartExportService$DisplayToast;-><init>(Lcom/android/mms/export/MmsPartExportService;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/export/MmsPartExportService;->mToastHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 24

    const-string v2, "msg_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/net/Uri;

    const-string v2, "part_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v2, "overwrite"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    const-string v2, "ringtone"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    const-string v2, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v19, :cond_e

    if-nez v15, :cond_7

    const/4 v10, 0x0

    const/4 v2, 0x5

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "name"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "fn"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "cl"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "cid"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "ct"

    aput-object v5, v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableOma13NameEncoding()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_14

    const-string v2, "fn"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_14

    const-string v2, "cl"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_14

    const-string v2, "cid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    move-object/from16 v16, v15

    :goto_0
    if-eqz v16, :cond_13

    :try_start_1
    invoke-static/range {v16 .. v16}, Lcom/android/mms/export/MmsPartExportService;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableOma13NameEncoding()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v15}, Lorg/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_0
    const-string v2, "<"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :cond_1
    const-string v2, ">"

    invoke-virtual {v15, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v15, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_2
    const-string v2, "cid:"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :cond_3
    const-string v2, "ct"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0x2e

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_c

    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static {v9}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "dcf"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v18, "dcf"

    :cond_4
    if-nez v18, :cond_5

    const-string v2, "text/x-vCard"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v18, "vcf"

    :cond_5
    :goto_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "."

    invoke-virtual {v15, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    :cond_6
    :goto_2
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_7
    :goto_3
    if-nez v15, :cond_10

    const-string v2, "Mms/MmsPartExportService"

    const-string v5, "onHandleIntent: fileName is NULL"

    invoke-static {v2, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0c00d4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/mms/export/MmsPartExportService;->showToast(II)V

    :goto_4
    return-void

    :cond_8
    :try_start_3
    const-string v2, "cl"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_14

    const-string v2, "fn"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_14

    const-string v2, "cid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_14

    const-string v2, "name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_14

    const-string v2, "=?"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "yyMMdd_hhmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    goto/16 :goto_0

    :cond_9
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v18, "vcs"

    goto :goto_1

    :cond_a
    const-string v2, "text/x-vNote"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v18, "vnt"

    goto/16 :goto_1

    :cond_b
    const-string v2, "text/x-vtodo"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v18, "vts"

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v2, v17, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/android/mms/ui/MessageUtils;->getExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    add-int/lit8 v6, v17, 0x1

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v15

    goto/16 :goto_2

    :catch_0
    move-exception v12

    :goto_5
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "Mms/MmsPartExportService"

    const-string v5, "IllegalArgumentException"

    invoke-static {v2, v5, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v12

    :goto_6
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "Mms/MmsPartExportService"

    const-string v5, "Exception"

    invoke-static {v2, v5, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    :goto_7
    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_d
    throw v2

    :cond_e
    if-nez v15, :cond_f

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v3, v1, v14}, Lcom/android/mms/export/MmsPartExport;->generateFileName(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_f
    invoke-static {v15}, Lcom/android/mms/export/MmsPartExport;->normalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_10
    invoke-static {v15}, Lcom/android/mms/export/MmsPartExport;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez v21, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3, v15}, Lcom/android/mms/export/MmsPartExport;->queueRenameDialog(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    invoke-static {v0, v3, v11}, Lcom/android/mms/export/MmsPartExport;->copyMedia(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Lcom/android/mms/export/MmsPartExport$ExportResult;

    move-result-object v22

    sget-object v2, Lcom/android/mms/export/MmsPartExportService$1;->$SwitchMap$com$android$mms$export$MmsPartExport$ExportResult:[I

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v23, :cond_12

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/export/MmsPartExportService;->setAsRingtone(Ljava/lang/String;)V

    const v2, 0x7f0c0423

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/mms/export/MmsPartExportService;->showToast(II)V

    goto/16 :goto_4

    :cond_12
    const v2, 0x7f0c00d3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/mms/export/MmsPartExportService;->showToast(II)V

    goto/16 :goto_4

    :pswitch_1
    const v2, 0x7f0c00d4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/mms/export/MmsPartExportService;->showToast(II)V

    goto/16 :goto_4

    :pswitch_2
    const v2, 0x7f0c012c

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/mms/export/MmsPartExportService;->showToast(II)V

    goto/16 :goto_4

    :pswitch_3
    const v2, 0x7f0c0149

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/mms/export/MmsPartExportService;->showToast(II)V

    goto/16 :goto_4

    :pswitch_4
    const v2, 0x7f0c0141

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/mms/export/MmsPartExportService;->showToast(II)V

    goto/16 :goto_4

    :catchall_1
    move-exception v2

    move-object/from16 v15, v16

    goto/16 :goto_7

    :catch_2
    move-exception v12

    move-object/from16 v15, v16

    goto/16 :goto_6

    :catch_3
    move-exception v12

    move-object/from16 v15, v16

    goto/16 :goto_5

    :cond_13
    move-object/from16 v15, v16

    goto/16 :goto_2

    :cond_14
    move-object/from16 v16, v15

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
