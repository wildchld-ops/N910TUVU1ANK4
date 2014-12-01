.class Lcom/android/settings/users/AppRestrictionsFragment$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$PackageDeleteObserver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$PackageDeleteObserver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUninstallingPackages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$600(Lcom/android/settings/users/AppRestrictionsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/users/AppRestrictionsFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageDeleted - packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returnCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / remained: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$PackageDeleteObserver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUninstallingPackages:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/users/AppRestrictionsFragment;->access$600(Lcom/android/settings/users/AppRestrictionsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mIsDeleteCallDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$PackageDeleteObserver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mIsDeleteCallDone:Z
    invoke-static {v2}, Lcom/android/settings/users/AppRestrictionsFragment;->access$700(Lcom/android/settings/users/AppRestrictionsFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$PackageDeleteObserver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUninstallingPackages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$600(Lcom/android/settings/users/AppRestrictionsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$PackageDeleteObserver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mIsDeleteCallDone:Z
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$700(Lcom/android/settings/users/AppRestrictionsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$PackageDeleteObserver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$800(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
