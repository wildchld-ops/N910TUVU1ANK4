.class public Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;
.super Ljava/lang/Object;
.source "BitmapLruCacheLoader.java"

# interfaces
.implements Lcom/sec/orca/shop/client/library/ICacheLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/orca/shop/client/library/ICacheLoader",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x100000


# instance fields
.field private mCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader$1;-><init>(Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;I)V

    iput-object v0, p0, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;->mCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public static buildBitmapLruCacheLoader()Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;
    .locals 1

    new-instance v0, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;

    invoke-direct {v0}, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;-><init>()V

    return-object v0
.end method

.method public static buildBitmapLruCacheLoader(I)Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;
    .locals 1

    new-instance v0, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;

    invoke-direct {v0, p0}, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;->mCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;->mCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;->mCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;->mCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
