.class public Lcom/diotek/ime/framework/util/AssetXmlManager;
.super Ljava/lang/Object;
.source "AssetXmlManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirectory:Ljava/lang/String;

.field private mFileList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    iput-object v1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mFileList:[Ljava/lang/String;

    iput-object v1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    iput-object v0, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mFileList:[Ljava/lang/String;

    iput-object v0, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    iput-object p2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getXmlFileFromAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw v5
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/util/AssetXmlManager;->getXmlFiles()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public createXmlParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/util/AssetXmlManager;->getXmlFileFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    move-object v3, v1

    goto :goto_0
.end method

.method public getXmlFiles()[Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mFileList:[Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mFileList:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mFileList:[Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
