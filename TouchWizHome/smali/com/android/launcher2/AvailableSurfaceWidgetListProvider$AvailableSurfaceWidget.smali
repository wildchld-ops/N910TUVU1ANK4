.class Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;
.super Ljava/lang/Object;
.source "AvailableSurfaceWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableSurfaceWidget"
.end annotation


# instance fields
.field private final mCanUninstall:Z

.field private final mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

.field private mIsSecret:Z

.field final synthetic this$0:Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->this$0:Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iput-boolean p3, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mCanUninstall:Z

    iput-boolean p4, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mIsSecret:Z

    return-void
.end method


# virtual methods
.method public canUninstall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mCanUninstall:Z

    return v0
.end method

.method public cleanupCache()V
    .locals 0

    return-void
.end method

.method public createHomePendingItem()Lcom/android/launcher2/HomePendingItem;
    .locals 2

    new-instance v0, Lcom/android/launcher2/HomePendingSurfaceWidget;

    iget-object v1, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomePendingSurfaceWidget;-><init>(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->canUninstall()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mSystemApp:Z

    iget-boolean v1, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mIsSecret:Z

    iput-boolean v1, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mSecretItem:Z

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SurfaceWidget TODO"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCellSpan([I)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v1, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v0, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->getCellSpan([I)V

    iget-object v0, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->this$0:Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    # getter for: Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v1, v1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget v2, v2, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->previewImage:I

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/Utilities;->loadWidgetPreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public getWidgetPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v0}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSecret()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mIsSecret:Z

    return v0
.end method

.method public setSecret(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;->mIsSecret:Z

    return-void
.end method
