.class public Lcom/sec/android/app/camera/gallery/ImageListUber;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImageList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/gallery/ImageListUber$1;,
        Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;,
        Lcom/sec/android/app/camera/gallery/ImageListUber$AscendingComparator;,
        Lcom/sec/android/app/camera/gallery/ImageListUber$DescendingComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageListUber"


# instance fields
.field private mLastListIndex:I

.field private final mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipCounts:[I

.field private mSkipList:[J

.field private mSkipListSize:I

.field private final mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;


# direct methods
.method public constructor <init>([Lcom/sec/android/app/camera/gallery/IImageList;I)V
    .locals 8
    .param p1    # [Lcom/sec/android/app/camera/gallery/IImageList;
    .param p2    # I

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sec/android/app/camera/gallery/IImageList;

    iput-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    new-instance v5, Ljava/util/PriorityQueue;

    const/4 v6, 0x4

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    new-instance v4, Lcom/sec/android/app/camera/gallery/ImageListUber$AscendingComparator;

    invoke-direct {v4, v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$AscendingComparator;-><init>(Lcom/sec/android/app/camera/gallery/ImageListUber$1;)V

    :goto_0
    invoke-direct {v5, v6, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    const/16 v4, 0x10

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->clear()V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v2, v4

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    aget-object v1, v4, v0

    new-instance v3, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    invoke-direct {v3, v1, v0}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;-><init>(Lcom/sec/android/app/camera/gallery/IImageList;I)V

    invoke-virtual {v3}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/sec/android/app/camera/gallery/ImageListUber$DescendingComparator;

    invoke-direct {v4, v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$DescendingComparator;-><init>(Lcom/sec/android/app/camera/gallery/ImageListUber$1;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private modifySkipCountForDeletedImage(I)V
    .locals 9
    .param p1    # I

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v4, v6, v0

    const-wide/16 v6, -0x1

    and-long/2addr v6, v4

    long-to-int v2, v6

    add-int v6, v3, v2

    if-le v6, p1, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    const-wide/16 v7, 0x1

    sub-long v7, v4, v7

    aput-wide v7, v6, v0

    :cond_0
    return-void

    :cond_1
    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private nextMergeSlot()Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    .locals 10

    const-wide/16 v8, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget v3, v1, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    add-int/lit8 v0, v3, -0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v4, v3, v0

    add-long/2addr v4, v8

    aput-wide v4, v3, v0

    goto :goto_0

    :cond_1
    iget v3, v1, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    iput v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    array-length v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [J

    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    iget v5, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v5, v8

    aput-wide v5, v3, v4

    goto :goto_0
.end method

.method private removeImage(Lcom/sec/android/app/camera/gallery/IImage;I)Z
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/gallery/IImage;
    .param p2    # I

    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->getContainer()Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->removeImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/gallery/ImageListUber;->modifySkipCountForDeletedImage(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v1, v2

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getCount()I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 14
    .param p1    # I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getCount()I

    move-result v11

    if-le p1, v11, :cond_1

    :cond_0
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " out of range max is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    :goto_0
    if-ge v0, v1, :cond_6

    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v8, v11, v0

    const-wide/16 v11, -0x1

    and-long/2addr v11, v8

    long-to-int v2, v11

    const/16 v11, 0x20

    shr-long v11, v8, v11

    long-to-int v10, v11

    add-int v11, v4, v2

    if-le v11, p1, :cond_3

    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    aget v11, v11, v10

    sub-int v12, p1, v4

    add-int v7, v11, v12

    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    aget-object v11, v11, v10

    invoke-interface {v11, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    add-int/2addr v4, v2

    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    aget v12, v11, v10

    add-int/2addr v12, v2

    aput v12, v11, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->nextMergeSlot()Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    move-result-object v6

    if-nez v6, :cond_7

    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    if-ne v4, p1, :cond_4

    iget-object v3, v6, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 5
    .param p1    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I
    .locals 14
    .param p1    # Lcom/sec/android/app/camera/gallery/IImage;

    const/4 v11, -0x1

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->getContainer()Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    iget-object v12, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-static {v12, v1}, Lcom/sec/android/app/camera/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v11, :cond_0

    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v3

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    :goto_0
    if-ge v0, v4, :cond_6

    iget-object v12, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v8, v12, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v12, -0x1

    and-long/2addr v12, v8

    long-to-int v5, v12

    const/16 v12, 0x20

    shr-long v12, v8, v12

    long-to-int v10, v12

    if-ne v10, v2, :cond_3

    if-ge v3, v5, :cond_2

    add-int v11, v6, v3

    :cond_1
    :goto_1
    monitor-exit p0

    return v11

    :cond_2
    sub-int/2addr v3, v5

    :cond_3
    add-int/2addr v6, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v12, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->nextMergeSlot()Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v12, v7, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    if-ne v12, p1, :cond_4

    invoke-virtual {v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    move v11, v6

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImageList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public removeImage(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 1
    .param p1    # Lcom/sec/android/app/camera/gallery/IImage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->removeImage(Lcom/sec/android/app/camera/gallery/IImage;I)Z

    move-result v0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 2
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/gallery/ImageListUber;->removeImage(Lcom/sec/android/app/camera/gallery/IImage;I)Z

    move-result v1

    goto :goto_0
.end method
