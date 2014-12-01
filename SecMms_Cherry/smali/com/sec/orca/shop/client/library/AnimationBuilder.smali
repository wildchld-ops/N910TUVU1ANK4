.class public final Lcom/sec/orca/shop/client/library/AnimationBuilder;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRAME_DURATION:I = 0x1f4

.field private static final INDEX_OF_DURATION:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TOKENIZER:Ljava/lang/String; = "_"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/orca/shop/client/library/AnimationBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/orca/shop/client/library/AnimationBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnimationDrawable(Landroid/content/Context;Ljava/io/File;Ljava/io/FilenameFilter;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {p0, p1, p2}, Lcom/sec/orca/shop/client/library/AnimationBuilder;->createAnimationDrawableList(Landroid/content/Context;Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;

    invoke-virtual {v2}, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;->getDuration()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method public static createAnimationDrawable(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "InputStream is null "

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v4, 0xa0

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    move-object v3, v2

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {v0, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    return-object v0
.end method

.method public static createAnimationDrawableList(Landroid/content/Context;Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Argument isn\'t directory. "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const/4 v4, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    :goto_0
    array-length v6, v4

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "The directory is empty. "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/sec/orca/shop/client/library/AnimationBuilder$1;

    invoke-direct {v6}, Lcom/sec/orca/shop/client/library/AnimationBuilder$1;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v4

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v7, :cond_4

    return-object v2

    :cond_4
    aget-object v3, v4, v6

    new-instance v5, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;

    invoke-direct {v5}, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/orca/shop/client/library/AnimationBuilder;->getDurationFromFileName(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;->setDuration(I)V

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v8, 0xa0

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    invoke-virtual {v5, v1}, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;->setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/sec/orca/shop/client/library/AnimationBuilder;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " Frame >> Path: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Duration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;->getDuration()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private static getDurationFromFileName(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/orca/shop/client/library/AnimationBuilder;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x1f4

    goto :goto_0
.end method
