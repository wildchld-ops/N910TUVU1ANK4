.class public Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "CaptureImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/CaptureImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mGalleryItemBackground:I

.field final synthetic this$0:Lcom/android/phone/callsettings/CaptureImageViewer;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/CaptureImageViewer;Landroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f02030a

    iput v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mGalleryItemBackground:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 9

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$400(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$300(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_data like \'%.vcy\' or _data like \'%.vci\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v8

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v7

    const-string v0, "CaptureImageViewer"

    const-string v1, "SQLiteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    new-instance v20, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "mime_type"

    aput-object v6, v7, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$400(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$300(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/net/Uri;

    move-result-object v6

    const-string v8, "_data like \'%.vcy\' or _data like \'%.vci\'"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    if-eqz v14, :cond_2

    :try_start_1
    move/from16 v0, p1

    invoke-interface {v14, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    # invokes: Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    invoke-static {v14, v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$500(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    invoke-static {v14, v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$500(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    invoke-static {v14, v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$500(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "videocallimages/jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    invoke-static {v14, v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$500(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "videocallimages/jpeg-scramble"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    # invokes: Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    invoke-static {v14, v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$500(Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    :cond_1
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v11, :cond_4

    const-string v5, ".vci"

    invoke-virtual {v11, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v12, :cond_5

    :cond_3
    move-object/from16 v0, v21

    invoke-static {v11, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_1
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v22, v0

    new-instance v5, Landroid/widget/Gallery$LayoutParams;

    move/from16 v0, v25

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v22

    move/from16 v3, v22

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mGalleryItemBackground:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-object v20

    :catchall_0
    move-exception v5

    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v15

    const-string v5, "CaptureImageViewer"

    const-string v6, "SQLiteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v5, ".vcy"

    invoke-virtual {v11, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_4
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v13, v5

    if-lez v13, :cond_7

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-array v0, v13, [B

    move-object/from16 v24, v0

    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    new-instance v23, Lcom/android/phone/callsettings/ScrambleLib;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/android/phone/callsettings/ScrambleLib;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x20

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13, v5}, Lcom/android/phone/callsettings/ScrambleLib;->setScrambleData([BII)V

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/callsettings/ScrambleLib;->decode()Z

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-static {v0, v8, v13, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v15

    move-object/from16 v16, v17

    :goto_3
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v16, :cond_4

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v16, v17

    :cond_7
    if-eqz v16, :cond_4

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_4
    move-exception v15

    :goto_4
    :try_start_9
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v16, :cond_4

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    :goto_5
    if-eqz v16, :cond_8

    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_8
    :goto_6
    throw v5

    :catch_6
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_2
    move-exception v5

    move-object/from16 v16, v17

    goto :goto_5

    :catch_7
    move-exception v15

    move-object/from16 v16, v17

    goto :goto_4

    :catch_8
    move-exception v15

    goto :goto_3
.end method
