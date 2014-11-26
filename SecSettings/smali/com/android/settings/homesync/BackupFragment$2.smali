.class Lcom/android/settings/homesync/BackupFragment$2;
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

    iput-object p1, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # setter for: Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J
    invoke-static {v1, v5, v6}, Lcom/android/settings/homesync/BackupFragment;->access$702(Lcom/android/settings/homesync/BackupFragment;J)J

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/homesync/BackupFragment;->access$400(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v2}, Lcom/android/settings/homesync/BackupFragment;->access$800(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v2

    # += operator for: Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J
    invoke-static {v1, v2, v3}, Lcom/android/settings/homesync/BackupFragment;->access$714(Lcom/android/settings/homesync/BackupFragment;J)J

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckPersonal:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/homesync/BackupFragment;->access$500(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mPersonalDataSize:J
    invoke-static {v2}, Lcom/android/settings/homesync/BackupFragment;->access$900(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v2

    # += operator for: Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J
    invoke-static {v1, v2, v3}, Lcom/android/settings/homesync/BackupFragment;->access$714(Lcom/android/settings/homesync/BackupFragment;J)J

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/homesync/BackupFragment;->access$600(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mPrivateDataSize:J
    invoke-static {v2}, Lcom/android/settings/homesync/BackupFragment;->access$1000(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v2

    # += operator for: Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J
    invoke-static {v1, v2, v3}, Lcom/android/settings/homesync/BackupFragment;->access$714(Lcom/android/settings/homesync/BackupFragment;J)J

    const/4 v0, 0x1

    :cond_2
    # getter for: Lcom/android/settings/homesync/BackupFragment;->selectedDatesizeTextView:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/homesync/BackupFragment;->access$1100()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J
    invoke-static {v3}, Lcom/android/settings/homesync/BackupFragment;->access$700(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    # getter for: Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J
    invoke-static {v1}, Lcom/android/settings/homesync/BackupFragment;->access$700(Lcom/android/settings/homesync/BackupFragment;)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v1, v1, Lcom/android/settings/homesync/BackupFragment;->startBackupButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$2;->this$0:Lcom/android/settings/homesync/BackupFragment;

    iget-object v1, v1, Lcom/android/settings/homesync/BackupFragment;->startBackupButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
