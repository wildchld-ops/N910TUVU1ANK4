.class public interface abstract Lcom/android/launcher2/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindAllAppsSecretMode()V
.end method

.method public abstract bindAppsLoaded()V
.end method

.method public abstract bindBadgeUpdated(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindFestivalModeChange(Z)V
.end method

.method public abstract bindHomeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
.end method

.method public abstract bindHomeBegin()V
.end method

.method public abstract bindHomeDeleteFestivalPage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindHomeDeleteSecretPage()V
.end method

.method public abstract bindHomeEnd()V
.end method

.method public abstract bindHomeFolders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindHomeInsertFestivalPage()V
.end method

.method public abstract bindHomeInsertSecretPage()V
.end method

.method public abstract bindHomeItemsRemoved(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindHomeItemsUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindHomeSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V
.end method

.method public abstract bindHomeShortcuts(Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract bindHomeSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V
.end method

.method public abstract bindHotseatItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindModeChange()V
.end method

.method public abstract bindPackagesChanged(Z)V
.end method

.method public abstract bindSearchablesChanged()V
.end method

.method public abstract bindSecretModeChange(Z)V
.end method

.method public abstract setLoadOnResume()Z
.end method
