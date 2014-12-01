.class public Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;
.super Ljava/lang/Object;
.source "SecondaryKeyManager.java"


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;


# instance fields
.field private mCachedKeyCode:I

.field private mCachedSecondaryKeyCode:I

.field private mCurrentSecondaryKeyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryKeyMapSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->sInstance:Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCurrentSecondaryKeyMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCachedKeyCode:I

    const/16 v0, -0xff

    iput v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCachedSecondaryKeyCode:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->sInstance:Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->sInstance:Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->sInstance:Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getSecondaryKey(I)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCachedKeyCode:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCachedSecondaryKeyCode:I

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCurrentSecondaryKeyMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCurrentSecondaryKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;

    :cond_1
    if-nez v0, :cond_2

    const/16 v1, -0xff

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCachedKeyCode:I

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getSecondaryKeyCode()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCachedSecondaryKeyCode:I

    iget v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCachedSecondaryKeyCode:I

    goto :goto_0
.end method

.method public final initialize()V
    .locals 2

    new-instance v0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;-><init>()V

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMapSet()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    return-void
.end method

.method public setInputLanguage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCurrentSecondaryKeyMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCachedKeyCode:I

    const/16 v0, -0xff

    iput v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->mCachedSecondaryKeyCode:I

    :cond_0
    return-void
.end method
