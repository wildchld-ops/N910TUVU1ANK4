.class Lcom/android/launcher2/PkgResCache$PkgEntry;
.super Ljava/lang/Object;
.source "PkgResCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PkgResCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PkgEntry"
.end annotation


# instance fields
.field private final mBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/PkgResCache$1;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/PkgResCache$1;

    invoke-direct {p0}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;
    .locals 1
    .param p0    # Lcom/android/launcher2/PkgResCache$PkgEntry;

    iget-object v0, p0, Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;
    .locals 1
    .param p0    # Lcom/android/launcher2/PkgResCache$PkgEntry;

    iget-object v0, p0, Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;

    return-object v0
.end method
