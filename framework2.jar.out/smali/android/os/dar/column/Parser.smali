.class public Landroid/os/dar/column/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxDBKeyStore.Parser"

.field public static final XML_TAG_COLUMN:Ljava/lang/String; = "column"

.field public static final XML_TAG_NAME:Ljava/lang/String; = "name"

.field public static final XML_TAG_TYPE:Ljava/lang/String; = "type"

.field public static final XML_TAG_URI:Ljava/lang/String; = "uri"

.field public static final XML_VALUE_TYPE_SENSITIVE:Ljava/lang/String; = "sensitive"


# instance fields
.field factory:Lorg/xmlpull/v1/XmlPullParserFactory;

.field is:Ljava/io/InputStream;

.field xpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1    # Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/dar/column/Parser;->is:Ljava/io/InputStream;

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Landroid/os/dar/column/Parser;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    iget-object v1, p0, Landroid/os/dar/column/Parser;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    iget-object v1, p0, Landroid/os/dar/column/Parser;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Landroid/os/dar/column/Parser;->is:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    const-string v1, "KnoxDBKeyStore.Parser"

    const-string v2, "can\'t create XmlPullParser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public scan()Landroid/os/dar/column/Column;
    .locals 15

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, v6

    :cond_0
    :goto_0
    :try_start_0
    iget-object v12, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v14, :cond_2

    if-nez v5, :cond_1

    const-string v12, "KnoxDBKeyStore.Parser"

    const-string v13, "Start Document"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v6, v7

    :goto_1
    const-string v12, "KnoxDBKeyStore.Parser"

    const-string v13, "Failed to parse URI"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v11

    :goto_2
    return-object v1

    :cond_1
    if-ne v5, v14, :cond_3

    :try_start_1
    const-string v12, "KnoxDBKeyStore.Parser"

    const-string v13, "End Document"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v6, v7

    move-object v1, v11

    goto :goto_2

    :cond_3
    const/4 v12, 0x2

    if-ne v5, v12, :cond_4

    iget-object v12, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v12, "column"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v12, 0x3

    if-ne v5, v12, :cond_6

    iget-object v12, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const-string v12, "column"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v1, Landroid/os/dar/column/Column;

    invoke-direct {v1, v10, v7, v0}, Landroid/os/dar/column/Column;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    const-string v12, "KnoxDBKeyStore.Parser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Column scanned > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Landroid/os/dar/column/Column;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    const/4 v12, 0x4

    if-ne v5, v12, :cond_0

    iget-object v12, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    if-eqz v3, :cond_0

    if-nez v2, :cond_7

    const-string v12, "KnoxDBKeyStore.Parser"

    const-string v13, "Column tag not started"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v12, "uri"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :cond_8
    const-string/jumbo v12, "name"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    :try_start_2
    const-string/jumbo v12, "type"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string/jumbo v12, "sensitive"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    sget v12, Landroid/os/dar/column/Column;->ATTR_SENSITIVE:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    or-int/2addr v0, v12

    :cond_9
    move-object v7, v6

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto/16 :goto_1

    :cond_a
    move-object v6, v7

    goto :goto_3
.end method
