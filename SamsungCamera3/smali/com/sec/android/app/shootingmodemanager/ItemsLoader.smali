.class public Lcom/sec/android/app/shootingmodemanager/ItemsLoader;
.super Landroid/app/Fragment;
.source "ItemsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoadTask;,
        Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;,
        Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsFactory;,
        Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ShootingModesColumns;
    }
.end annotation


# static fields
.field private static final BASE_SHOOTING_MODES_URI:Landroid/net/Uri;

.field private static final SCREEN_MAX_ITEMS:I = 0xf

.field private static final SHOOTING_MODES_INCLUDE_DELETED_URI:Landroid/net/Uri;

.field public static final SHOOTING_MODE_AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.shootingmodeprovider"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_REPORT_INTERVAL:I = 0x5


# instance fields
.field private mExternalShootingModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalShootingModesOrder:Landroid/util/SparseIntArray;

.field private mOwner:Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->TAG:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.provider.shootingmodeprovider/shooting_modes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->BASE_SHOOTING_MODES_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.shootingmodeprovider/shooting_modes/include_deleted"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->SHOOTING_MODES_INCLUDE_DELETED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModes:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModesOrder:Landroid/util/SparseIntArray;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->SHOOTING_MODES_INCLUDE_DELETED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mOwner:Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;

    return-void
.end method

.method public getAlignedPosition(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModesOrder:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public getBaseUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->BASE_SHOOTING_MODES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getExternalItemAt(I)Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    return-object v0
.end method

.method public getExternalItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public insert(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public loadExternalItems(Landroid/content/Context;Z)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v2, Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoadTask;

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoadTask;-><init>(Lcom/sec/android/app/shootingmodemanager/ItemsLoader;Landroid/content/Context;Z)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mOwner:Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;

    return-void
.end method

.method setItems(Ljava/util/ArrayList;Landroid/util/SparseIntArray;)V
    .locals 1
    .param p2    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModes:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mExternalShootingModesOrder:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mOwner:Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mOwner:Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;

    invoke-interface {v0}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;->viewsRefreshed()V

    :cond_0
    return-void
.end method

.method public setOwner(Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->mOwner:Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;

    return-void
.end method

.method public updateHide(Landroid/content/Context;ZLcom/sec/android/app/shootingmodemanager/ShootingModeItem;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->SHOOTING_MODES_INCLUDE_DELETED_URI:Landroid/net/Uri;

    const-string v2, "deleted"

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "deleted"

    if-eqz p2, :cond_0

    const-string v4, "0"

    :goto_0
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v4, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->BASE_SHOOTING_MODES_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    return-void

    :cond_0
    const-string v4, "1"

    goto :goto_0
.end method
