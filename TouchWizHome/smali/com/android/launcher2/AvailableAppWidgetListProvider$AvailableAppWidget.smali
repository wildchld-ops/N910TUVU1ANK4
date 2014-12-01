.class public Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;
.super Ljava/lang/Object;
.source "AvailableAppWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AvailableAppWidgetListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AvailableAppWidget"
.end annotation


# instance fields
.field private mCachedPreview:Landroid/graphics/Bitmap;

.field private final mCanUninstall:Z

.field private mIsSecret:Z

.field private final mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final synthetic this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AvailableAppWidgetListProvider;Landroid/appwidget/AppWidgetProviderInfo;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-boolean p3, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCanUninstall:Z

    iput-boolean p4, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mIsSecret:Z

    return-void
.end method


# virtual methods
.method public canUninstall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCanUninstall:Z

    return v0
.end method

.method public declared-synchronized cleanupCache()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/AvailableWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "AvailableAppWidgetListProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting to NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    # getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mPreviewCache:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createHomePendingItem()Lcom/android/launcher2/HomePendingItem;
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/android/launcher2/HomePendingWidget;

    iget-object v4, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v1, v4, v5, v5}, Lcom/android/launcher2/HomePendingWidget;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v4, 0x2

    new-array v0, v4, [I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->getCellSpan([I)V

    aget v4, v0, v3

    iput v4, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v4, v0, v2

    iput v4, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-virtual {p0}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->canUninstall()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    iget-boolean v2, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mIsSecret:Z

    iput-boolean v2, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    return-object v1

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    sget-boolean v1, Lcom/android/launcher2/AvailableWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   label=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" previewImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " configure="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initialLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getCellSpan([I)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPreview(II)Landroid/graphics/Bitmap;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    # getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mPreviewCache:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v8

    :cond_1
    const/4 v0, 0x2

    :try_start_1
    new-array v6, v0, [I

    fill-array-data v6, :array_0

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->getCellSpan([I)V

    const/4 v8, 0x0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    # getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$100(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, v7, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v3, v7, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/Utilities;->loadWidgetThemePreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_1
    iget v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    # getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mPreviewCache:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object v8, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    # getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$100(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, v7, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v3, v7, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/Utilities;->loadWidgetPreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public getWidgetPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSecret()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mIsSecret:Z

    return v0
.end method

.method public setSecret(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mIsSecret:Z

    return-void
.end method
