.class public final Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ShootingModesColumns;
.super Ljava/lang/Object;
.source "ItemsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/ItemsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShootingModesColumns"
.end annotation


# static fields
.field static final DELETED:Ljava/lang/String; = "deleted"

.field static final DOWNLOADED:Ljava/lang/String; = "downloaded"

.field static final ICON_ID:Ljava/lang/String; = "icon_res_id"

.field static final INDEX_DELETED:I = 0x3

.field static final INDEX_DOWNLOADED:I = 0x6

.field static final INDEX_ICON_RES_ID:I = 0x1

.field static final INDEX_ID:I = 0x0

.field static final INDEX_ORDER:I = 0x4

.field static final INDEX_PACKAGE_NAME:I = 0x5

.field static final INDEX_TITLE:I = 0x2

.field static final ORDER:Ljava/lang/String; = "sm_order"

.field static final PACKAGE_NAME:Ljava/lang/String; = "name"

.field static final PROJECTION:[Ljava/lang/String;

.field static final TITLE:Ljava/lang/String; = "title"

.field public static final _ID:Ljava/lang/String; = "_ID"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "icon_res_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sm_order"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "downloaded"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ShootingModesColumns;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
