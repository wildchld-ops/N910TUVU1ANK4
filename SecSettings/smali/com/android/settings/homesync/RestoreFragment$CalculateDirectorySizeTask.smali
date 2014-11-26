.class Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;
.super Landroid/os/AsyncTask;
.source "RestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/RestoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalculateDirectorySizeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/RestoreFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/homesync/RestoreFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/homesync/RestoreFragment;Lcom/android/settings/homesync/RestoreFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/homesync/RestoreFragment;
    .param p2    # Lcom/android/settings/homesync/RestoreFragment$1;

    invoke-direct {p0, p1}, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;-><init>(Lcom/android/settings/homesync/RestoreFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1    # [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    const-wide/16 v3, 0x0

    # setter for: Lcom/android/settings/homesync/RestoreFragment;->mSourceTotalSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/RestoreFragment;->access$802(Lcom/android/settings/homesync/RestoreFragment;J)J

    new-instance v0, Lcom/android/settings/homesync/StorageMeasurement;

    invoke-direct {v0}, Lcom/android/settings/homesync/StorageMeasurement;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v0, v3}, Lcom/android/settings/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    # setter for: Lcom/android/settings/homesync/RestoreFragment;->mSourceTotalSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/homesync/RestoreFragment;->access$802(Lcom/android/settings/homesync/RestoreFragment;J)J

    const-string v2, "RestoreFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSourceTotalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    # getter for: Lcom/android/settings/homesync/RestoreFragment;->mSourceTotalSize:J
    invoke-static {v4}, Lcom/android/settings/homesync/RestoreFragment;->access$800(Lcom/android/settings/homesync/RestoreFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/homesync/RestoreFragment$ListItem;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    # getter for: Lcom/android/settings/homesync/RestoreFragment;->mSourceTotalSize:J
    invoke-static {v4}, Lcom/android/settings/homesync/RestoreFragment;->access$800(Lcom/android/settings/homesync/RestoreFragment;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings/homesync/RestoreFragment$ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    # getter for: Lcom/android/settings/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/homesync/RestoreFragment;->access$900(Lcom/android/settings/homesync/RestoreFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    # getter for: Lcom/android/settings/homesync/RestoreFragment;->mSourceTotalSize:J
    invoke-static {v2}, Lcom/android/settings/homesync/RestoreFragment;->access$800(Lcom/android/settings/homesync/RestoreFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 5
    .param p1    # Ljava/lang/Long;

    new-instance v0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    iget-object v1, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    iget-object v2, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040203

    iget-object v4, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    # getter for: Lcom/android/settings/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/homesync/RestoreFragment;->access$900(Lcom/android/settings/homesync/RestoreFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;-><init>(Lcom/android/settings/homesync/RestoreFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    # getter for: Lcom/android/settings/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/homesync/RestoreFragment;->access$1000(Lcom/android/settings/homesync/RestoreFragment;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    # getter for: Lcom/android/settings/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/homesync/RestoreFragment;->access$1000(Lcom/android/settings/homesync/RestoreFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
