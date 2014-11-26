.class public Lcom/android/launcher2/AppWidgetBinder;
.super Ljava/lang/Object;
.source "AppWidgetBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppWidgetBinder$Callback;
    }
.end annotation


# static fields
.field private static final REQUEST_APPWIDGET_BIND:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AppWidgetBinder"


# instance fields
.field private mHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/LauncherAppWidgetHost;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/Launcher;
    .param p2    # Landroid/appwidget/AppWidgetManager;
    .param p3    # Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/AppWidgetBinder;->mLauncher:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/AppWidgetBinder;->mManager:Landroid/appwidget/AppWidgetManager;

    iput-object p3, p0, Lcom/android/launcher2/AppWidgetBinder;->mHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AppWidgetBinder;Lcom/android/launcher2/AppWidgetBinder$Callback;I)V
    .locals 0
    .param p0    # Lcom/android/launcher2/AppWidgetBinder;
    .param p1    # Lcom/android/launcher2/AppWidgetBinder$Callback;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppWidgetBinder;->onBindSuccessful(Lcom/android/launcher2/AppWidgetBinder$Callback;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/AppWidgetBinder;Lcom/android/launcher2/AppWidgetBinder$Callback;I)V
    .locals 0
    .param p0    # Lcom/android/launcher2/AppWidgetBinder;
    .param p1    # Lcom/android/launcher2/AppWidgetBinder$Callback;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppWidgetBinder;->onBindFailed(Lcom/android/launcher2/AppWidgetBinder$Callback;I)V

    return-void
.end method

.method private onBindFailed(Lcom/android/launcher2/AppWidgetBinder$Callback;I)V
    .locals 1
    .param p1    # Lcom/android/launcher2/AppWidgetBinder$Callback;
    .param p2    # I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher2/AppWidgetBinder$Callback;->onBindFail()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetBinder;->mHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    return-void
.end method

.method private onBindSuccessful(Lcom/android/launcher2/AppWidgetBinder$Callback;I)V
    .locals 0
    .param p1    # Lcom/android/launcher2/AppWidgetBinder$Callback;
    .param p2    # I

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/android/launcher2/AppWidgetBinder$Callback;->onBindSuccess(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public allocateBindNew(Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V
    .locals 5
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Lcom/android/launcher2/AppWidgetBinder$Callback;

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetBinder;->mHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetBinder;->mManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2, v1}, Lcom/android/launcher2/AppWidgetBinder;->onBindSuccessful(Lcom/android/launcher2/AppWidgetBinder$Callback;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "appWidgetProvider"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetBinder;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetBinder;->mLauncher:Lcom/android/launcher2/Launcher;

    const/16 v3, 0x64

    new-instance v4, Lcom/android/launcher2/AppWidgetBinder$1;

    invoke-direct {v4, p0, p2, v1}, Lcom/android/launcher2/AppWidgetBinder$1;-><init>(Lcom/android/launcher2/AppWidgetBinder;Lcom/android/launcher2/AppWidgetBinder$Callback;I)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    goto :goto_0

    :cond_1
    const-string v2, "AppWidgetBinder"

    const-string v3, "AppWidgetBinder.allocateBindNew: launcher == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
