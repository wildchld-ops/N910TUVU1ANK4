.class public Lcom/android/keyguard/MultiUserAvatarCache;
.super Ljava/lang/Object;
.source "MultiUserAvatarCache.java"


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MultiUserAvatarCache;->mCache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/MultiUserAvatarCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/MultiUserAvatarCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public put(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # I
    .param p2    # Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/keyguard/MultiUserAvatarCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
