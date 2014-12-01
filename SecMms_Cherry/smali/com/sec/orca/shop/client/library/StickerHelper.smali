.class public Lcom/sec/orca/shop/client/library/StickerHelper;
.super Ljava/lang/Object;
.source "StickerHelper.java"


# static fields
.field private static final STICKERFILTER:Ljava/io/FilenameFilter;

.field private static final STICKER_FILE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final STICKER_SIZE:I = 0xf0

.field private static final TAG:Ljava/lang/String;

.field private static mRootStickerPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/orca/shop/client/library/StickerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/orca/shop/client/library/StickerHelper;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/sec/orca/shop/client/library/StickerHelper$1;

    invoke-direct {v0}, Lcom/sec/orca/shop/client/library/StickerHelper$1;-><init>()V

    sput-object v0, Lcom/sec/orca/shop/client/library/StickerHelper;->STICKERFILTER:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPanelDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p1}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildPanelFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v5, 0xa0

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    sget-object v5, Lcom/sec/orca/shop/client/library/StickerHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FileNotFoundException : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createShortcutAniconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p1}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v5, 0xa0

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    sget-object v5, Lcom/sec/orca/shop/client/library/StickerHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FileNotFoundException : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createStickerDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 10

    sget-object v0, Lcom/sec/orca/shop/client/library/StickerHelper;->mRootStickerPath:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerPathUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/orca/shop/client/library/StickerHelper;->mRootStickerPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v7, 0x0

    sget-object v0, Lcom/sec/orca/shop/client/library/StickerHelper;->mRootStickerPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/orca/shop/client/library/StickerHelper;->mRootStickerPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    const/4 v9, 0x0

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    invoke-static {p0, v9}, Lcom/sec/orca/shop/client/library/AnimationBuilder;->createAnimationDrawable(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/drawable/AnimationDrawable;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catch_0
    move-exception v8

    sget-object v0, Lcom/sec/orca/shop/client/library/StickerHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    sget-object v0, Lcom/sec/orca/shop/client/library/StickerHelper;->STICKERFILTER:Ljava/io/FilenameFilter;

    invoke-static {p0, v7, v0}, Lcom/sec/orca/shop/client/library/AnimationBuilder;->createAnimationDrawable(Landroid/content/Context;Ljava/io/File;Ljava/io/FilenameFilter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static triggeringShopAgent(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.orca.shopagent.getitemlist"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
