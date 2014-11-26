.class public Lcom/android/mms/export/MmsPartExportDialogActivity;
.super Landroid/app/Activity;
.source "MmsPartExportDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/export/MmsPartExportDialogActivity$InvalidFilenameCharacterFilter;,
        Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;
    }
.end annotation


# static fields
.field private static final EXTRA_QUEUE:Ljava/lang/String; = "queued_intents"


# instance fields
.field private mQueuedIntents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/export/MmsPartExportDialogActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/export/MmsPartExportDialogActivity;

    invoke-direct {p0}, Lcom/android/mms/export/MmsPartExportDialogActivity;->nextIntent()V

    return-void
.end method

.method private nextIntent()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->newInstance(Landroid/os/Bundle;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queueIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/export/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v5, p0, Lcom/android/mms/export/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/export/MmsPartExportDialogActivity;->queueIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/mms/export/MmsPartExportDialogActivity;->nextIntent()V

    :cond_0
    return-void

    :cond_1
    const-string v5, "queued_intents"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v2

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    check-cast v4, Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/android/mms/export/MmsPartExportDialogActivity;->queueIntent(Landroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/mms/export/MmsPartExportDialogActivity;->queueIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/mms/export/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    iget-object v2, p0, Lcom/android/mms/export/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-interface {v1, v2}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    const-string v1, "queued_intents"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
