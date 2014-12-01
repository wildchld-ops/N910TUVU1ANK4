.class Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "UninstallMultipleScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/UninstallMultipleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/UninstallMultipleScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    iget-object v1, v1, Lcom/android/settings/applications/UninstallMultipleScreen;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    iget-object v1, v1, Lcom/android/settings/applications/UninstallMultipleScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
