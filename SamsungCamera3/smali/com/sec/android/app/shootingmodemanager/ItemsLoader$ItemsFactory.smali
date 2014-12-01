.class Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsFactory;
.super Ljava/lang/Object;
.source "ItemsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/ItemsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemsFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createItem(Landroid/database/Cursor;)Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x3

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v5, 0x4

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v5, 0x5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v2, :cond_0

    if-lez v3, :cond_0

    new-instance v0, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    if-nez v8, :cond_1

    move v5, v7

    :goto_0
    if-ne v9, v7, :cond_2

    :goto_1
    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;-><init>(ILjava/lang/String;ILjava/lang/String;ZIZ)V

    :cond_0
    return-object v0

    :cond_1
    move v5, v10

    goto :goto_0

    :cond_2
    move v7, v10

    goto :goto_1
.end method
