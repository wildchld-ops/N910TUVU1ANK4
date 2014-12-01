.class public Lcom/sec/orca/shop/client/library/MruDataManager;
.super Landroid/database/DataSetObservable;
.source "MruDataManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileName:Ljava/lang/String;

.field private mLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/orca/shop/client/library/MruDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/orca/shop/client/library/MruDataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/orca/shop/client/library/MruDataManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object p1, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mFileName:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    iput p3, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mLimit:I

    invoke-direct {p0}, Lcom/sec/orca/shop/client/library/MruDataManager;->readFromFile()V

    return-void
.end method

.method private readFromFile()V
    .locals 11

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mFileName:Ljava/lang/String;

    invoke-direct {v5, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    if-eqz v2, :cond_5

    array-length v8, v2

    iget v10, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mLimit:I

    if-le v8, v10, :cond_5

    new-instance v8, Ljava/lang/Exception;

    const-string v10, "Saved data length is bigger than limit count."

    invoke-direct {v8, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v3

    move-object v4, v5

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    new-array v2, v9, [Ljava/lang/Object;

    :cond_2
    array-length v10, v2

    move v8, v9

    :goto_2
    if-lt v8, v10, :cond_4

    return-void

    :catchall_0
    move-exception v8

    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    :cond_3
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    aget-object v1, v2, v8

    iget-object v9, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_0

    :cond_5
    move-object v4, v5

    goto :goto_1
.end method

.method private writeToFile()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mFileName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/sec/orca/shop/client/library/MruDataManager;->writeToFile()V

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public getData()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public removeData(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/orca/shop/client/library/MruDataManager;->writeToFile()V

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public updateData(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mLimit:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0}, Lcom/sec/orca/shop/client/library/MruDataManager;->writeToFile()V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public updateData(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/sec/orca/shop/client/library/MruDataManager;->writeToFile()V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v3, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mLimit:I

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/orca/shop/client/library/MruDataManager;->mDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method
