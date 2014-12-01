.class Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;
.super Landroid/database/ContentObserver;
.source "QuickLaunchSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/quicklaunch/QuickLaunchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookmarksObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/quicklaunch/QuickLaunchSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/quicklaunch/QuickLaunchSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;->this$0:Lcom/android/settings/quicklaunch/QuickLaunchSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;->this$0:Lcom/android/settings/quicklaunch/QuickLaunchSettings;

    # invokes: Lcom/android/settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V
    invoke-static {v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->access$000(Lcom/android/settings/quicklaunch/QuickLaunchSettings;)V

    return-void
.end method
