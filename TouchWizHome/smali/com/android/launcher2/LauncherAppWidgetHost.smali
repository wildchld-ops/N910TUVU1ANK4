.class public Lcom/android/launcher2/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1

    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public stopListening()V
    .locals 0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    return-void
.end method
