.class Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask$1;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask$1;->this$1:Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask$1;->this$1:Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
