.class Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;
.super Ljava/lang/Object;
.source "AvailableShortcutWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AvailableShortcutWidgetListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableShortcutWidget"
.end annotation


# instance fields
.field private final mCanUninstall:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mIsSecret:Z

.field private final mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

.field final synthetic this$0:Lcom/android/launcher2/AvailableShortcutWidgetListProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AvailableShortcutWidgetListProvider;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .param p2    # Landroid/content/pm/PackageManager;
    .param p3    # Landroid/content/pm/ResolveInfo;

    iput-object p1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->this$0:Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v1}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/launcher2/AvailableWidgetListProvider$Util;->canUninstall(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mCanUninstall:Z

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/launcher2/AvailableWidgetListProvider$Util;->isSecret(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mIsSecret:Z

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIsWidget:Z

    # getter for: Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->mPkgResCache:Lcom/android/launcher2/PkgResCache;
    invoke-static {p1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableShortcutWidgetListProvider;)Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-virtual {v1, v2, p3}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    # getter for: Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->mPkgResCache:Lcom/android/launcher2/PkgResCache;
    invoke-static {p1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableShortcutWidgetListProvider;)Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method


# virtual methods
.method public canUninstall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mCanUninstall:Z

    return v0
.end method

.method public cleanupCache()V
    .locals 0

    return-void
.end method

.method public createHomePendingItem()Lcom/android/launcher2/HomePendingItem;
    .locals 2

    new-instance v0, Lcom/android/launcher2/HomePendingItem;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomePendingItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    iput v1, v0, Lcom/android/launcher2/BaseItem;->mIconResId:I

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    iput v1, v0, Lcom/android/launcher2/BaseItem;->mTitleResId:I

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mCanUninstall:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    iget-boolean v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mIsSecret:Z

    iput-boolean v1, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    sget-boolean v0, Lcom/android/launcher2/AvailableWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   cn=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getCellSpan([I)V
    .locals 2
    .param p1    # [I

    const/4 v1, 0x1

    const/4 v0, 0x0

    aput v1, p1, v0

    aput v1, p1, v1

    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWidgetPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSecret()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mIsSecret:Z

    return v0
.end method

.method public setSecret(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mIsSecret:Z

    return-void
.end method
