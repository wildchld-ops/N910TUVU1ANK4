.class public Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$InsertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeSyncAccountManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    # getter for: Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->access$000()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->access$000()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;

    invoke-static {p1}, Lcom/android/settings/accountmanagement/AccountManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/accountmanagement/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/accountmanagement/AccountManager;->getGuestSamsungAccountId()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/accountmanagement/AccountManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/accountmanagement/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/accountmanagement/AccountManager;->getEasySetupAccountId()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
