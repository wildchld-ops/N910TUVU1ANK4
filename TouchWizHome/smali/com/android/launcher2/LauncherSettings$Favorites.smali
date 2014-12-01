.class final Lcom/android/launcher2/LauncherSettings$Favorites;
.super Ljava/lang/Object;
.source "LauncherSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Favorites"
.end annotation


# static fields
.field static final APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field static final CELLX:Ljava/lang/String; = "cellX"

.field static final CELLY:Ljava/lang/String; = "cellY"

.field static final COLOR:Ljava/lang/String; = "color"

.field static final CONTAINER:Ljava/lang/String; = "container"

.field static final CONTAINER_DESKTOP:I = -0x64

.field static final CONTAINER_HOTSEAT:I = -0x65

.field static final CONTAINER_MENU:I = -0x66

.field static final CONTENT_URI:Landroid/net/Uri;

.field static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

.field static final DND_HEADER:Ljava/lang/String; = "DragAndDropBinding"

.field static final DND_ITEM_TYPE_APPLICATION:I = 0x0

.field static final DND_ITEM_TYPE_APPWIDGET:I = 0x3

.field static final DND_ITEM_TYPE_SAMSUNG_APPWIDGET:I = 0x4

.field static final DND_ITEM_TYPE_SHORTCUT:I = 0x1

.field static final DND_ITEM_TYPE_SHORTCUT_INSTALL:I = 0x2

.field static final DND_ITEM_TYPE_SURFACE_WIDGET:I = 0x5

.field static final FESTIVAL:Ljava/lang/String; = "festival"

.field static final ICON:Ljava/lang/String; = "icon"

.field static final ICON_MOVIE_URI:Ljava/lang/String; = "iconMovieUri"

.field static final ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field static final ICON_RESOURCE:Ljava/lang/String; = "iconResource"

.field static final ICON_TYPE:Ljava/lang/String; = "iconType"

.field static final ICON_TYPE_BITMAP:I = 0x1

.field static final ICON_TYPE_RESOURCE:I = 0x0

.field static final INTENT:Ljava/lang/String; = "intent"

.field static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field static final ITEM_TYPE_APPLICATION:I = 0x0

.field static final ITEM_TYPE_APPWIDGET:I = 0x4

.field static final ITEM_TYPE_FOLDER:I = 0x2

.field static final ITEM_TYPE_LIVE_FOLDER:I = 0x3

.field static final ITEM_TYPE_SAMSUNG_APPWIDGET:I = 0x384

.field static final ITEM_TYPE_SHORTCUT:I = 0x1

.field static final ITEM_TYPE_SHORTCUT_INSTALL:I = 0x64

.field static final ITEM_TYPE_SURFACE_WIDGET:I = 0x385

.field static final ITEM_TYPE_WIDGET_CLOCK:I = 0x3e8

.field static final ITEM_TYPE_WIDGET_PHOTO_FRAME:I = 0x3ea

.field static final ITEM_TYPE_WIDGET_SEARCH:I = 0x3e9

.field static final SAMPLE_PKG_NAME:Ljava/lang/String; = "pkgName"

.field static final SCREEN:Ljava/lang/String; = "screen"

.field static final SECRET:Ljava/lang/String; = "secret"

.field static final SPANX:Ljava/lang/String; = "spanX"

.field static final SPANY:Ljava/lang/String; = "spanY"

.field static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.launcher.settings/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.launcher.settings/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CONTENT_URI()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.launcher.settings/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static CONTENT_URI_NO_NOTIFICATION()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.launcher.settings/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static convertToLocalItemType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x384

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x385

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static getContentUri(JZ)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.android.app.launcher.settings/favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
