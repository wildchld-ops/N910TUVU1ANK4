.class public Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;
.super Ljava/lang/Object;
.source "MultiUserPreferences.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiUserPreferences"


# instance fields
.field private final DEBUG:Z

.field private isSupportMum:Z

.field private mContext:Landroid/content/Context;

.field private mDoc:Lorg/w3c/dom/Document;

.field private mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mUserDataXml:Ljava/io/File;

.field private mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Context;
    .param p3    # Z

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->DEBUG:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    iput v1, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserId:I

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    iput-object p2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserId:I

    iget-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->openUserData(Z)V

    goto :goto_0
.end method

.method private validate(Lorg/w3c/dom/Document;)Z
    .locals 5
    .param p1    # Lorg/w3c/dom/Document;

    const/4 v1, 0x0

    const-string v2, "MultiUserPreferences"

    const-string v3, "validate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    :cond_1
    return-void
.end method

.method public commit()V
    .locals 9

    const-string v7, "MultiUserPreferences"

    const-string v8, "commit"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v7, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v7, "encoding"

    const-string v8, "UTF-8"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "indent"

    const-string v8, "yes"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {v4, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v4, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v1, :cond_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_2
    :goto_5
    throw v7

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v1, v2

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_a
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    move v1, p2

    iget-boolean v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    const-string v2, "Boolean"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->readElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    move v1, p2

    iget-boolean v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    const-string v2, "Int"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->readElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    move-object v1, p2

    iget-boolean v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    const-string v2, "String"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->readElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v1, p2

    iget-boolean v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    const-string v2, "StringSet"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->readElementSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public openUserData(Z)V
    .locals 6
    .param p1    # Z

    const-string v3, "MultiUserPreferences"

    const-string v4, "openUserData"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    if-eqz p1, :cond_2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/userfile_for_penwindow_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v3}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->validate(Lorg/w3c/dom/Document;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/userfile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string v1, "Boolean"

    if-eqz p2, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->writeElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, "Int"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->writeElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, "String"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->writeElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->isSupportMum:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, "StringSet"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->writeElementSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public readElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v4, "MultiUserPreferences"

    const-string v5, "readElement"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v4, "key"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public readElementSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v9, "MultiUserPreferences"

    const-string v10, "readElementSet"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v10, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v5, v9, :cond_1

    invoke-interface {v8, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string v9, "key"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "Item"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v7, v9, :cond_0

    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_2

    :goto_2
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public removeUserData(I)V
    .locals 4
    .param p1    # I

    const-string v1, "MultiUserPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeUserData - userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/userfile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public writeElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const-string v6, "MultiUserPreferences"

    const-string v7, "writeElement"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v6, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v6, "key"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5, v2}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v6, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v6, "key"

    invoke-interface {v3, v6, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, p3}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public writeElementSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v9, "MultiUserPreferences"

    const-string v10, "writeElement"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_0

    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const-string v9, "key"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8, v4}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v8, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v9, "key"

    invoke-interface {v5, v9, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    const-string v10, "Item"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
