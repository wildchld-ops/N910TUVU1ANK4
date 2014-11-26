.class public Lcom/android/launcher2/AppIconView$ShadowReadyCallback;
.super Ljava/lang/Object;
.source "AppIconView.java"

# interfaces
.implements Lcom/android/launcher2/ShadowGen$GeneratedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AppIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ShadowReadyCallback"
.end annotation


# instance fields
.field private mItemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/AppIconView;
    .param p2    # Lcom/android/launcher2/BaseItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;->mViewRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;->mItemRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onShadowGenerated(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;->mItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->generateShadowIfNeeded()V

    :cond_0
    return-void
.end method
