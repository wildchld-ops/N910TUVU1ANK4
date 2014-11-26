.class final Lcom/android/launcher2/LauncherSettings$AppOrder;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppOrder"
.end annotation


# static fields
.field static final CELL:Ljava/lang/String; = "cell"

.field static final COLOR:Ljava/lang/String; = "color"

.field static final COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field static final CONTENT_URI:Landroid/net/Uri;

.field static final FOLDER_ID:Ljava/lang/String; = "folderId"

.field static final HIDDEN:Ljava/lang/String; = "hidden"

.field static final ID:Ljava/lang/String; = "_id"

.field static final SCREEN:Ljava/lang/String; = "screen"

.field static final SECRET:Ljava/lang/String; = "secret"

.field static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.launcher.settings/appOrder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
