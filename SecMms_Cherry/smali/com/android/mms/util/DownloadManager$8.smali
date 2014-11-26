.class Lcom/android/mms/util/DownloadManager$8;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;

.field final synthetic val$errStr:I


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$8;->this$0:Lcom/android/mms/util/DownloadManager;

    iput p2, p0, Lcom/android/mms/util/DownloadManager$8;->val$errStr:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager$8;->this$0:Lcom/android/mms/util/DownloadManager;

    # getter for: Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/util/DownloadManager;->access$400(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/util/DownloadManager$8;->val$errStr:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/DownloadManager"

    const-string v2, "Caught an exception in showErrorCodeToast"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
