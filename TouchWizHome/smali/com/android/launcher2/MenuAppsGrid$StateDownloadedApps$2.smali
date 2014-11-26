.class Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

.field final synthetic val$item:Lcom/android/launcher2/AppItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;Lcom/android/launcher2/AppItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;->val$item:Lcom/android/launcher2/AppItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
