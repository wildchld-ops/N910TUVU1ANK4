.class Lcom/android/mms/util/DownloadManager$7;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$7;->this$0:Lcom/android/mms/util/DownloadManager;

    iput-object p2, p0, Lcom/android/mms/util/DownloadManager$7;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager$7;->this$0:Lcom/android/mms/util/DownloadManager;

    # getter for: Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/util/DownloadManager;->access$400(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/DownloadManager$7;->this$0:Lcom/android/mms/util/DownloadManager;

    iget-object v3, p0, Lcom/android/mms/util/DownloadManager$7;->val$uri:Landroid/net/Uri;

    # invokes: Lcom/android/mms/util/DownloadManager;->getMessage(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/mms/util/DownloadManager;->access$500(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/DownloadManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
