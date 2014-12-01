.class Lcom/android/settings/users/AppRestrictionsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$300(Lcom/android/settings/users/AppRestrictionsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/users/AppRestrictionsFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User backgrounding, update app list"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # invokes: Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppsStates()V
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$400(Lcom/android/settings/users/AppRestrictionsFragment;)V

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/users/AppRestrictionsFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User backgrounding, done updating app list"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
