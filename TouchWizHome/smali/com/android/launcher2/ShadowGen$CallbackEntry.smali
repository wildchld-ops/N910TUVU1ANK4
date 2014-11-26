.class Lcom/android/launcher2/ShadowGen$CallbackEntry;
.super Ljava/lang/Object;
.source "ShadowGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ShadowGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackEntry"
.end annotation


# instance fields
.field callback:Lcom/android/launcher2/ShadowGen$GeneratedCallback;

.field handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/ShadowGen$1;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/ShadowGen$1;

    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen$CallbackEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public post(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$CallbackEntry;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/ShadowGen$CallbackEntry$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/ShadowGen$CallbackEntry$1;-><init>(Lcom/android/launcher2/ShadowGen$CallbackEntry;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
