.class public Lcom/sec/android/app/camera/GolfViewerUtils;
.super Ljava/lang/Object;
.source "GolfViewerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GolfViewerUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OpenGolfFile(Ljava/lang/String;Ljava/lang/String;[I)I
    .locals 28
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # [I

    const/4 v15, 0x0

    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v16, :cond_2

    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v4, v0, [B

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v23

    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v24

    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v11

    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v10

    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v18

    invoke-virtual {v5, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/Buffer;->remaining()I

    move-result v25

    sub-int v25, v25, v18

    add-int/lit8 v19, v25, -0x1

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    const/16 v25, 0x1

    aget v25, v20, v25

    const/16 v26, 0x0

    aget v26, v20, v26

    sub-int v21, v25, v26

    move/from16 v0, v21

    new-array v6, v0, [B

    const/4 v12, 0x0

    :goto_0
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ge v12, v0, :cond_0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v25

    const/16 v26, 0x0

    aget v26, v20, v26

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v21

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v10, v1, v6}, Lcom/sec/android/app/camera/GolfViewerUtils;->setImageBuffer(Ljava/lang/String;II[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    if-eqz v16, :cond_1

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object/from16 v15, v16

    :goto_2
    return v18

    :catch_0
    move-exception v8

    const-string v25, "GolfViewerUtils"

    const-string v26, "OpenGolfFile : failed to close Camera OpenGolfFile file"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz v16, :cond_5

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v15, v16

    :cond_3
    :goto_3
    const/16 v18, -0x1

    goto :goto_2

    :catch_1
    move-exception v8

    const-string v25, "GolfViewerUtils"

    const-string v26, "OpenGolfFile : failed to close Camera OpenGolfFile file"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, v16

    goto :goto_3

    :catch_2
    move-exception v7

    :goto_4
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v15, :cond_3

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v8

    const-string v25, "GolfViewerUtils"

    const-string v26, "OpenGolfFile : failed to close Camera OpenGolfFile file"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v25

    :goto_5
    if-eqz v15, :cond_4

    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_6
    throw v25

    :catch_4
    move-exception v8

    const-string v26, "GolfViewerUtils"

    const-string v27, "OpenGolfFile : failed to close Camera OpenGolfFile file"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v25

    move-object/from16 v15, v16

    goto :goto_5

    :catch_5
    move-exception v7

    move-object/from16 v15, v16

    goto :goto_4

    :cond_5
    move-object/from16 v15, v16

    goto :goto_3
.end method

.method public static setImageBuffer(Ljava/lang/String;II[B)V
    .locals 9
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # I
    .param p3    # [B

    const-string v2, ".jpg"

    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, p3, v6, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v6, "GolfViewerUtils"

    const-string v7, "setImageBuffer : failed to close Camera setImageBuffer file"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v6, "GolfViewerUtils"

    const-string v7, "setImageBuffer : failed to close Camera setImageBuffer file"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    const-string v6, "GolfViewerUtils"

    const-string v7, "setImageBuffer : failed to close Camera setImageBuffer file"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_1

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_1
    :goto_4
    throw v6

    :catch_5
    move-exception v1

    const-string v7, "GolfViewerUtils"

    const-string v8, "setImageBuffer : failed to close Camera setImageBuffer file"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v4, v5

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v4, v5

    goto :goto_1

    :cond_2
    move-object v4, v5

    goto :goto_0
.end method
