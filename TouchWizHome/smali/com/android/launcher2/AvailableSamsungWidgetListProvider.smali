.class public Lcom/android/launcher2/AvailableSamsungWidgetListProvider;
.super Ljava/lang/Object;
.source "AvailableSamsungWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidgetListProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AvailableSamsungWidgetListProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iput-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AvailableSamsungWidgetListProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getSecretPackageList(I)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v4}, Lcom/android/launcher2/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;-><init>(Lcom/android/launcher2/AvailableSamsungWidgetListProvider;Lcom/android/launcher2/SamsungWidgetProviderInfo;Z)V

    :goto_1
    return-object v4

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getAvailableWidgets()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSecretPackageList(I)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v5}, Lcom/android/launcher2/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v5, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;-><init>(Lcom/android/launcher2/AvailableSamsungWidgetListProvider;Lcom/android/launcher2/SamsungWidgetProviderInfo;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "AvailableSamsungWidgetListProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Samsung Widget{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mWidgetTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}  ComponentInfo{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "} added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v5, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "AvailableSamsungWidgetListProvider"

    const-string v6, "No Samsung App Widgets were loaded"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v3
.end method
