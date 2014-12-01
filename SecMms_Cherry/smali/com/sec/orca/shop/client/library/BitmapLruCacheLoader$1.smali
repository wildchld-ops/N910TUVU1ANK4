.class Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader$1;
.super Landroid/support/v4/util/LruCache;
.source "BitmapLruCacheLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;


# direct methods
.method constructor <init>(Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader$1;->this$0:Lcom/sec/orca/shop/client/library/BitmapLruCacheLoader;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    :try_start_0
    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    mul-int/2addr v3, v4

    return v3

    :catch_0
    move-exception v2

    throw v2
.end method
