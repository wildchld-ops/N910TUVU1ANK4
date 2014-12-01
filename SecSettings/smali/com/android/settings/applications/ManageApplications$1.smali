.class Lcom/android/settings/applications/ManageApplications$1;
.super Landroid/os/AsyncTask;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplications;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;

.field final synthetic val$aom:Landroid/app/AppOpsManager;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mIPm:Landroid/content/pm/IPackageManager;

.field final synthetic val$nm:Landroid/app/INotificationManager;

.field final synthetic val$npm:Landroid/net/NetworkPolicyManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/applications/ManageApplications$1;->val$nm:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/android/settings/applications/ManageApplications$1;->val$mIPm:Landroid/content/pm/IPackageManager;

    iput-object p5, p0, Lcom/android/settings/applications/ManageApplications$1;->val$aom:Landroid/app/AppOpsManager;

    iput-object p6, p0, Lcom/android/settings/applications/ManageApplications$1;->val$npm:Landroid/net/NetworkPolicyManager;

    iput-object p7, p0, Lcom/android/settings/applications/ManageApplications$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x200

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.sec.android.app.longlifemodelauncher"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$nm:Landroid/app/INotificationManager;

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    iget-boolean v9, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$mIPm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/content/pm/IPackageManager;->resetPreferredActivities(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$aom:Landroid/app/AppOpsManager;

    invoke-virtual {v9}, Landroid/app/AppOpsManager;->resetAllModes()V

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    move-object v2, v7

    array-length v6, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_4

    aget v8, v2, v5

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, v3, :cond_3

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$handler:Landroid/os/Handler;

    new-instance v10, Lcom/android/settings/applications/ManageApplications$1$1;

    invoke-direct {v10, p0}, Lcom/android/settings/applications/ManageApplications$1$1;-><init>(Lcom/android/settings/applications/ManageApplications$1;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v9, 0x0

    return-object v9

    :catch_0
    move-exception v9

    goto :goto_3

    :catch_1
    move-exception v9

    goto :goto_2
.end method
