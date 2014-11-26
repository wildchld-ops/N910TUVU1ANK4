.class Lcom/android/settings/homesync/BackupFragment$1;
.super Ljava/lang/Object;
.source "BackupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/BackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/BackupFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/BackupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    # setter for: Lcom/android/settings/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v0, v1}, Lcom/android/settings/homesync/BackupFragment;->access$102(Lcom/android/settings/homesync/BackupFragment;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v0}, Lcom/android/settings/homesync/BackupFragment;->access$100(Lcom/android/settings/homesync/BackupFragment;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    const v1, 0x7f091835

    invoke-virtual {v0, v1}, Lcom/android/settings/homesync/BackupFragment;->createAlertDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # invokes: Lcom/android/settings/homesync/BackupFragment;->getTotalSelectedSize()J
    invoke-static {v0}, Lcom/android/settings/homesync/BackupFragment;->access$200(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v3}, Lcom/android/settings/homesync/BackupFragment;->access$100(Lcom/android/settings/homesync/BackupFragment;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const v0, 0x7f09181b

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/homesync/BackupFragment;->createAlertDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/homesync/FileOperationProgress;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v0, 0x7f091815

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "request_type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "account_name"

    iget-object v3, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/homesync/BackupFragment;->access$300(Lcom/android/settings/homesync/BackupFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "is_shared_checked"

    iget-object v3, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/homesync/BackupFragment;->access$400(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "is_personal_checked"

    iget-object v3, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckPersonal:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/homesync/BackupFragment;->access$500(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "is_private_checked"

    iget-object v3, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/homesync/BackupFragment;->access$600(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$1;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method
