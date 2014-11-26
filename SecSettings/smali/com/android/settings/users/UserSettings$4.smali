.class Lcom/android/settings/users/UserSettings$4;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->loadProfile()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9
    .param p1    # [Ljava/lang/Void;

    const v8, 0x7f090ceb

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    # getter for: Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/android/settings/users/UserSettings;->access$800(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    # invokes: Lcom/android/settings/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    invoke-static {v5, v4}, Lcom/android/settings/users/UserSettings;->access$900(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;)V

    :cond_1
    :goto_0
    const-string v5, "phone"

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    const-string v6, "phone"

    # invokes: Lcom/android/settings/users/UserSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v5, v6}, Lcom/android/settings/users/UserSettings;->access$1000(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    # invokes: Lcom/android/settings/users/UserSettings;->getProfileName(Landroid/content/pm/UserInfo;)Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/android/settings/users/UserSettings;->access$1100(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    # getter for: Lcom/android/settings/users/UserSettings;->mIsOwner:Z
    invoke-static {v5}, Lcom/android/settings/users/UserSettings;->access$1200(Lcom/android/settings/users/UserSettings;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    # invokes: Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings/users/UserSettings;->access$1300(Lcom/android/settings/users/UserSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "initial_name"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {v5, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    # getter for: Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/android/settings/users/UserSettings;->access$800(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    # invokes: Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings/users/UserSettings;->access$1400(Lcom/android/settings/users/UserSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "initial_name"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_2
    return-object v3

    :cond_4
    if-eqz v0, :cond_1

    const-string v5, "santos10"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    # invokes: Lcom/android/settings/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    invoke-static {v5, v4}, Lcom/android/settings/users/UserSettings;->access$900(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;)V

    goto :goto_0

    :cond_5
    const-string v2, ""

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    # getter for: Lcom/android/settings/users/UserSettings;->mIsOwner:Z
    invoke-static {v5}, Lcom/android/settings/users/UserSettings;->access$1200(Lcom/android/settings/users/UserSettings;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v3, :cond_7

    if-nez v2, :cond_7

    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {v5, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    # getter for: Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/android/settings/users/UserSettings;->access$800(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v3, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings$4;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    # invokes: Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/settings/users/UserSettings;->access$700(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V

    return-void
.end method
