.class public Lcom/android/incallui/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ImageCache$RetainFragment;,
        Lcom/android/incallui/ImageCache$ImageCacheParams;
    }
.end annotation


# instance fields
.field private mCacheParams:Lcom/android/incallui/ImageCache$ImageCacheParams;

.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/incallui/ImageCache$ImageCacheParams;)V
    .locals 0
    .param p1    # Lcom/android/incallui/ImageCache$ImageCacheParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/incallui/ImageCache;->init(Lcom/android/incallui/ImageCache$ImageCacheParams;)V

    return-void
.end method

.method public static findOrCreateCache(Landroid/app/FragmentManager;Lcom/android/incallui/ImageCache$ImageCacheParams;)Lcom/android/incallui/ImageCache;
    .locals 2
    .param p0    # Landroid/app/FragmentManager;
    .param p1    # Lcom/android/incallui/ImageCache$ImageCacheParams;

    invoke-static {p0}, Lcom/android/incallui/ImageCache;->findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/android/incallui/ImageCache$RetainFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/ImageCache$RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ImageCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/ImageCache;

    invoke-direct {v0, p1}, Lcom/android/incallui/ImageCache;-><init>(Lcom/android/incallui/ImageCache$ImageCacheParams;)V

    invoke-virtual {v1, v0}, Lcom/android/incallui/ImageCache$RetainFragment;->setObject(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/android/incallui/ImageCache$RetainFragment;
    .locals 3
    .param p0    # Landroid/app/FragmentManager;

    const-string v1, "ImageCache"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ImageCache$RetainFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/ImageCache$RetainFragment;

    invoke-direct {v0}, Lcom/android/incallui/ImageCache$RetainFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "ImageCache"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-object v0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method private init(Lcom/android/incallui/ImageCache$ImageCacheParams;)V
    .locals 3
    .param p1    # Lcom/android/incallui/ImageCache$ImageCacheParams;

    iput-object p1, p0, Lcom/android/incallui/ImageCache;->mCacheParams:Lcom/android/incallui/ImageCache$ImageCacheParams;

    iget-object v0, p0, Lcom/android/incallui/ImageCache;->mCacheParams:Lcom/android/incallui/ImageCache$ImageCacheParams;

    iget-boolean v0, v0, Lcom/android/incallui/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "ImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Memory cache created (size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ImageCache;->mCacheParams:Lcom/android/incallui/ImageCache$ImageCacheParams;

    iget v2, v2, Lcom/android/incallui/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/incallui/ImageCache$1;

    iget-object v1, p0, Lcom/android/incallui/ImageCache;->mCacheParams:Lcom/android/incallui/ImageCache$ImageCacheParams;

    iget v1, v1, Lcom/android/incallui/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/ImageCache$1;-><init>(Lcom/android/incallui/ImageCache;I)V

    iput-object v0, p0, Lcom/android/incallui/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    :cond_0
    return-void
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearCache()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    const-string v0, "ImageCache"

    const-string v1, "Memory cache cleared"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v1, :cond_0

    const-string v1, "ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LruCache size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->maxSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v1, "ImageCache"

    const-string v2, "Memory cache hit"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
