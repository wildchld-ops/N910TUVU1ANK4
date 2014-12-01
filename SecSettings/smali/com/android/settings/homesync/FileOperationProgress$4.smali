.class Lcom/android/settings/homesync/FileOperationProgress$4;
.super Lcom/android/settings/homesync/FileOperationPaste;
.source "FileOperationProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homesync/FileOperationProgress;->startRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/FileOperationProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/FileOperationProgress;Landroid/app/Activity;Lcom/android/settings/homesync/FileOperationProgress;Ljava/util/ArrayList;Lcom/android/settings/homesync/FileOperationPaste$PasteType;Lcom/android/settings/homesync/FileOperationPaste$RequestType;)V
    .locals 6

    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationProgress$4;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/homesync/FileOperationPaste;-><init>(Landroid/app/Activity;Lcom/android/settings/homesync/FileOperationProgress;Ljava/util/ArrayList;Lcom/android/settings/homesync/FileOperationPaste$PasteType;Lcom/android/settings/homesync/FileOperationPaste$RequestType;)V

    return-void
.end method


# virtual methods
.method protected done(Ljava/lang/Exception;)V
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7f09183b

    const v2, 0x7f091842

    const-string v3, "FileOperationProgress"

    const-string v4, "FileOperationPaste.done()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    sget-object v4, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->StorageDisconnected:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    if-ne v3, v4, :cond_4

    const v0, 0x7f091839

    :goto_0
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lcom/android/settings/homesync/FileOperationProgress;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->filenameView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationProgress$4;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationProgress$4;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationProgress$4;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_1
    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v0, 0x7f091816

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "account_name"

    # getter for: Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationProgress$4;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    const v3, 0x7f020325

    # getter for: Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/homesync/FileOperationPaste;->getTotalSize()J

    move-result-wide v4

    # invokes: Lcom/android/settings/homesync/FileOperationProgress;->makeNotification(Landroid/content/Context;IIJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/settings/homesync/FileOperationProgress;->access$200(Lcom/android/settings/homesync/FileOperationProgress;Landroid/content/Context;IIJ)V

    :cond_3
    return-void

    :cond_4
    # getter for: Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    sget-object v4, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->StorageFull:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/settings/homesync/FileOperationProgress$4;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    const v4, 0x7f091841

    invoke-virtual {v3, v4}, Lcom/android/settings/homesync/FileOperationProgress;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_5
    # getter for: Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    sget-object v4, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->Canceled:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    if-ne v3, v4, :cond_6

    const v2, 0x7f09183d

    move v6, v0

    move v0, v2

    move v2, v6

    goto/16 :goto_0

    :cond_6
    # getter for: Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    sget-object v3, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->ExceptionOccurred:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    if-ne v0, v3, :cond_7

    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v2, v1

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
