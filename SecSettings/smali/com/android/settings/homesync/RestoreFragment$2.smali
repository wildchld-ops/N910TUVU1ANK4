.class Lcom/android/settings/homesync/RestoreFragment$2;
.super Ljava/lang/Object;
.source "RestoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/RestoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/RestoreFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/RestoreFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment$2;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$2;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    iget-object v1, p0, Lcom/android/settings/homesync/RestoreFragment$2;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    # setter for: Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v0, v1}, Lcom/android/settings/homesync/RestoreFragment;->access$102(Lcom/android/settings/homesync/RestoreFragment;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$2;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    # getter for: Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v0}, Lcom/android/settings/homesync/RestoreFragment;->access$100(Lcom/android/settings/homesync/RestoreFragment;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$2;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    const v1, 0x7f091836

    invoke-virtual {v0, v1}, Lcom/android/settings/homesync/RestoreFragment;->createAlertDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$2;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/homesync/FileOperationProgress;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v0, 0x7f091816

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "request_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "account_name"

    iget-object v3, p0, Lcom/android/settings/homesync/RestoreFragment$2;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    # getter for: Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/homesync/RestoreFragment;->access$200(Lcom/android/settings/homesync/RestoreFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "date_folder_name"

    iget-object v3, p0, Lcom/android/settings/homesync/RestoreFragment$2;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    # getter for: Lcom/android/settings/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/homesync/RestoreFragment;->access$300(Lcom/android/settings/homesync/RestoreFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "paste_type"

    iget-object v3, p0, Lcom/android/settings/homesync/RestoreFragment$2;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    # getter for: Lcom/android/settings/homesync/RestoreFragment;->mPasteType:I
    invoke-static {v3}, Lcom/android/settings/homesync/RestoreFragment;->access$000(Lcom/android/settings/homesync/RestoreFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$2;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto :goto_0
.end method
