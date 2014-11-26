.class public Lcom/sec/orca/shop/client/library/ShopConstants;
.super Ljava/lang/Object;
.source "ShopConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;
    }
.end annotation


# static fields
.field private static final BASE_URI:Landroid/net/Uri;

.field public static final COL_DOWNLOAD_ID:Ljava/lang/String; = "item_id"

.field public static final COL_DOWNLOAD_INSTALL:Ljava/lang/String; = "install"

.field public static final COL_DOWNLOAD_LATEST_VER:Ljava/lang/String; = "latest_version"

.field public static final COL_DOWNLOAD_LOCAL_VER:Ljava/lang/String; = "local_version"

.field public static final COL_STICKER_ID:Ljava/lang/String; = "sticker_id"

.field public static final COL_STICKER_SENT_TIME:Ljava/lang/String; = "sent_time"

.field private static final CONTENT_AUTHORITY:Ljava/lang/String; = "com.sec.orca.shopagent.provider"

.field public static final DOWNLOAD_PROGRESS_CHANGED:I = 0x6

.field private static final DOWNLOAD_TABLE:Ljava/lang/String; = "download_item"

.field public static final KEY_INSTALL:Ljava/lang/String; = "key_install"

.field public static final KEY_ITEM_ID:Ljava/lang/String; = "key_item_id"

.field public static final KEY_PROGRESS:Ljava/lang/String; = "key_progress"

.field public static final MESSAGE_CANCEL_STICKER_PACKAGE:I = 0x2

.field public static final MESSAGE_DOWNLOAD_STICKER_PACKAGE:I = 0x1

.field private static final PATH_CATEGORY:Ljava/lang/String; = "category"

.field private static final PATH_ITEM_ID:Ljava/lang/String; = "item_id"

.field private static final PATH_PANEL_FILE_DES:Ljava/lang/String; = "panel_file_des"

.field private static final PATH_RECENTUSED:Ljava/lang/String; = "recent_used"

.field private static final PATH_STICKER_FILE:Ljava/lang/String; = "sticker_file_path"

.field private static final PATH_STICKER_FILE_DES:Ljava/lang/String; = "sticker_file_des"

.field private static final PATH_STICKER_ID:Ljava/lang/String; = "sticker_id"

.field public static final SHOPAGENT_PACKAGENAME:Ljava/lang/String; = "com.sec.orca.shopagent"

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_FAILED:I = 0x5

.field public static final STATUS_FINISHED:I = 0x4

.field public static final STATUS_INSTALLING:I = 0x2

.field public static final STICKER_DOWNLOAD_ACTION:Ljava/lang/String; = "com.sec.orca.shopagent.DOWNLOAD_ACTION"

.field private static final STICKER_TABLE:Ljava/lang/String; = "sticker_item"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.orca.shopagent.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/orca/shop/client/library/ShopConstants;->BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPanelFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lcom/sec/orca/shop/client/library/ShopConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sticker_item"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "panel_file_des"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildRecentStickerUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/orca/shop/client/library/ShopConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sticker_item"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "recent_used"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildStickerFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lcom/sec/orca/shop/client/library/ShopConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sticker_item"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sticker_file_des"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildStickerPackageListUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/orca/shop/client/library/ShopConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "download_item"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->Sticker:Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;

    invoke-virtual {v1}, Lcom/sec/orca/shop/client/library/ShopConstants$ItemType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildStickerPathUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/orca/shop/client/library/ShopConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "download_item"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sticker_file_path"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildStickerUriById(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lcom/sec/orca/shop/client/library/ShopConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sticker_item"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sticker_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildStickerUriByPackage(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lcom/sec/orca/shop/client/library/ShopConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sticker_item"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
