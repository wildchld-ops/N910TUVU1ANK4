.class Lcom/android/launcher2/ShadowGen$QueuedBitmap;
.super Ljava/lang/Object;
.source "ShadowGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ShadowGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueuedBitmap"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShadowGen$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->callbacks:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/ShadowGen$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen$QueuedBitmap;-><init>()V

    return-void
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
